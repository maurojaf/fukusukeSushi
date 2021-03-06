<%-- 
    Document   : shop-checkout
    Created on : 12-06-2017, 0:13:56
    Author     : Felipe
--%>

<%@page import="classes.Usuario"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="classes.Cliente"%>
<%@page import="java.util.Enumeration"%>
<%@page import="classes.Products"%>
<%@page import="controllers.ControladorProducto"%>
<%@page import="classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
    Boolean autenticated = (session.getAttribute("Autentificacion") instanceof Usuario);
    Usuario cliente = null;

    if (autenticated) {
        cliente = (Usuario) session.getAttribute("Autentificacion");
    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SUSHI FUKUSUKE | Finalizar Compra</title>

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
                                        <% if (session.getAttribute("Autentificacion") instanceof Usuario) { %>
                                        <li class="top-bar-link"><a href="user-account.jsp"><strong>Mi cuenta</strong></a></li>
                                        <li class="top-bar-link"><a href="cerrarSesionCliente"><strong>Cerrar Sesi&oacute;n</strong></a></li>
                                            <% } else { %>   
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
                                                <a href="#" class="nav-cart-icon">2</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end navbar-header -->

                                <div class="header-wrap">
                                    <div class="header-wrap-holder">

                                        <!-- Search -->
                                        <div class="nav-search hidden-sm hidden-xs">
                                            <form method="get">
                                                <input type="search" class="form-control" placeholder="Buscar...">
                                                <button type="submit" class="search-button">
                                                    <i class="icon icon_search"></i>
                                                </button>
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
                                                        <a href="#" class="nav-cart-icon">2</a>
                                                    </div>
                                                </div>
                                                <div class="nav-cart-container">
                                                    <div class="nav-cart-items">

                                                        <div class="nav-cart-item clearfix">
                                                            <div class="nav-cart-img">
                                                                <a href="">
                                                                    <img src="img/productos/producto1.jpg" alt="" width="50">
                                                                </a>
                                                            </div>
                                                            <div class="nav-cart-title">
                                                                <a href="#">
                                                                    Promoción 3
                                                                </a>
                                                                <div class="nav-cart-price">
                                                                    <span>1 x</span>
                                                                    <span>7.990</span>
                                                                </div>
                                                            </div>
                                                            <div class="nav-cart-remove">
                                                                <a href="#"><i class="icon icon_close"></i></a>
                                                            </div>
                                                        </div>

                                                        <div class="nav-cart-item clearfix">
                                                            <div class="nav-cart-img">
                                                                <a href="#">
                                                                    <img src="img/productos/producto2.jpg" alt="" width="50">
                                                                </a>
                                                            </div>
                                                            <div class="nav-cart-title">
                                                                <a href="#">
                                                                    Promoción 2
                                                                </a>
                                                                <div class="nav-cart-price">
                                                                    <span>1 x</span>
                                                                    <span>9.990</span>
                                                                </div>
                                                            </div>
                                                            <div class="nav-cart-remove">
                                                                <a href="#"><i class="icon icon_close"></i></a>
                                                            </div>
                                                        </div>

                                                    </div> <!-- end cart items -->

                                                    <div class="nav-cart-summary">
                                                        <span>Subtotal</span>
                                                        <span class="total-price">$</span>
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
                            <h1 class="uppercase">Finalizar Compra</h1>
                        </div>
                    </div>
                </div>
            </section> <!-- end page title -->

            <!-- Checkout -->
            <section class="section-wrap checkout pt-0 pb-50">
                <div class="container relative">
                    <div class="row">

                        <% if (session.getAttribute("Autentificacion") instanceof Usuario) {
                            } else {%>
                        <div class="ecommerce col-xs-12">
                            <div class="alert alert-info fade in alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <strong>¡Información!</strong> </br>Para poder realizar un pedido, debes estar registrado.
                            </div>

                            <div class="row mb-30">
                                <div class="col-md-8">
                                    <p class="ecommerce-info">
                                        ¿No estás registrado?</br>
                                        <a href="login.jsp" class="showlogin">Haz clic aquí para Registrarte</a>
                                    </p>
                                </div>
                            </div>


                            <div class="col-md-8" id="customer_details">
                                <div>
                                    <!--  <h2 class="heading uppercase mb-30">Dirección de Envío</h2>-->

                                    <section class="section-wrap login-register pt-0 pb-40">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-sm-5 col-sm-offset-1 mb-40">
                                                    <div class="login">
                                                        <form action="accesoCliente" method="post">
                                                            <h4 class="uppercase" >Iniciar Sesión</h4>
                                                            <p class="form-row form-row-wide">
                                                                <label for="email">Correo
                                                                    <abbr class="required" title="required">*</abbr>
                                                                </label>
                                                                <input type="email" class="input-text" placeholder="" value="" id="email" name="email">
                                                            </p>
                                                            <p class="form-row form-row-wide">
                                                                <label for="pass">contraseña
                                                                    <abbr class="required" title="required">*</abbr>




                                                                </label>
                                                                <input type="password" class="input-text" placeholder="" value=""  name="pass">
                                                            </p>
                                                            <input type="submit" value="Iniciar Sesión" class="btn" name="btnIngresar">
                                                            <input type="checkbox" class="input-checkbox" id="remember" name="remember" value="1">
                                                        </form>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <div class="clear"></div>
                                </div>
                            </div> <!-- end col -->
                            <% } %>


                            <div class="col-md-12">    
                                <div class="order-review-wrap ecommerce-checkout-review-order" id="order_review">
                                    <h2 class="heading uppercase mb-30">Detalle de la Orden</h2>
                                    <table class="table shop_table ecommerce-checkout-review-order-table">
                                        <tbody>
                                            <%
                                                ControladorProducto cp = new ControladorProducto();
                                                int total = 0;
                                                if (articulos != null) {
                                                    for (Articulo a : articulos) {
                                                        Products producto = cp.getProducto(a.getIdProducto());

                                                        total += a.getCantidad() * producto.getProductPrice();

                                            %>
                                            <tr>
                                                <th><%=producto.getProductName()%><span class="count"> &nbsp; &nbsp; &nbsp; x <%= a.getCantidad()%></span></th>
                                                <td>
                                                    <span class="amount">$ <%=producto.getProductPrice() * a.getCantidad()%></span>
                                                </td>
                                            </tr>
                                            <%}
                                                }%>

                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td>
                                                    <span class="amount">$ <%=total%></span>
                                                </td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>Envío</th>
                                                <td>
                                                    <span>Gratis</span>
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th><strong>Total</strong></th>
                                                <td>
                                                    <strong><span class="amount">$ <%=total%></span></strong>
                                                </td>
                                            </tr>
                                        </tbody>

                                    </table>

                                    <div id="payment" class="ecommerce-checkout-payment">
                                        <h2 class="heading uppercase mb-30">Método de Pago</h2>
                                        <ul class="payment_methods methods">

                                            <!-- <li class="payment_method_bacs">
                                               <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="bacs" checked="checked">
                                               <label for="payment_method_bacs">Trasnferencia electrónica.</label>
                                               <div class="payment_box payment_method_bacs">
                                                 <p>Realice su pago directamente en nuestra cuenta bancaria. Utilice su ID de pedido como referencia de pago. Su orden no será enviada hasta que los fondos se hayan reflejado en nuestra cuenta.</p>
                                                 <div class="form-row place-order">
                                                   <input type="submit" name="ecommerce_checkout_place_order" class="btn btn-lg" id="place_order" value="Place order">
                                                 </div>
                                               </div>
                                             </li>-->



                                            <li class="payment_method_paypal">
                                                <!--                                                    <input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal">
                                                                                                    <label for="payment_method_paypal">Tarjeta de Crédito o Débito</label>-->

                                                <!-- <img src="img/shop/paypal.png" alt="">-->
                                                <div class="payment_box payment_method_paypal">
                                                    <!--                                                        <p>Pague directamente con su tarjeta de Crédito o Débito, a través de XXXXXXX.</p>-->
                                                    <div class="form-row place-order">
                                                        <form action="http://www.checkbox.cl/PaymentGateway/pay.php" method="post">
                                                            <input type=hidden name="comercio_id" value="136">
                                                            <input type=hidden name="comercio_logo" value="">

                                                            <input type=hidden name="item_nombre" value="pedido de sushi">
                                                            <input type=hidden name="item_id" value="1016">
                                                            <input type=hidden name="item_precio" value="<%=total%>">

                                                            <input type=hidden name="url_return" value="">
                                                            <input type=hidden name="url_cancel" value="">
                                                            <input type=hidden name="url_h2h" value="">

                                                            <input type=hidden name="cliente_nombres" value="<%= autenticated ? cliente.getNombre() : ""%>">
                                                            <input type=hidden name="cliente_rut" value="<%= autenticated ? cliente.getRut() : ""%>">
                                                            <input type=hidden name="cliente_email" value="<%= autenticated ? cliente.getCorreo() : ""%>">

                                                            <input type="submit" value="Pagar Online" class="btn btn-md-12 "/>
                                                        </form>

                                                    </div>
                                                    <div class="col-md6 pull-right" >    
                                                        <form action="obtenerOrden" method="POST">
                                                            <input type="submit" id="target" name="ecommerce_checkout_place_order" class="btn btn-lg" value="Generacion orden de Prueba" >
                                                        </form>
                                                    </div>
                                                </div>


                                            </li>

                                        </ul>

                                    </div>
                                </div>
                            </div> <!-- end order review -->

                            </form>

                        </div> <!-- end ecommerce -->

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end checkout -->


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
                                    <p class="mb-0">Somos una pequeña organización que se dedica a la preparación y venta de sushi, en donde día a día nos esforzamos al máximo para entregar el mejor servicio para todos nuestros clientes.
                                    </p>
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

        </main> <!-- end main-wrapper -->

        <!-- jQuery Scripts -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript">
            $("#target").click(function () {
                alert("Orden generada, Gracias por su compra. Ahora será redireccionado a la pagina de inicio");
            });
        </script>
    </body>
</html>
