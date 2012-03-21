package org.springframework.webflow.samples.booking;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    @SuppressWarnings("unchecked")
    @Override
    public Bug findByCode(int code) {
        final String hqlQuery = "select  b from Bug b where b.code = :code";
        return (Bug) em.createQuery(hqlQuery).setParameter("code", code).getSingleResult();
    }

    /**
     * {@inheritDoc}
     */
    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    @Override
    public boolean getStatusByCode(int code) {
        final String hqlQuery = "select  b from Bug b where b.code = :code";
        Bug bug = (Bug) em.find(Bug.class, code);

        if(bug == null) {
            return true;
        }

        return bug.isEnabled();
    }
}
