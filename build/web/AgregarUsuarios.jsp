<%-- 
    Document   : addEditProducto
    Created on : 14-jun-2017, 21:49:08
    Author     : mauricioatenas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <title>Agregar Nuevo Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" >    
                    <h1>Agregar Nuevo Usuario</h1>
                    <hr>
                    <c:if test="${not empty success}">
                        <div class="alert alert-success">
                            <strong>Success!</strong> <c:out value="${success}" />.
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <strong>Error!</strong> <c:out value="${error}" />.
                        </div>
                    </c:if>
                    <form action="agregarUsuario" method="POST" enctype="form-data">
                        <div class="form-group">
                            <label for="" class="control-label">Correo</label>
                            <input type="text" class="form-control" name="correo" required/>
                        </div>
                        <div class="form-group">
                            <p>
                                <label for="" class="control-label">Contrase&ntilde;a</label>
                                <input type="password" class="form-control" name="password" id="myPassword" required/>
                            </p>
                            <span onmouseover="mouseoverPass();" onmouseout="mouseoutPass();" class="label label-primary">Mostrar Contrase&ntilde;a</span>

                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Nombre</label>
                            <input type="text" class="form-control" name="nombre" />
                        </div>

                        <div class="form-group">
                            <label for="" class="control-label">Apellido</label>
                            <input type="text" class="form-control" name="apellido" />
                        </div>

                        <div class="form-group">
                            <label for="" class="control-label">Tel&eacute;fono</label>
                            <input type="text" class="form-control" name="telefono" />
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Direcci&oacute;n</label>
                            <input type="text" class="form-control" name="direccion" />
                        </div>
                        <div class="form-group">
                            <a href="listar" class="btn btn-danger" role="button">Cancelar</a>
                            <input type="submit" class="btn btn-primary pull-right" name="nombre" />
                        </div>

                    </form>
                </div>
            </div>
        </div>


        <br></br>
        <br></br>
    </body>
    <script type="text/javascript">
        function mouseoverPass(obj) {
            var obj = document.getElementById('myPassword');
            obj.type = "text";
        }
        function mouseoutPass(obj) {
            var obj = document.getElementById('myPassword');
            obj.type = "password";
        }
    </script>
</html>
