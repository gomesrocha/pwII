/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import javax.inject.Named;
import javax.enterprise.context.Dependent;

/**
 *
 * @author fabio
 */
@Named(value = "userBeans")
@Dependent
public class UserBeans {

    private String email;
    private String senha;
    private String nome;
    public UserBeans() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
    public String salvar(){
        return "dashboard";
    }
    
}
