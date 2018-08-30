/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.Serializable;
import java.util.Date;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author fabio
 */
@Named(value = "projetoBeans")
@SessionScoped
public class ProjetoBeans implements Serializable{

    /**
     * Creates a new instance of ProjetoBeans
     */
    private double valor;
    @NotNull @Size(min=13, message="O cartão deve ter 13 digitos", max=13) private String cartao = "";
    private Date data = new Date();
    public ProjetoBeans() {
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getCartao() {
        return cartao;
    }

    public void setCartao(String cartao) {
        this.cartao = cartao;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
    public String cadastro(){
        return "resultado";
    }
    
}
