<%-- 
    Document   : editartipohab
    Created on : 17/05/2016, 09:07:20 PM
    Author     : EDINSON
--%>
<%@page import="co.ufps.edu.dao.tipohabitaciondao"%>
<%
        int Param1= Integer.parseInt(request.getParameter ("id"));
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>REGISTRO TIPO DE HABITACIONES</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

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
				<h1 class="page-header text-center">Datos tipo de la habitacion</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked email"><use xlink:href="#stroked-email"></use></svg> Formulario editar tipo de la habitacion</div>
					<div class="panel-body">
						<form class="form-horizontal" action="actualizar_tipo_habitacion.jsp" method="post">
                                                    <fieldset>
								<!-- id input-->
								<% 
                                                                    out.print("<div class=\"form-group\"> <label class=\"col-md-2 control-label\" for=\"idh\">Tipo de Habitacion </label>"+
									"<div class=\"col-md-10\">"+
									"<input id=\"idh\" name=\"idh\"type=\"hidden\"  class=\"form-control\" value=\""+Param1+"\" placeholder=\""+Param1+"\">"+
									"<p class=\"form-control-static\"> "+Param1+"</p>"+
                                                                            "</div></div>");
                                                                                %>
                                                                <!-- name input -->
                                                                <div class="form-group">
									<label class="col-md-2 control-label" for="name">Nombre del tipo de habitacion</label>
									<div class="col-md-10">
										<input id="name" name="name" type="text" placeholder="Nombre de la descripcion " class="form-control">
									</div>
								</div>
                                                                <!-- Precio input-->
								<div class="form-group">
									<label class="col-md-2 control-label" for="precio">Precio base</label>
									<div class="col-md-10">
										<input id="precio" name="precio" type="number" class="form-control">
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
		<div class="row">
			<div class="col-md-12">
				<h1 class="page-header text-center">Listado tipos de las habitaciones</h1>
			</div>
		</div><!--/.row-->
		<div class="col-md-12">
            <%
            tipohabitaciondao tipoh=new tipohabitaciondao();
           out.print(tipoh.tipos());
            %>
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

</html>

