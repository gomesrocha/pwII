/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import model.UsuarioBR;
import model.dao.UsuarioDao;
import model.dao.entidades.Tipo;
import model.dao.entidades.Usuario;

/**
 *
 * @author fabio
 */
@Named(value = "userBeans")
@SessionScoped
public class UserBeans implements Serializable {

    private String login;
    private String senha;
    private String nome;
    private Tipo tipo;
    private List<Usuario> lista;

    public UserBeans() {
        UsuarioDao daouser = new UsuarioDao();
        this.lista = daouser.listaCompleta();
    }

    public String logar() {
        return "dashboard";
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public List<Usuario> getLista() {
        UsuarioDao daouser = new UsuarioDao();
        this.lista = daouser.listaCompleta();
        return this.lista;
    }

    public void setLista(List<Usuario> lista) {
        this.lista = lista;
    }

    public String salvar() {
        UsuarioBR userbr = new UsuarioBR();
        return userbr.salvar(this.login, this.senha, this.nome, this.tipo);
    }
    

}
