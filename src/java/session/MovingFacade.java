/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Moving;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Ded Mazai
 */
@Stateless
public class MovingFacade extends AbstractFacade<Moving> {
    @PersistenceContext(unitName = "goodfellas401PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MovingFacade() {
        super(Moving.class);
    }
    
}
