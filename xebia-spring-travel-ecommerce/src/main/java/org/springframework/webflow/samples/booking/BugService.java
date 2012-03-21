package org.springframework.webflow.samples.booking;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
     * @param code
     * @return {@link Bug}
     */
    Bug findByCode(int code);

    /**
     * Returns the status of the bug using its code.
     *
     * @param code
     * @return
     */
    boolean getStatusByCode(int code);

}
