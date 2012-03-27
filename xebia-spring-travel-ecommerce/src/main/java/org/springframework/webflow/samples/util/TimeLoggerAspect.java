package org.springframework.webflow.samples.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.concurrent.atomic.AtomicBoolean;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.JoinPoint.StaticPart;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.webflow.samples.booking.BugService;
import org.springframework.webflow.samples.booking.SearchCriteria;

import javax.annotation.PostConstruct;

/**
 * Collect statistics of method executions.
 */
@Aspect
public class TimeLoggerAspect {

    /**
     * Logger
     */
    private final Logger LOGGER = LoggerFactory.getLogger("fr.xebia.timer.TimeLoggerAspect");

    /**
     * Statistics
     */
    private static final Hashtable<String, Statistic> allStats = new Hashtable();

    /**
     * Bug activation status
     */
    private AtomicBoolean isBugEnabled;

    /**
     * {@link BugService}
     */
    @Autowired
    private BugService bugService;

    /**
     * Initialize bug status
     */
    @PostConstruct
    public void init() {
        isBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.METHOD_LOGGER));
    }

    /**
     * Intercepts every method call of the package fr.xebia
     */
    @Pointcut("execution(* fr.xebia..* (..))")
    private void firstPointcut() {}

    /**
     * Intercepts every method call of the package org.springframework.webflow.samples
     */
    @Pointcut("execution(* org.springframework.webflow.samples..*BookingService.* (..))")
    private void secondPointcut() {}

    /**
     * This method is called before every method execution
     *
     * @param joinPoint
     */
    @Before("firstPointcut() && secondPointcut()")
    public void logMethodEntry(JoinPoint joinPoint) {
        // If the bug is disabled, do not log anything
        if(!this.isBugEnabled()) {
            return;
        }

        Date date = new Date();

        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        String key = new String(md.digest(joinPoint.getSignature().toShortString().getBytes()));
        Statistic stat = new Statistic();
        if (allStats.containsKey(key)){
            stat = allStats.get(key);
        }
        stat.lastDate = date;
        allStats.put(key, stat);

        String className = joinPoint.getSignature().getDeclaringType().getCanonicalName();
        String method = joinPoint.getSignature().toShortString();
        StringBuffer sb = new StringBuffer("IN: Class: ").append(className).append(" Method: ").append(method).append(" called with args: [");
        for ( Object o : joinPoint.getArgs()){
            sb.append(o.toString()).append(", ");
        }
        sb.append("] at [");
        sb.append(formatDate(date));
        sb.append("]");

        LOGGER.debug(sb.toString());

    }

    private String formatDate(Date date) {
        DateFormat df = DateFormat.getInstance();
        return df.format(date);
    }

    /**
     * This method is called after every method execution
     *
     * @param staticPart
     * @param result
     */
    @AfterReturning(pointcut = "firstPointcut() && secondPointcut()", returning = "result")
    public void logMethodExit(StaticPart staticPart, Object result) {
        if(!this.isBugEnabled()) {
            return;
        }

        Date endDate = new Date();

        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        String key = new String(md.digest(staticPart.getSignature().toShortString().getBytes()));
        Statistic stat = new Statistic();

        if (allStats.containsKey(key)){
            stat = allStats.get(key);
        }
        long elapsedTime =getElapsedTime(stat.lastDate, endDate);
        if (stat.min > elapsedTime){
            stat.min = elapsedTime;
        }
        if (stat.max < elapsedTime){
            stat.max = elapsedTime;
        }
        stat.callCount++;
        stat.sum += elapsedTime;
        allStats.put(key, stat);

        String className = staticPart.getSignature().getDeclaringType().getCanonicalName();
        String method = staticPart.getSignature().toShortString();
        StringBuffer sb = new StringBuffer("OUT: Class: ").append(className).append(" Method: ").append(method).append(" result: [");
        sb.append(result.toString()).append("] finished at [");
        sb.append(formatDate(endDate));
        sb.append("]");
        sb.append("]\n elapsed time: ").append(elapsedTime).append("ms");
        sb.append(" min time: ").append(stat.min).append("ms");
        sb.append(" max time: ").append(stat.max).append("ms");
        sb.append(" avg time: ").append(stat.sum/stat.callCount).append("ms");
        sb.append(" Called ").append(stat.callCount).append(" times");

        LOGGER.debug(sb.toString());
    }

    /**
     * Modify bug status.
     *
     * @param enabled
     */
    public void setEnabled(boolean enabled) {
        bugService.setStatusByCode(BugEnum.METHOD_LOGGER, enabled);
        this.isBugEnabled.set(enabled);
    }

    /**
     * @return bug status
     */
    public boolean isBugEnabled() {
        return isBugEnabled.get();
    }

    private long getElapsedTime(Date start, Date end) {
        if(start == null || end == null)
            return -1;

        return (end.getTime() - start.getTime());
    }

    class Statistic {
        long min= Long.MAX_VALUE;
        long max;
        long sum;
        long callCount;
        Date lastDate;
    }
}
