package org.springframework.webflow.samples.booking;

import org.springframework.webflow.samples.util.BugEnum;

/**
 * Created by IntelliJ IDEA.
 * User: diego
 * Date: 3/19/12
 * Time: 9:13 PM
 * To change this template use File | Settings | File Templates.
 */
public interface BugService {
    /**
     * Returns a bug using its code.
     *
     * @param bugRef
     * @return {@link Bug}
     */
    Bug findByCode(BugEnum bugRef);

    /**
     * Returns the status of the bug using its code.
     *
     * @param bugRef
     * @return {@link Boolean}
     */
    Boolean getStatusByCode(BugEnum bugRef);

    /**
     * Disable the bug passed as parameter.
     *
     * @param bugRef
     */
    void setStatusByCode(BugEnum bugRef, boolean enabled);

    /**
     * Enable all the bugs
     */
    void resetBugs();

}
