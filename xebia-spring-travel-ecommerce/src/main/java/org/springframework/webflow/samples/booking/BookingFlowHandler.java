package org.springframework.webflow.samples.booking;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.webflow.core.FlowException;
import org.springframework.webflow.execution.FlowExecutionOutcome;
import org.springframework.webflow.execution.repository.NoSuchFlowExecutionException;
import org.springframework.webflow.mvc.servlet.AbstractFlowHandler;

public class BookingFlowHandler extends AbstractFlowHandler {

    private static final String DEFAULT_URL = "/hotels/search";

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public String handleExecutionOutcome(FlowExecutionOutcome outcome, HttpServletRequest request,
            HttpServletResponse response) {
        return DEFAULT_URL;
    }

    @Override
    public String handleException(FlowException e, HttpServletRequest request, HttpServletResponse response) {
        if (logger.isInfoEnabled()) {
            logger.info("exception processing '" + request.getRequestURL() + "'", e);
        }
        if (e instanceof NoSuchFlowExecutionException) {
            return DEFAULT_URL;
        } else {
            response.setHeader("exception.type", e.getClass().getName());
            response.setHeader("exception.message", e.getMessage());

            throw e;
        }
    }

}
