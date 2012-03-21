package org.springframework.webflow.samples.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.webflow.samples.booking.BugService;

import javax.annotation.PostConstruct;

@Aspect
@SuppressWarnings("rawtypes")
public class JpaLogger {
	private final Logger LOGGER = LoggerFactory
			.getLogger("org.springframework.webflow.samples.util.JpaLogger");

	private AtomicBoolean isBugEnabled;

    /**
     * {@link org.springframework.webflow.samples.booking.BugService}
     */
    @Autowired
    private BugService bugService;

    /**
     * Initialize bugs status.
     */
    @PostConstruct
    public void init() {
        isBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.JPA_LOGGER.getCode()));
    }

	public void disable() {
			this.isBugEnabled.set(false);
	}

	@AfterReturning(pointcut = "execution(* org.springframework.webflow.samples.booking.JpaBookingService.find*(..))", returning = "obj")
	public void logReturnedObject(Object obj) {
		if (isBugEnabled.get()) {
			if (obj instanceof List) {
				List list = (List) obj;
				for (Object resultObject : list) {
					invokeGetters(resultObject);
				}
			} else {
				invokeGetters(obj);
			}
		}
	}

	private void invokeGetters(Object o) {
		Method[] m = null;
		Class c = null;

		c = o.getClass();
		m = c.getMethods();
		logMethods(m, o);
	}

	private void logMethods(Method[] m, Object o) {
		Class[] params = null;
		for (int i = 0; i < m.length; ++i) {
            String res ="";
			res +=(Modifier.toString(m[i].getModifiers()));
			res +=(" ");
			res +=(m[i].getReturnType().getName());
			res +=(" ");
			res +=(m[i].getName());
			res +=("(");
			params = m[i].getParameterTypes();
			for (int j = 0; j < params.length; ++j) {
				res +=(params[j].getName());
			}
			res +=(")");
			if (m[i].getName().startsWith("get")) {
				res +=(" - value =");
				try {
					res +=(m[i].invoke(o, new Object[] {}));
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}
			}
			LOGGER.warn(res);
		}
	}

}
