/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import modelo.Detalhe;

/**
 *
 * @author placido
 */
@Stateless
public class DetalheFacade extends AbstractFacade<Detalhe> {

    @PersistenceContext(unitName = "App11PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DetalheFacade() {
        super(Detalhe.class);
    }
    
}
