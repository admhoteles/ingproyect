/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.ufps.edu.dto;

import java.util.ArrayList;

/**
 *
 * @author edinson
 */
public class principal {
    String nombre;
    String slogan;
    int tel;
    int cel;
    String dir;
   

    public principal() {
    }

    public String getNombre() {
        return nombre;
    }

    public String getSlogan() {
        return slogan;
    }


    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public int getCel() {
        return cel;
    }

    public void setCel(int cel) {
        this.cel = cel;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    @Override
    public String toString() {
        return  "nombre=" + nombre + ", slogan=" + slogan + ", tel=" + tel + ", cel=" + cel + ", dir=" + dir ;
    }

    

    
    
}
