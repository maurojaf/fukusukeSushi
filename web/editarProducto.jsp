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
        <title>Editar producto</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" >    
                    <h1>Editar producto</h1>
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
                    <form action="editar?prod=${producto.productID}" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="" class="control-label">Nombre</label>
                            <input type="text" class="form-control" name="name" value="${producto.productName}"required/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Precio</label>
                            <input type="text" class="form-control" name="price" value="${producto.productPrice}"required/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Descripción</label>
                            <textarea class="form-control" name="longDesc" id="" cols="30" rows="10" >${producto.productLongDesc}</textarea>
                        </div>       
                        <div class="form-group">
                            <label for="" class="control-label">Stock</label>
                            <input type="text" class="form-control" name="stock" value="${producto.productStock}"required/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Selecciona Archivo</label>
                            <input type="file" name="image" id="FilUploader" value="${producto.productImage}" >
<!--                            <input type="file" name="image" value="">-->
                        </div>
                        <div class="form-group">
                            <a href="productos" class="btn btn-danger" role="button">Cancelar</a>
                            <input type="submit" onclick="comprueba_extension(this.form, this.form.image.value)" class="btn btn-primary pull-right" name="enviar" />
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <br></br>
        <br></br>
    </body>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript"> 
    $("#FilUploader").change(function () {
        var fileExtension = ['jpeg', 'jpg', 'png ', 'gif', 'bmp'];
        if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
            alert("Solo se pueden subir archivos de imagen : "+fileExtension.join(', '));            
            $("#FilUploader").val("");
        }
    });
    </script>
    
    
</html>
