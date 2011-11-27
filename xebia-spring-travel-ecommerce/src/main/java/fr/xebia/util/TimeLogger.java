package fr.xebia.util;

import java.text.DateFormat;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.JoinPoint.StaticPart;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TimeLogger {
    
  private Date date;
    private final Logger LOGGER = LoggerFactory.getLogger("fr.xebia.timer.TimeLogger");

    /**
     * This method is called before every method execution
     *
     * @param joinPoint
     */
  public void logMethodEntry(JoinPoint joinPoint) {
    date = new Date();

    String name = joinPoint.getSignature().toLongString();
    StringBuffer sb = new StringBuffer(name + " called at: [");

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
  public void logMethodExit(StaticPart staticPart, Object result) {

    Date endDate = new Date();

    String name = staticPart.getSignature().toLongString();

    LOGGER.debug(name + " finished at: [" + formatDate(endDate) + "] -> elapsed time: " + (getElapsedTime(date, endDate)) + "ms");
  }

  private long getElapsedTime(Date start, Date end) {
      if(start == null || end == null)
          return -1;

      return (end.getTime() - start.getTime());
  }
}
