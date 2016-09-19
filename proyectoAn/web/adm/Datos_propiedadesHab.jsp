<%-- 
    Document   : Datos_hotel
    Created on : 4/05/2016, 06:45:15 AM
    Author     : EDINSON
--%>

<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dao.propiedadeshabDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
                     	<%
  ControladorNegocio c4 =new ControladorNegocio();
 empleado emp=(empleado)session.getAttribute("EmpleadoLogin");
 if(emp!=null&&emp.getCargo()==1){
 
 %>

   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>REGISTRO PROPIEDADES DE LA HABITACION</title>

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
									
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Datos de las propiedades de las habitaciones</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked email"><use xlink:href="#stroked-email"></use></svg> Formulario propiedades de las habitaciones </div>
					<div class="panel-body">
						
								
                                                                
								<!-- descripcion input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="name">Nombre de la propiedad</label>
									<div class="col-md-10">
                                                                            <input id="name" name="name" type="text" placeholder="Nombre de la propiedad" class="form-control" required="">
									</div>
								</div>
                                                                <br>
                                                                    <br>
                                                                <!-- incremento input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="inc">Valor incremento</label>
									<div class="col-md-10">
                                                                            <input id="inc" name="inc" type="number" class="form-control" required="">
									</div>
								</div>
                                                                <br>
                                                                <br>
 
                                                                  
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right btn btn-danger">
                                                                            <button  class="btn btn-info btn-md pull-right" onclick="Ingresarpropiedad()">Guardar</button>
									</div>
								</div>
							
					</div>
				</div>
				 </div>	
									</div>
                
                 <div class="row">
			<div class="col-md-12">
				<h1 class="page-header text-center">Listado propiedades las habitaciones</h1>
			</div>
		</div><!--/.row-->
		<div class="col-md-12">
                                              <%
            propiedadeshabDAO p=new propiedadeshabDAO();
           out.print(p.todaspropiedades());
            %>
                </div>
							
		
		  

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/ajax3.js"></script>
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
        
             <%}
 else{
     response.sendRedirect("../login.jsp"); 
 }
%>
</body>

</html>

