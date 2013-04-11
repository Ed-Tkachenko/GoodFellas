/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Customersorder;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Ded Mazai
 */
@Stateless
public class CustomersorderFacade extends AbstractFacade<Customersorder> {
    @PersistenceContext(unitName = "goodfellas401PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomersorderFacade() {
        super(Customersorder.class);
    }
    
}
