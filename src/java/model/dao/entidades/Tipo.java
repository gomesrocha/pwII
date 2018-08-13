/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.entidades;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

/**
 *
 * @author fabio
 */
public class Tipo implements GenericEntity{
 private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Size(max = 45)
    private String usrTio;

    public Tipo() {
    }
    
    @Override
    public Long getId() {
        return id;
    }

   

    public String getUsrTio() {
        return usrTio;
    }

    public void setUsrTio(String usrTio) {
        this.usrTio = usrTio;
    }
    
}
