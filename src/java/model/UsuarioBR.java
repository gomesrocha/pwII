/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import model.dao.UsuarioDao;
import model.dao.entidades.Tipo;
import model.dao.entidades.Usuario;

/**
 *
 * @author fabio
 */
public class UsuarioBR {
        private Usuario usuario = null;
    UsuarioDao daouser = null;
    public String salvar(String login, String senha, String nome, Tipo tipo){
        String url;
        usuario = new Usuario();
        daouser = new UsuarioDao();
        if(login.isEmpty() || senha.isEmpty()){
            url="dashboard";
        } else {
            usuario.setNome(nome);
            usuario.setSenha(senha);
            usuario.setEmail(login);
            //usuario.setTipo(tipo);
            usuario = daouser.salvar(usuario);
            url="manUser";
        }
        return url;
    }
    public List<Usuario> listagem(){
        List<Usuario> usuarios = daouser.listaCompleta();
        return usuarios;
    }
}
