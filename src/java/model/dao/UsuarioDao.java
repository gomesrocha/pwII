/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import model.dao.entidades.Usuario;

/**
 *
 * @author fabio
 */
public class UsuarioDao extends GenericDao<Usuario>{
        public List<Usuario> listaCompleta() {
        List<Usuario> usuarios = null;
        EntityManager em = jUtil.getEM();
        Query queryUsr = em.createQuery("select u from Usuario u", Usuario.class);
        usuarios = queryUsr.getResultList();
        return usuarios;
    }
    
}
