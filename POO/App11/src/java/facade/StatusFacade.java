/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import modelo.Status;

/**
 *
 * @author placido
 */
@Stateless
public class StatusFacade extends AbstractFacade<Status> {

    @PersistenceContext(unitName = "App11PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StatusFacade() {
        super(Status.class);
    }
    
}
