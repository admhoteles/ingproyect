package co.ufps.edu.dao;

import co.ufps.edu.dto.habitaciones;
import co.ufps.edu.dto.principal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import ufps.edu.co.utils.conexion.Conexion;
import ufps.edu.co.utils.conexion.clsConn;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author edinson
 */
public class principaldao {
    private Conexion c=new Conexion();
    private Connection con;
    private ResultSet rs;
    private PreparedStatement ps;
    private clsConn cnn=new clsConn();

    public principaldao()   {
  
     
    }
   
    public principal consultardatos() throws SQLException{
        principal p=new principal();
    ResultSet res= getCnn().consultaTabla("SELECT * FROM hotel;");
       int id=0; 
       try {
          while(res.next()){
                p.setNombre(res.getString(1));
                p.setSlogan(res.getString(2));
               p.setDir(res.getString(3));
               p.setTel(res.getInt(4));
               p.setCel(res.getInt(5));
                
            }
           
       } catch (SQLException ex) {
           Logger.getLogger(tipohabitaciondao.class.getName()).log(Level.SEVERE, null, ex);
       }
       return p;
    }
    
    public String habitacionesMostrar(){
        String m="";
      String  sql1="select tipo, foto from habitaciones  group by tipo,foto; ";
    int preciob=0;
    String caracteristicas="";
    int valor=0;
    String tip="";
    
    ArrayList<Integer> tipo= new ArrayList<Integer>();
        try {
        ResultSet rs1=getCnn().consultaTabla(sql1);
           
            while(rs1.next()){
                if(!tipo.contains(rs1.getInt(1))){
                    tipo.add(rs1.getInt(1));
                  
                    String  sql2="select nombre,preciobase from tiposhabitaciones where id_tipo="+rs1.getInt(1)+"; ";
                      ResultSet rs2 =getCnn().consultaTabla(sql2);
                      while(rs2.next()){
                          tip=rs2.getString(1);
                          preciob=rs2.getInt(2);
                 
                      }
                      
                      String  sql3="select ph.descripcion,ph.incremento from propiedadesportipo p join propiedades ph on(p.id_descripcion=ph.id) where p.id_tipo="+rs1.getInt(1)+"; ";
                      ResultSet rs3 =getCnn().consultaTabla(sql3);
                      while(rs3.next()){
                          caracteristicas+=rs3.getString(1)+", ";
                          valor+=preciob*rs3.getInt(2)/100;
                          
                      }
                      valor+=preciob;
                    m+=" <li><a href=\"#\"><img src=\""+rs1.getString(2)+"\" alt=\"\" title=\"\" class=\"property_img\"/></a>";
					m+="<span class=\"price\">$"+valor+"</span>";
					m+="<div class=\"property_details\">";
						m+="<h1><a>Clase "+tip+"</a></h1>";
						m+="<h2>"+caracteristicas+"<span class=\"property_size\"></span></h2></div></li>";
		caracteristicas="";
                }
            }
            
    } catch (SQLException ex) {
            Logger.getLogger(principaldao.class.getName()).log(Level.SEVERE, null, ex);
        }
     
    return m;
}
   
     public clsConn getCnn() {
        return cnn;
    }
}
  