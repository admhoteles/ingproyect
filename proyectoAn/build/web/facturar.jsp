
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dto.Reserva"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="co.ufps.edu.dto.Cliente"%>
<%@page import="co.ufps.edu.dto.Huesped"%>
<%@page import="co.ufps.edu.dto.habitaciones"%>
<%@page import="co.ufps.edu.dto.cuarto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
        <title>Facturar</title>
    </head>
    <body>
        
        <%
            int id=Integer.parseInt(request.getParameter("idclienteReserva"));
              int idcuarto=Integer.parseInt(request.getParameter("idcuartoselecionado"));
            ControladorNegocio con=new ControladorNegocio();
        habitaciones habi=con.buscarh(idcuarto);
                Cliente cliente=con.ListarClientePorid(id);
 SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
        Calendar fecha= new GregorianCalendar();
        Reserva r = new Reserva();
        if(habi!=null&&cliente!=null){
            
              fecha= Calendar.getInstance();
              r.setEstado(1);
              r.setFechafin(fecha);
              r.setFechainicio(fecha);
              r.setId_cliente(cliente.getId());
              r.setId_hab(habi.getId());
              
              //cambioestad habi
              
                    habi.setEstado(1);
              habitaciones actualizada=con.updateestadohabi(habi);




       
           
      
            
              
Reserva hecha=con.crearReserva(r);


//cambiar estado habitacion


       
        session.setAttribute("rhecha", hecha);
       
         
        }
      
        response.sendRedirect("buscar.jsp");
          
        %>
 
        
        
        
         
        
     
        
       
        
        
    
       

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
	
        

    </body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               