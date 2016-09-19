<%-- 
    Document   : Datos_hotel
    Created on : 4/05/2016, 06:45:15 AM
    Author     : EDINSON
--%>


<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dao.servicioDAO"%>
<%@page import="co.ufps.edu.dao.estado_habDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Servicios Hotel</title>

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
				<h1 class="page-header text-center">Servicios del hotel</h1>
			</div>
		</div><!--/.row-->
		
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked email"><use xlink:href="#stroked-email"></use></svg> Formulario datos estados de la habitacion</div>
					<div class="panel-body">
						
                                                                <!--nombre input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="name">Nombre Servicio </label>
									<div class="col-md-10">
                                                                            <input id="name" name="name" type="text"  class="form-control" required="">
									</div>
								</div>
                                                                <br>
                                                                <br>
                                                                <!-- precio input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="precio">Precio</label>
									<div class="col-md-10">
                                                                            <input id="precio" name="precio" type="number"  value="0" class="form-control" required="">
									</div>
								</div>
                                                                 <br>
                                                                 <br>
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right btn btn-danger">
                                                                            <button onclick="ingresarservicio()" class="btn btn-info btn-md pull-right">Guardar</button>
									</div>
								</div>
							
                                            </div>
                                        </div>         
                                    </div>
                                </div>    
                                            <div class="row">
			<div class="col-md-12">
				<h1 class="page-header text-center">Listado servicios del hotel</h1>
			</div>
		</div><!--/.row-->
		<div class="col-md-12">
                                              <%
           servicioDAO h=new servicioDAO();
           out.print(h.tablaservicios());
            %>
                </div>
					
				       <%}
 else{
     response.sendRedirect("../login.jsp"); 
 }
%>	
        
 
		  

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/ajax4.js"></script>
        <script src="js/blockUI.js"></script>
        <script src="js/toastr.js"></script>
	<script>
		

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>

