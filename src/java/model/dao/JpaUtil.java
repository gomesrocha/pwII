/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author fabio
 */
public class JpaUtil {

    public EntityManager getEM() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PWIIPU");
        return emf.createEntityManager();
    }
}
