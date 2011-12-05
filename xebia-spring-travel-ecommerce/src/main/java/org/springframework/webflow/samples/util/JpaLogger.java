package org.springframework.webflow.samples.util;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.List;

@Aspect
@SuppressWarnings("rawtypes")
public class JpaLogger {
    private final Logger LOGGER = LoggerFactory
            .getLogger("org.springframework.webflow.samples.util.JpaLogger");

    private boolean isEnabled = true;

    public void setEnabled(boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    @AfterReturning(pointcut = "execution(* org.springframework.webflow.samples.booking.JpaBookingService.findHotels(..))", returning = "obj")
    public void logReturnedObject(Object obj) {
        if (isEnabled) {
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
            StringBuffer buffer = new StringBuffer();
            buffer.append(Modifier.toString(m[i].getModifiers()));
            buffer.append(" ");
            buffer.append(m[i].getReturnType().getName());
            buffer.append(" ");
            buffer.append(m[i].getName());
            buffer.append("(");
            params = m[i].getParameterTypes();
            for (int j = 0; j < params.length; ++j) {
                buffer.append(params[j].getName());
            }
            buffer.append(")");
            if (m[i].getName().startsWith("get")) {
                buffer.append(" - value =");
                try {
                    buffer.append(m[i].invoke(o, new Object[]{}));
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }
            LOGGER.warn(buffer.toString());
        }
    }

}
