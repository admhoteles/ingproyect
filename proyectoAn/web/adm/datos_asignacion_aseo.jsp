<%-- 
    Document   : datos_asignacion_aseo
    Created on : 26/05/2016, 01:22:02 PM
    Author     : EDINSON
--%>


<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dao.limpiezaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        
                   	<%
  ControladorNegocio c4 = new ControladorNegocio();
 empleado emp=(empleado)session.getAttribute("EmpleadoLogin");
 if(emp!=null){
 
 %>

        
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ASEO</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="js/toastr.css">
<!--Icons-->

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
		<jsp:include page="menuadm.jsp"></jsp:include>
									
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header text-center">Asignacion de personal de aseo</h1>
			</div>
		</div><!--/.row-->
		
		
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked email"><use xlink:href="#stroked-email"></use></svg> Formulario datos estados de la habitacion</div>
					<div class="panel-body">
					
								<!-- foto input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="hab">Habitaciones sin asignar encargado del aseo</label>
									<div class="col-md-8">
                                                                           <select class="form-control" name="hab" id="hab">
                                                                        <option selected value="0"> Elige una opción </option>
                                                                        <%
                                                                        limpiezaDAO hab=new limpiezaDAO();
                                                                        String m=hab.habsinasignar();
                                                                        out.println(m);
                                                                        %>
									</select>
									
									</div>
                                                                        <br>
                                                                        <br>
                                                                        <br>
                                                                        <label class="col-md-4 control-label" for="emp">Empleado</label>
									<div class="col-md-8">
                                                                           <select class="form-control" name="emp" id="emp">
                                                                        <option selected value="0"> Elige una opción </option>
                                                                        <%
                                                                        
                                                                        String mn=hab.empleados();
                                                                        out.println(mn);
                                                                        %>
									</select>
									
									</div>
									<br>
                                                                        <br>
                                                                        <br>
								
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right btn btn-danger">
										<button  class="btn btn-info btn-md pull-right" onclick="consultarPreconteo()">Guardar</button>
									</div>
								</div>
                                                                <br>
                                                                
							
                                            </div>
                                        </div>         
                                    </div>
                                </div>    
                                            <div class="row">
			<div class="col-md-12">
				<h1 class="page-header text-center">Listado de asignacion de aseo</h1>
			</div>
		</div><!--/.row-->
		<div class="col-md-12">
                      <!--   <div style="border: 1px red solid; width: 100px; height: 100px;" id="algo">
            
        </div>         -->   
                      <%
                          String x=hab.Asignadas();
                          out.println(x);
                          %>
                </div>
					
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
	<script src="js/lumino.glyphs.js"></script>
 <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/ajax.js"></script>
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

