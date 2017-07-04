<%-- 
    Document   : LoginIntranet
    Created on : 17-jun-2017, 17:21:22
    Author     : mauricioatenas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="utf-8"> </meta>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> </meta>
        <meta name="viewport" content="width=device-width, initial-scale=1"> </meta>
        <meta name="description" content=""> </meta>
        <meta name="author" content=""> </meta>

        <title>Registro Usuario - Fukusuke sushi</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Custom CSS -->

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- Navigation -->

    </head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Ingreso Administracion</a>
                    <a class="navbar-brand" href="#">-</a>
                    <a class="navbar-brand" href="index.jsp">Volver a la p&aacute;gina</a>
                    
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">



                </div>

                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <br></br>
        <br></br>
        
        
        
        
        <div class="container"> 
            
          
            <div class="col-md-6 col-md-offset-3 " >
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <strong> <c:out value="${error}" /></strong>.
                        </div>
                    </c:if>
            </div>
            
            <div class="col-md-6 col-md-offset-3 panel panel-default" style="padding-bottom: 20px">
                
                
                <h2> Bienvenido a Administracion</h2>
                <form action="login" method="POST" id="InicioSesion">
                    <div class="form-group">                  
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Ingresa Correo" name="email" required></input>
                    </div>
                    <div class="form-group">                  
                        <label for="Pass">Contraseña:</label>
                        <input type="password" class="form-control" id="pass" placeholder="Ingresa Contraseña" name="pass" required></input>
                    </div> 
                    <div class="checkbox">                    
                        <label><input type="checkbox" name="remember"></input>Recordarme</label>                     
                    </div>
                    <button type="submit" class="btn btn-default">Iniciar Sesi&oacute;n</button>
                </form>
            </div>
        </div>
    </body>
</html>
