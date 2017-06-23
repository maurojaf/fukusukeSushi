<%-- 
    Document   : Mantenedores
    Created on : 14-jun-2017, 20:18:32
    Author     : mauricioatenas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>



<head>
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/jq-2.2.4/jszip-3.1.3/pdfmake-0.1.27/dt-1.10.15/b-1.3.1/b-colvis-1.3.1/b-flash-1.3.1/b-html5-1.3.1/b-print-1.3.1/cr-1.3.3/fc-3.2.2/fh-3.1.2/kt-2.2.1/r-2.1.1/rg-1.0.0/rr-1.2.0/se-1.2.2/datatables.min.css"/>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intranet</title>
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
                    <a class="navbar-brand" href="#">Intranet FukusukeSushi</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="productos">Productos</a>
                        </li>                        
                        <li>
                            <a href="listar">Usuarios</a>
                        </li>
                        <li>
                            <a href="listarOrdenes">Ordenes</a>
                        </li>
                        <li>
                            <a href="reportes">Reporte</a>
                        </li>
                        <li>
                            <a href="CerrarSesion">Cerrar Sesion</a>
                        </li>
                        
                    </ul>
                </div>

                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <br></br>
        <br></br>
        <div class="container">
            <div>
                <div class="pull-right" id="botonAgregar" hidden="">
                    <a class="btn btn-lg btn-info"  href="agregar" ><i class="fa fa-plus"></i>  Agregar Nuevo Registro</a>
                </div>
                <br>  
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
                
                <div style='text-align: center;margin-bottom: 18px;' id='loadgif'><i class='fa fa-spinner fa-spin fa-3x fa-fw'></i></div>
                <div></div>
                <table id="datables" class="table table-striped" hidden="">
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Descripción</th>
                        <th>Stock</th>
                        <th>Imagen</th>                        
                        <th>Acción</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" items="${productos}">
                        
                        <tr>
                            <td>
                                <c:out value = "${item.productName}"/>
                            </td>                                         
                            <td>
                                <c:out value = "${item.productPrice}"/>
                            </td> 
                            <td>
                                <c:out value = "${item.productLongDesc}"/>
                            </td>
                            <td>
                                <c:out value = "${item.productStock}"/>
                            </td>
                            <td>
                                <c:out value = "${item.productImage}"/>
                            </td> 
                            <td> 

                                <a class="btn btn-xs btn-info" href="editar?prod=${item.productID}" ><i class="fa fa-pencil"></i> </a>
                                <a class="btn btn-xs btn-danger" href="borrar?prod=${item.productID}"><i class="fa fa-close"></i></a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div>


    </body>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs/jq-2.2.4/jszip-3.1.3/pdfmake-0.1.27/dt-1.10.15/b-1.3.1/b-colvis-1.3.1/b-flash-1.3.1/b-html5-1.3.1/b-print-1.3.1/cr-1.3.3/fc-3.2.2/fh-3.1.2/kt-2.2.1/r-2.1.1/rg-1.0.0/rr-1.2.0/se-1.2.2/datatables.min.js"></script>       
    <script type="text/javascript">
    $(document).ready(function() {

        $('#datables').DataTable({
            
            dom: 'Bfrtip',
            buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
             "info": false,
             "paging": true,
             "initComplete": function() {
             }
        })
        
     $("#datables_wrapper").hide();
      setTimeout(function() {
          $("#datables").show();
          $("#datables_wrapper").show();
          $("#botonAgregar").show();
          $("#loadgif").hide();
      }, 1000);

    
        
        
        

    });
</script>
    
    
    <script>
        $(document).ready(function() 
 {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );</script>
    
</html>
