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
        <title>Editar Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" >    
                    <h1>Editar Usuario</h1>
                    <hr>
                    <c:if test="${not empty success}">
                        <div class="alert alert-success">
                            <strong>OK!</strong> <c:out value="${success}" />.
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <strong>Error!</strong> <c:out value="${error}" />.
                        </div>
                    </c:if>
                    <form action="editarUsuarios?user=${user.userID}" method="POST" enctype="form-data">
<!--                        <div class="form-group">
                            <label for="" class="control-label">Correo</label>
                            <input type="text" class="form-control" name="correo" value="${user.userEmail}" autocomplete="off" required/>
                        </div>-->
                        <div class="form-group row col-md-12">
                            <div class="row col-md-8">
                                <label for="" class="control-label">Correo</label>
                                <input type="text" class="form-control" id="correo" name="correo" value="${user.userEmail}" autocomplete="off" required/>
                                   
                            </div>
                            <div class="col-md-2">
                                    <button type="button" id="verificador1" class="btn btn-primary" style="margin-top: 24px">Verificar Correo</button>
                                </div> 
                        </div>
                        <div class="form-group">
                            <p>
                                <label for="" class="control-label">Contrase&ntilde;a</label>
                                <input type="password" class="form-control" value="${user.userPassword}"name="password" id="myPassword" autocomplete="off" required/>
                            </p>
                            <span onmouseover="mouseoverPass();" onmouseout="mouseoutPass();" class="label label-primary">Mostrar Contrase&ntilde;a</span>

                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Nombre</label>
                            <input type="text" class="form-control" name="nombre" value="${user.userFirstName}" autocomplete="off"></input>
                        </div>       
                        <div class="form-group">
                            <label for="" class="control-label">Apellido</label>
                            <input type="text" class="form-control" name="apellido" value="${user.userLastName}"required autocomplete="off"/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Tel&eacute;fono</label>
                            <input type="text" class="form-control" name="telefono" value="${user.userPhone}" autocomplete="off"></input>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Direcci&oacute;n</label>
                            <input type="text" class="form-control" name="direccion" value="${user.userAddress}">
                        </div>
                        <div class="form-group">
                            <a href="listar" class="btn btn-danger" role="button">Cancelar</a>
                            <input type="submit" id="botonVerificado" class="btn btn-primary pull-right" name="enviar" disabled/>
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

                                $(document).ready(function () {
                                    $( "#correo" ).keyup(function() {
                                        //alert( "Handler for .keyup() called." );
                                        if(!$("#botonVerificado").prop('disabled')){
                                            //alert("asd");
                                            $("#botonVerificado").prop('disabled',true);
                                            
                                        }
//                                        if (!$("#botonVerificado").prop('disabled'))
//                                        {
//                                            $("#botonVerificado").attr('disabled');
//                                        }
                                        
                                        
                                      });
                                    
                                    
                                    
                                    
                                    $("#verificador1").click(function () {
                                        var correo = $("#correo").val();
                                        $.post("http://apilayer.net/api/check?access_key=7ee4434c7dc4b78fa1d642acf8555183&email=" + correo + "&smtp=1&format=1",
                                                function (data) {
                                                    
                                                    
                                                    if (data.smtp_check) {
                                                        
                                                        alert("Correo verificado, ahora puede guardar el nuevo registro");
                                                        $("#botonVerificado").removeAttr('disabled');
                                                        


                                                    } else
                                                    {
                                                        alert("Correo no existe");
                                                    }
                                                    

                                                });
                                    });
                                });



                                function mouseoverPass(obj) {
                                    var obj = document.getElementById('myPassword');
                                    obj.type = "text";
                                }
                                function mouseoutPass(obj) {
                                    var obj = document.getElementById('myPassword');
                                    obj.type = "password";
                                }
    </script>
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

