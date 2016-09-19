<%-- 
    Document   : login
    Created on : 31-may-2016, 17:03:19
    Author     : macaco
--%>

<%@page import="co.ufps.edu.dto.empleado"%>
<%@page import="facade.ControladorNegocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forms</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
    <%
         empleado emplogin=null;
        
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    ControladorNegocio n= new ControladorNegocio();
    
    if(email!=null&&password!=null){
        empleado emp= new empleado();
        emp.setEmail(email);
        emp.setContraseña(password);
        
    emplogin =n.login(emp);
    
    }
      
     
          
      
        
        
    
    %>
	
	
                            
                          
                           
                            
                            <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
                            
				<div class="panel-heading">Hotel Admin</div>
				<div class="panel-body">
					
						<fieldset>
                                                    <form action="login.jsp" method="POST">
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        <div class="form-group">
								<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Remember Me
								</label>
							</div>
                                                        
							
                                                         <input type="submit" value="Acceder" class="btn btn-primary" min="0"/>
                                                    </form>
							
						</fieldset>
                                    
                                    <% if(emplogin==null&&email!=null&&password!=null){
                                    
                                    %>
                                    <p>opps clave  o usario incorrectos</p>
					<%}
                                        
                                        
                                        
                                        
                                    else if (emplogin!=null&&email!=null&&password!=null){
        
        session.setAttribute("EmpleadoLogin", emplogin);
        if(emplogin.getCargo()==2){
            //recepcinista
        response.sendRedirect("cuartos.jsp"); 
        }else{
             response.sendRedirect("./adm/Datos_hotel.jsp");  
        }
        
        
}
                                        %>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

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
</body>

</html>

