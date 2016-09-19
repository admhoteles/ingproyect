<%-- 
    Document   : verinfo
    Created on : 15-may-2016, 12:16:50
    Author     : macaco
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="co.ufps.edu.dto.EstadoHabitacion"%>
<%@page import="co.ufps.edu.dto.TipoHabitacion"%>
<%@page import="co.ufps.edu.dto.habitaciones"%>
<%@page import="co.ufps.edu.dto.cuarto"%>
<%@page import="facade.ControladorNegocio"%>
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

        <title>Informacion</title>
        
    </head>
    <body>
        
        <%
            int id=0;
        try{
            id=Integer.parseInt(request.getParameter("id"));
            
        }catch(NumberFormatException e){
            
        
        response.sendRedirect("cuartos.jsp"); 
        }catch(Exception e){
             response.sendRedirect("cuartos.jsp"); 
        }
        
        
        
        ControladorNegocio c= new ControladorNegocio();
        habitaciones h=null;
        try{
                 h  = c.buscarh(id);
        }catch(Exception e){
             response.sendRedirect("cuartos.jsp"); 
        }

       
       if(h!=null){
               
       
           
      session.setAttribute("habitacion",h);
       
       TipoHabitacion tipo=c.consultarTipoh(h.getTipo());
       
       EstadoHabitacion estado=c.consultarEstadoHabitacion(h.getEstado());
       
       
       
      String fechainicio=request.getParameter("fechainicio");
      String fechafinaliza=request.getParameter("fechafin");
      
      SimpleDateFormat simple = new SimpleDateFormat("yyyyMMdd");
       Calendar calendar = Calendar.getInstance();
       
        %>
        
       
        
        
     <jsp:include page="menu.jsp" />
				
<!--/.row-->		
		
		
		<div class="row">
			<div class="col-lg-12">
				<h2>Cuarto  <%=h.getId()%></h2>
			</div>
			
			
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						Descripcion
					</div>
					<div class="panel-body">
						<p>Tipo = <%=tipo.getNombre()%>  </p>
                                                <p>Estado = <%=estado.getDescriccion()%>  </p>
                                                 <p>precio Base = <%=tipo.getPreciobase()%>  </p>
                                                 
                                                 
                                                 <p>usted se piensa quedar desde = <%=calendar.getTime()%>   </p>
					</div>
				</div>
			</div>
<div class="col-md-6">
	<div class="panel panel-primary">
            <form action="buscar.jsp" method="POST">
			<div class="panel-body">
                             <input type="hidden" name="idcuartoselecionado" value="<%=h.getId()%>">
						<button type="submit" class="btn btn-success btn-lg">Reservar</button>
					</div>
                 </form>
				</div>
			</div>
		
			
		</div><!-- /.row -->
			
		
		
		
		
		
		
			
		<div class="row">
			<div class="col-lg-12">
				<h2>imagenes del cuarto</h2>
			</div>
			
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-body tabs">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1" data-toggle="tab">Tab 1</a></li>
							<li><a href="#tab2" data-toggle="tab">Tab 2</a></li>
							<li><a href="#tab3" data-toggle="tab">Tab 3</a></li>
						</ul>
		
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab1">
								<h4>Imagen 1</h4>
                                                                <IMG SRC="<%=h.getFoto()%>" WIDTH=200 HEIGHT=200>
							</div>
							<div class="tab-pane fade" id="tab2">
								<h4>Imagen 2</h4>
								<IMG SRC="<%=h.getFoto()%>" WIDTH=200 HEIGHT=200>
							</div>
							<div class="tab-pane fade" id="tab3">
								<h4>imagen 3</h4>
								<IMG SRC="<%=h.getFoto()%>" WIDTH=200 HEIGHT=200>
							</div>
						</div>
					</div>
				</div><!--/.panel-->
			</div><!--/.col-->
			
			<div class="col-md-6">
                            <h2>Servicios del cuarto</h2>
				<div class="panel panel-default">
					<div class="panel-body tabs">
					
						<ul class="nav nav-pills">
							<li class="active"><a href="#pilltab1" data-toggle="tab">Servicio 1</a></li>
							<li><a href="#pilltab2" data-toggle="tab">Servicio 2</a></li>
							<li><a href="#pilltab3" data-toggle="tab">Servicio 3</a></li>
						</ul>
		
						<div class="tab-content">
							<div class="tab-pane fade in active" id="pilltab1">
								<h4>Servicio 1</h4>
								<p>Aire acondicionado</p>
							</div>
							<div class="tab-pane fade" id="pilltab2">
								<h4>Servicio 2</h4>
								<p>Ventilador </p>
							</div>
							<div class="tab-pane fade" id="pilltab3">
								<h4>Servicio 3</h4>
								<p>Nevera </p>
							</div>
						</div>
					</div>
				</div><!--/.panel-->
			</div><!-- /.col-->
			
		</div><!-- /.row -->
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
    <%}%>   
</body>	
    </body>
</html>
