package org.springframework.webflow.samples.booking;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.webflow.samples.util.BugEnum;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: diego
 * Date: 3/19/12
 * Time: 9:13 PM
 * To change this template use File | Settings | File Templates.
 */
@Service("bugService")
@Repository
public class JpaBugService implements BugService {
    /**
     * {@link EntityManager}
     */
    private EntityManager em;

    /**
     * @param em
     */
    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    /**
     * {@inheritDoc}
     */
    @Transactional(readOnly = true)
    public Bug findByCode(BugEnum bugRef) {
        if(bugRef == null) {
            return null;
        }

        return em.find(Bug.class, bugRef.getCode());
    }

    /**
     * {@inheritDoc}
     */
    @Transactional(readOnly = true)
    public Boolean getStatusByCode(BugEnum bugRef) {
        Bug bug = this.findByCode(bugRef);

        // If the bug does not exist in the database, return true for consistency
        if(bug == null) {
            return true;
        }

        return bug.isEnabled();
    }

    /**
     * {@inheritDoc}
     */
    @Transactional
    public void disableBug(BugEnum bugRef) {
        Bug bug = em.find(Bug.class, bugRef.getCode());

        if(bug != null) {
            bug.setEnabled(false);
        }
    }
}
