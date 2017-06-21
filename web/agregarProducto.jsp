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
        <title>Agregar producto</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" >    
                    <h1>Agregar producto</h1>
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
                    <form action="agregar" method="POST" enctype="form-data">
                        <div class="form-group">
                            <label for="" class="control-label">Nombre</label>
                            <input type="text" class="form-control" name="name" required/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Precio</label>
                            <input type="text" class="form-control" name="price" required/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Descripción</label>
                            <textarea class="form-control" name="longDesc" id="" cols="30" rows="10"></textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="" class="control-label">Stock</label>
                            <input type="text" class="form-control" name="stock" />
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="control-label">Selecciona Archivo</label>
                            <input type="file" name="image">
                        </div>
                        <div class="form-group">
                            <a href="productos" class="btn btn-danger" role="button">Cancelar</a>
                            <input type="submit" class="btn btn-primary pull-right" name="nombre" />
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>


        <br></br>
        <br></br>
    </body>
</html>
