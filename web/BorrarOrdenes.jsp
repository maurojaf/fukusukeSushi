<%-- 
    Document   : BorrarOrdenes
    Created on : 22-jun-2017, 16:26:09
    Author     : mauricioatenas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <title>Borrar Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <h1>Borrar Registro</h1>

                <div class="alert alert-danger">
                    <strong>Precaucion!, ¿deseas borrar este registro?</strong>
                </div>
                <div>
                    <a href="listarOrdenes" class="btn btn-danger" role="button">Cancelar</a>
                    <a href="borrarOrden?order=${borrar.orderID}&confirmar=1" class="btn btn-success" role="button">Aceptar</a>
                </div>
            </div>    
        </div>        

    </body>
</html>