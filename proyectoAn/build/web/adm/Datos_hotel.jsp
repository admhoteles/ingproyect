<%-- 
    Document   : Datos_hotel
    Created on : 4/05/2016, 06:45:15 AM
    Author     : EDINSON
--%>

<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dao.datoshoteldao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DATOS DEL HOTEL</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="js/toastr.css">
<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
		<jsp:include page="menuadm.jsp"></jsp:include>
                
                
                	<%
  ControladorNegocio c4 = new ControladorNegocio();
 empleado emp=(empleado)session.getAttribute("EmpleadoLogin");
 if(emp!=null&&emp.getCargo()==1){
 
 %>
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Datos del Hotel</h1>
			</div>
		</div><!--/.row-->
                <% datoshoteldao p= new datoshoteldao();
                   String m=p.configurar();
                out.print(m);
                    %>
		
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked email"><use xlink:href="#stroked-email"></use></svg> Formulario Datos del hotel</div>
					<div class="panel-body">
						<form class="form-horizontal" action="registradoHotel.jsp" method="post">
							<fieldset>
								<!-- Name input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="name">Nombre del hotel</label>
									<div class="col-md-10">
									<input id="name" name="name" type="text" placeholder="Nombre" class="form-control" required>
									</div>
								</div>
                                                                <!-- Slogan input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="slogan">Slogan del hotel</label>
									<div class="col-md-10">
									<input id="slog" name="slog" type="text" placeholder="Slogan" class="form-control" required>
									</div>
								</div>
                                                                <!-- direccion input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="direccion">Dirección</label>
									<div class="col-md-10">
										<input id="iden" name="dir" type="text" placeholder="Dirección" class="form-control" required>
									</div>
								</div>
                                                                <!-- Telefono input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="telefono">Telefono</label>
									<div class="col-md-10">
										<input id="tel" name="tel" type="number"  class="form-control" required>
									</div>
								</div>
							
								<!-- celular input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="cel">Celular</label>
									<div class="col-md-10">
										<input id="cel" name="cel" type="number" class="form-control" required>
									</div>
								</div>
                                                                
 
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right btn btn-danger">
										<button type="submit" class="btn btn-info btn-md pull-right">Guardar</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				
                                                                   </div>	
									</div>
								
				
		
		  

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

       <%}
 else{
     response.sendRedirect("../login.jsp"); 
 }
%>

</html>
</html>
