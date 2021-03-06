<%-- 
    Document   : login
    Created on : 12-06-2017, 0:12:57
    Author     : Felipe
--%>
<%@page import="java.sql.Date"%>
<%@page import="classes.Usuario"%>
<%@page import="classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ModeloCliente"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> checkout = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SUSHI FUKUSUKE | Iniciar Sesión / Registrarse</title>

        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,700%7CRaleway:300,400,700%7CPlayfair+Display:700' rel='stylesheet'>

        <!-- Css -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/font-icons.css" />
        <link rel="stylesheet" href="css/sliders.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/animate.min.css" />

        <!-- Favicons -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    </head>

    <body>

        <!-- Preloader -->
        <div class="loader-mask">
            <div class="loader">
                <div></div>
                <div></div>
            </div>
        </div>

        <main class="content-wrapper oh">

            <!-- Navigation -->
            <header class="nav-type-1">

                <div class="top-bar hidden-sm hidden-xs">
                    <div class="container">
                        <div class="top-bar-line">
                            <div class="row">
                                <div class="top-bar-links">
                                    <ul class="col-sm-6 top-bar-acc">
                                        <% if (session.getAttribute("Autentificacion") instanceof Usuario ){ %>
                                            <li class="top-bar-link"><a href="user-account.jsp"><strong>Mi cuenta</strong></a></li>
                                        <li class="top-bar-link"><a href="cerrarSesionCliente"><strong>Cerrar Sesi&oacute;n</strong></a></li>
                                       <% }else{ %>   
                                            <li class="top-bar-link"><a href="login.jsp">Iniciar Sesión / Registrarse</a></li>
                                        <% } %> 
                                        <li class="top-bar-link"><a href="shop-cart.jsp">Carrito</a></li>
                                        <li class="top-bar-link"><a href="faq.jsp">Preguntas Frecuentes</a></li>
                                        <li class="top-bar-link"><a href="contact.jsp">Contacto</a></li>
                                    </ul>

                                    <ul class="col-sm-6 text-right top-bar-currency-language">
                                        <li>
                                            <div class="social-icons">
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                                <a href="#"><i class="fa fa-vimeo"></i></a>
                                            </div>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>

                    </div>
                </div> <!-- end top bar -->

                <nav class="navbar navbar-static-top">
                    <div class="navigation" id="sticky-nav">
                        <div class="container relative">

                            <div class="row">

                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <!-- Mobile cart -->
                                    <div class="nav-cart mobile-cart hidden-lg hidden-md">
                                        <div class="nav-cart-outer">
                                            <div class="nav-cart-inner">
                                                <a href="#" class="nav-cart-icon"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end navbar-header -->

                                <div class="header-wrap">
                                    <div class="header-wrap-holder">

                                        <!-- Search -->
                                        <div class="nav-search hidden-sm hidden-xs">
                                            <form method="get">
                                               
                                            </form>
                                        </div>

                                        <!-- Logo -->
                                        <div class="logo-container">
                                            <div class="logo-wrap text-center">
                                                <a href="index.jsp">
                                                    <img src="img/logo.jpg" >
                                                </a>
                                            </div>
                                        </div>

                                        <!-- Cart -->
                                               <div class="nav-cart-wrap hidden-sm hidden-xs">
                    <div class="nav-cart right">
                      <div class="nav-cart-outer">
                        <div class="nav-cart-inner">
                          <a href="#" class="nav-cart-icon"></a>
                        </div>
                      </div>
                      <div class="nav-cart-container">
                        <div class="nav-cart-items">

                          

                          

                        </div> <!-- end cart items -->

                        <div class="nav-cart-summary">
                          
                        </div>

                        <div class="nav-cart-actions mt-20">
                          <a href="shop-cart.jsp" class="btn btn-md btn-dark"><span>Ver Carro</span></a>
                          <a href="shop-checkout.jsp" class="btn btn-md btn-color mt-10"><span>Pasar por caja</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-cart-amount right">
                      <span>
                        Carrito /
                        
                      </span>
                    </div>
                  </div> <!-- end cart -->

                                    </div>
                                </div> <!-- end header wrap -->

                                <div class="nav-wrap">
                                    <div class="collapse navbar-collapse" id="navbar-collapse">

                                        <ul class="nav navbar-nav">

                                            <li id="mobile-search" class="hidden-lg hidden-md">
                                                <form method="get" class="mobile-search relative">
                                                    <input type="search" class="form-control" placeholder="Search...">
                                                    <button type="submit" class="search-button">
                                                        <i class="icon icon_search"></i>
                                                    </button>
                                                </form>
                                            </li>

                                            <li class="dropdown"><a href="index.jsp">Inicio</a></li>
                                            <li class="dropdown"><a href="about-us.jsp">Nosotros</a></li>
                                            <li class="dropdown"><a href="shop-catalog.jsp">Productos</a></li>
                                            <li class="dropdown"><a href="faq.jsp">Preguntas Frecuentes</a></li>
                                            
                                            <li class="dropdown"><a href="contact.jsp">Contacto</a></li>

                                            <li class="mobile-links">
                                                <ul>
                                                    <li>
                                                        <a href="#">Login</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">My Account</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">My Wishlist</a>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul> <!-- end menu -->
                                    </div> <!-- end collapse -->
                                </div> <!-- end col -->

                            </div> <!-- end row -->
                        </div> <!-- end container -->
                    </div> <!-- end navigation -->
                </nav> <!-- end navbar -->
            </header> <!-- end navigation -->

            <!-- Page Title -->
            <section class="page-title text-center">
                <div class="container relative clearfix">
                    <div class="title-holder">
                        <div class="title-text">
                            <h1 class="uppercase">Mi cuenta</h1>
                        </div>
                    </div>
                </div>
            </section> <!-- end page title -->

            <!-- login -->
            <section class="section-wrap login-register pt-0 pb-40">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5 col-sm-offset-1 mb-40">
                            <div class="login">
                                <form action="accesoCliente" method="post">
                                <h4 class="uppercase">Iniciar Sesión</h4>
                                <p class="form-row form-row-wide">
                                    <label for="email" >Correo
                                        <abbr class="required" title="required">*</abbr>
                                    </label>
                                    <input type="email" class="input-text" id="email" placeholder="" value="" name="email">
                                </p>
                                <p class="form-row form-row-wide">
                                    <label for="Pass">Contraseña
                                        <abbr class="required" title="required">*</abbr>
                                    </label>
                                    <input type="password" class="input-text" id="pass" placeholder="" value="" name="pass">
                                </p>
                                <input type="submit" value="Iniciar Sesión" class="btn" name="btnIngresar">
                                </form>
                                 
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="register">

                                <h4 class="uppercase">Registrarse</h4>
                                <form method="post" id="frm-registro" action="login.jsp">
                                    <% ModeloCliente modelo = new ModeloCliente();
                                        String nombre = request.getParameter("txtNombre");
                                        String rut = request.getParameter("txtRut");
                                        String direccion = request.getParameter("txtDireccion");
                                        String comuna = request.getParameter("txtComuna");
                                        String provincia = request.getParameter("txtProvincia");
                                        String region = request.getParameter("txtRegion");
                                        String fnacimiento = request.getParameter("txtFechaNacimiento");
                                        String sexo = request.getParameter("txtSexo");
                                        String correo = request.getParameter("txtCorreo");
                                        String ntelefono = request.getParameter("txtTelefono");
                                        String password = request.getParameter("txtContrasena");

                                        if (nombre != null && rut != null && direccion != null && comuna != null && provincia != null && region != null && fnacimiento != null && sexo != null && correo != null && ntelefono != null) {
                                            modelo.insertUser(nombre, rut, direccion, comuna, provincia, region, fnacimiento, sexo, correo, ntelefono, password);
                                        } else {

                                    %>

                                    <p class="form-row form-row-wide">
                                        <label for="nombre">Nombre Completo
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="text" class="input-text" placeholder="" value="" name="txtNombre" id="txtNombre">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="rut">Rut
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="text" class="input-text" placeholder="" value="" name="txtRut" id="txtRut">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="direccion">Dirección
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="text" class="input-text" placeholder="" value="" name="txtDireccion" id="txtDireccion">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="comuna">Comuna
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <select name="txtComuna" id="txtComuna">
                                            <option selected="" value="default" name="comuna">Seleccionar</option>
                                            <option value="Cerrillos" name="comuna" id="comuna">Cerrillos</option>
                                            <option value="Cerro Navia" name="comuna" id="comuna">Cerro Navia</option>
                                            <option value="Conchali" name="comuna" id="comuna">Conchalí</option>
                                            <option value="El Bosque" name="comuna" id="comuna">El Bosque</option>
                                            <option value="Estacion Central" name="comuna" id="comuna">Estación Central</option>
                                            <option value="Huechuraba" name="comuna" id="comuna">Huechuraba</option>
                                            <option value="Independencia" name="comuna" id="comuna">Independencia</option>
                                            <option value="La Cisterna" name="comuna" id="comuna">La Cisterna</option>
                                            <option value="La Florida" name="comuna" id="comuna">La Florida</option>
                                            <option value="La Graja" name="comuna" id="comuna">La Granja</option>
                                            <option value="La Pintana" name="comuna" id="comuna">La Pintana</option>
                                            <option value="La Reina" name="comuna" id="comuna">La Reina</option>
                                            <option value="Las Condes" name="comuna" id="comuna">Las Condes</option>
                                            <option value="Lo Barnechea" name="comuna" id="comuna">Lo Barnechea</option>
                                            <option value="Lo Espejo" name="comuna" id="comuna">Lo Espejo</option>
                                            <option value="Lo Prado" name="comuna" id="comuna">Lo Prado</option>
                                            <option value="Macul" name="comuna" id="comuna">Macul</option>
                                            <option value="Maipu" name="comuna" id="comuna">Maipú</option>
                                            <option value="Nunoa" name="comuna" id="comuna">Ñuñoa</option>
                                            <option value="Padre Hurtado" name="comuna" id="comuna">Padre Hurtado</option>
                                            <option value="Pedro Aguirre Cerda" name="comuna" id="comuna">Pedro Aguirre Cerda</option>
                                            <option value="Penalolen" name="comuna" id="comuna">Peñalolén</option>
                                            <option value="Pirque" name="comuna" id="comuna">Pirque</option>
                                            <option value="Providencia" name="comuna" id="comuna">Providencia</option>
                                            <option value="Pudahuel" name="comuna" id="comuna">Pudahuel</option>
                                            <option value="Puente Alto" name="comuna" id="comuna">Puente Alto</option>
                                            <option value="Quilicura" name="comuna" id="comuna">Quilicura</option>
                                            <option value="Quinta Normal" name="comuna" id="comuna">Quinta Normal</option>
                                            <option value="Recoleta" name="comuna" id="comuna">Recoleta</option>
                                            <option value="Renca" name="comuna" id="comuna">Renca</option>
                                            <option value="San Bernardo" name="comuna" id="comuna">San Bernardo</option>
                                            <option value="San Joaquin" name="comuna" id="comuna">San Joaquín</option>
                                            <option value="San Jose de Maipo" name="comuna" id="comuna">San José de Maipo</option>
                                            <option value="San Miguel" name="comuna" id="comuna">San Miguel</option>
                                            <option value="San Ramon" name="comuna" id="comuna">San Ramón</option>
                                            <option value="Santiago" name="comuna" id="comuna">Santiago</option>
                                            <option value="Vitacura" name="comuna" id="comuna">Vitacura</option>
                                        </select>
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="provincia">Provincia
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <select name="txtProvincia" id="txtProvincia">
                                            <option selected="" value="default" name="provincia" id="provincia">Seleccionar</option>
                                            <option value="Provincia de Chacabuco" name="provincia" id="provincia">Provincia de Chacabuco</option>
                                            <option value="Provincia de Cordillera" name="provincia" id="provincia">Provincia de Cordillera</option>
                                            <option value="Provincia de Maipo" name="provincia" id="provincia">Provincia de Maipo</option>
                                            <option value="Provincia de Melipilla" name="provincia"  id="provincia">Provincia de Melipilla</option>
                                            <option value="Provincia de Santiago" name="provincia" id="provincia">Provincia de Santiago</option>
                                            <option value="Provincia de Talagante" name="provincia" id="provincia">Provincia de Talagante</option>
                                        </select>
                                    </p>

                                    <p class="form-row form-row-wide">
                                        <label for="region">Región
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="text" class="input-text" placeholder="" readonly="readonly" value="Region Metropolitana" name="txtRegion" id="txtRegion">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="fnacimiento">Fecha de Nacimiento
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="date" class="input-text" placeholder="" value="" name="txtFechaNacimiento" id="txtFechaNacimiento">
                                    </p>

                                    <p class="form-row form-row-wide">
                                        <label for="sexo">Sexo
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <select name="txtSexo" id="txtSexo" >
                                            <option selected="" value="default" id="sexo">Seleccionar</option>
                                            <option value="Femenino" name="sexo" id="sexo">Femenino</option>
                                            <option value="Masculino" name="sexo" id="sexo">Masculino</option>

                                        </select>
                                    </p>

                                    <!-- <p class="radio-buttons">
                                       <label>Sexo
                                         <abbr class="required" title="required">*</abbr>
                                         &nbsp;&nbsp;
                                       </label>
                                       <input type="radio" class="input-radio"  id="radio1" value="radio1" checked="checked" name="sexo1">
                                       <label for="radio1">Masculino</label>
                                       &nbsp;&nbsp;
                                       <input type="radio" class="input-radio" id="radio2" value="radio2" name="sexo2">
                                       <label for="radio2">Femenino</label>
                                     </p>-->

                                    <p class="form-row form-row-wide">
                                        <label for="correo">Correo electrónico
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="email" class="input-text" placeholder="" value="" name="txtCorreo" id="correo">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <button type="button" id="verificador1" class="btn btn-primary" style="margin-top: 24px">Verificar Correo</button>
                                    </p>
                                    
                                    <p class="form-row form-row-wide">
                                        <label for="telefono">Número de contacto
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="text" class="input-text" placeholder="" value="" name="txtTelefono" id="txtTelefono">
                                    </p>
                                    <p class="form-row form-row-wide">
                                        <label for="contrasena">Contraseña
                                            <abbr class="required" title="required">*</abbr>
                                        </label>
                                        <input type="password" class="input-text" placeholder="" value="" name="txtContrasena" id="txtContrasena" >
                                    </p>
                                    <button class="btn btn-primary" id="botonVerificado" type="submit" disabled>Registrarse</button>
                                </form>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </section> <!-- end login -->


            <!-- Footer Type-1 -->
            <footer class="footer footer-type-1 bg-white">
                <div class="container">
                    <div class="footer-widgets top-bottom-dividers pb-mdm-20">
                        <div class="row">

                            <div class="col-md-2 col-sm-4 col-xs-4 col-xxs-12">
                                <div class="widget footer-links">
                                    <h5 class="widget-title uppercase">Información</h5>
                                    <ul class="list-no-dividers">
                                        <li><a href="#">Nuestro Local</a></li>
                                        <li><a href="#">Nosotros</a></li>
                                        <li><a href="#">Trabaja con Nosotros</a></li>
                                        <li><a href="#">Información de Envíos</a></li>
                                        <li><a href="#">Términos &amp; Condiciones</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-2 col-sm-4 col-xs-4 col-xxs-12">
                                <div class="widget footer-links">
                                    <h5 class="widget-title uppercase">Ayuda</h5>
                                    <ul class="list-no-dividers">
                                        <li><a href="#">Contáctanos</a></li>
                                        <li><a href="#">Preguntas Frecuentes</a></li>
                                        <li><a href="#">Política de Privacidad</a></li>
                                        <li><a href="#">Devoluciones</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-2 col-sm-4 col-xs-4 col-xxs-12">
                                <div class="widget footer-links">
                                    <h5 class="widget-title uppercase">Cuentas de Usuario</h5>
                                    <ul class="list-no-dividers">
                                        <li><a href="#">Mi Cuenta</a></li>
                                        <li><a href="#">Lista de Deseos</a></li>
                                        <li><a href="#">Historial de Órdenes</a></li>
                                        <li><a href="#">Descuentos</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="widget">
                                    <h5 class="widget-title uppercase">SUSHI FUKUSUKE</h5>
                                    <p class="mb-0">Somos una pequeña organización que se dedica a la preparación y venta de sushi, en donde día a día nos esforzamos al máximo para entregar el mejor servicio para todos nuestros clientes.</p>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="widget footer-get-in-touch">
                                    <h5 class="widget-title uppercase">Contacto</h5>
                                    <address class="footer-address"><span>Dirección:</span> Philippines, PO Box 620067, Santiago, Chile.</address>
                                    <p>Teléfono: <a href="tel:+1-888-1554-456-123">+ 1-888-1554-456-123</a></p>
                                    <p>Correo: <a href="mailto:themesupport@gmail.com">contacto@fukusuke.cl</a></p>
                                    <div class="social-icons rounded mt-20">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-vimeo"></i></a>
                                    </div>
                                </div>
                            </div> <!-- end stay in touch -->

                        </div>
                    </div>
                </div> <!-- end container -->

                <div class="bottom-footer bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 copyright sm-text-center">
                                <span>
                                    &copy; 2017 Sushi FUKUSUKE - Delivery.
                                </span>
                            </div>

                            <div class="col-sm-4 text-center">
                                <div id="back-to-top">
                                    <a href="#top">
                                        <i class="fa fa-angle-up"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="col-sm-4 col-xs-12 footer-payment-systems text-right sm-text-center mt-sml-10">
                                <i class="fa fa-cc-paypal"></i>
                                <i class="fa fa-cc-visa"></i>
                                <i class="fa fa-cc-mastercard"></i>
                                <i class="fa fa-cc-discover"></i>
                                <i class="fa fa-cc-amex"></i>
                            </div>
                        </div>
                    </div>
                </div> <!-- end bottom footer -->
            </footer> <!-- end footer -->

            <div id="back-to-top">
                <a href="#top"><i class="fa fa-angle-up"></i></a>
            </div>

        </main> <!-- end main container -->


        <!-- jQuery Scripts -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        
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
                                                        
                                                        alert("Correo verificado, ahora puedes registrarte ");
                                                        $("#botonVerificado").removeAttr('disabled');
                                                        


                                                    } else
                                                    {
                                                        alert("Correo no existe, necesitas ingrasar un correo valido para continuar registrandote");
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

    </body>
</html>

