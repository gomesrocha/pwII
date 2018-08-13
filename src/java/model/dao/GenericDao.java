/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import javax.persistence.EntityManager;
import model.dao.entidades.GenericEntity;

/**
 *
 * @author fabio
 */
public class GenericDao<T extends GenericEntity> {

    JpaUtil jUtil = new JpaUtil();

    public T salvar(T t) {
        EntityManager em = jUtil.getEM();
        try {
            em.getTransaction().begin();
            if (t.getId() == null) {
                em.persist(t);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
        } finally {
            em.close();
        }
        return t;
    }

    public void remover(Long id, Class<T> tclass) {
        EntityManager em = jUtil.getEM();
        T t = em.find(tclass, id);
        try {
            em.getTransaction().begin();
            em.remove(t);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
}
