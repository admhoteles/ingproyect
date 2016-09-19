<%-- 
    Document   : Datos_Huesped
    Created on : 31/05/2016, 01:06:20 PM
    Author     : EDINSON
--%>

<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page import="co.ufps.edu.dao.HuespedDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HUESPED</title>

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
            	<%
  ControladorNegocio c4 =  new ControladorNegocio();
 empleado emp=(empleado)session.getAttribute("EmpleadoLogin");
 if(emp!=null&&emp.getCargo()==1){
 
 %>
		<jsp:include page="menuadm.jsp"></jsp:include>
									
		
                                            <div class="row">
			<div class="col-md-12">
				<h1 class="page-header text-center">Listado de los huespedes</h1>
			</div>
		</div><!--/.row-->
		<div class="col-md-12">
                                              <%
           HuespedDAO h=new HuespedDAO();
           out.print(h.todoslosHuespedes());
            %>
                </div>
					
				
				
        
 
		  

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
<script src="js/lumino.glyphs.js"></script>
 <script src="js/jquery-2.1.4.min.js"></script>
       
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
