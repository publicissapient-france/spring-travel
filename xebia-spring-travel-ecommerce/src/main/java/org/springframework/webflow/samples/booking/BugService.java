package org.springframework.webflow.samples.booking;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.webflow.samples.util.BugEnum;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    void disableBug(BugEnum bugRef);


}
