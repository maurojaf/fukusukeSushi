<%-- 
    Document   : shop-cart
    Created on : 12-06-2017, 0:13:17
    Author     : Felipe
--%>
<%@page import="classes.Usuario"%>
<%@page import="classes.Products"%>
<%@page import="controllers.ControladorProducto"%>
<%@page import="classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SUSHI FUKUSUKE | Carrito</title>

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
                                    <ul class="col-sm-8 top-bar-acc">
                                        <% if (session.getAttribute("Autentificacion") instanceof Usuario) { %>
                                        <li class="top-bar-link"><a href="user-account.jsp">Mi cuenta</a></li>
                                            <% } else { %>   
                                        <li class="top-bar-link"><a href="login.jsp">Iniciar Sesión / Registrarse</a></li>
                                            <% } %> 
                                        <li class="top-bar-link"><a href="shop-cart.jsp">Carrito</a></li>
                                        <li class="top-bar-link"><a href="faq.jsp">Preguntas Frecuentes</a></li>
                                        <li class="top-bar-link"><a href="contact.jsp">Contacto</a></li>
                                        <li class="top-bar-link"><a href="Mantenedores.jsp">Administración</a></li>
                                    </ul>

                                    <ul class="col-sm-4 text-right top-bar-currency-language">
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
                                                    <img src="img/logo_dark.png" >
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
                                                                <a href="#">
                                                                    <img src="img/shop/cart_small_1.jpg" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="nav-cart-title">
                                                                <a href="#">
                                                                    Ladies Bag
                                                                </a>
                                                                <div class="nav-cart-price">
                                                                    <span>1 x</span>
                                                                    <span>1250.00</span>
                                                                </div>
                                                            </div>
                                                            <div class="nav-cart-remove">
                                                                <a href="#"><i class="icon icon_close"></i></a>
                                                            </div>
                                                        </div>

                                                        <div class="nav-cart-item clearfix">
                                                            <div class="nav-cart-img">
                                                                <a href="#">
                                                                    <img src="img/shop/cart_small_2.jpg" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="nav-cart-title">
                                                                <a href="#">
                                                                    Sequin Suit longer title
                                                                </a>
                                                                <div class="nav-cart-price">
                                                                    <span>1 x</span>
                                                                    <span>1250.00</span>
                                                                </div>
                                                            </div>
                                                            <div class="nav-cart-remove">
                                                                <a href="#"><i class="icon icon_close"></i></a>
                                                            </div>
                                                        </div>

                                                    </div> <!-- end cart items -->

                                                    <div class="nav-cart-summary">
                                                        <span>Subtotal</span>
                                                        <span class="total-price">$1799.00</span>
                                                    </div>

                                                    <div class="nav-cart-actions mt-20">
                                                        <a href="shop-cart.jsp" class="btn btn-md btn-dark"><span>Ver Carro</span></a>
                                                        <a href="shop-checkout.jsp" class="btn btn-md btn-color mt-10"><span>Pasar por caja</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu-cart-amount right">
                                                <span>
                                                    Cart /
                                                    <a href="#"> $1299.50</a>
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
                                            <li class="dropdown"><a href="blog-standard.jsp">Blog</a></li>
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
                            <h1 class="uppercase">Carrito de Compras</h1>
                        </div>
                    </div>
                    <c:if test="${not empty success}">
                        <div class="alert alert-success">
                            <strong>OK!!</strong> <c:out value="${success}" />.
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <strong>Error!</strong> <c:out value="${error}" />.
                        </div>
                    </c:if>
                </div>
            </section> <!-- end page title -->

            <!-- Cart -->
            <section class="section-wrap shopping-cart pt-0">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-12">
                            <div class="table-wrap mb-30" id="cart-container">
                                <table class="shop_table cart table" id="shop-table">
                                    <thead>
                                        <tr>
                                            <th class="product-name" colspan="2">Producto</th>
                                            <th class="product-price">Precio</th>
                                            <th class="product-quantity">Cantidad</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <%
                                            ControladorProducto cp = new ControladorProducto();
                                            int total = 0;
                                            if (articulos != null) {
                                                for (Articulo a : articulos) {
                                                    Products producto = cp.getProducto(a.getIdProducto());

                                                    total += a.getCantidad() * producto.getProductPrice();

                                        %>








                                        <tr class="cart_item">
                                            <td class="product-thumbnail">
                                                <a href="#">
                                                    <img src="<%= producto.getProductImage()%>" alt="">
                                                </a>
                                            </td>
                                            <td class="product-name">
                                                <a href="#"><%= producto.getProductName()%></a>
                                                <!-- <ul>
                                                   <li>Size: XL</li>
                                                   <li>Color: White</li>
                                                 </ul>-->
                                            </td>
                                            <td class="product-price">
                                                <span class="amount">$ <%= producto.getProductPrice()%> </span>
                                            </td>
                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="<%= a.getCantidad()%>" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">
                                                <span class="amount">$ <%=producto.getProductPrice() * a.getCantidad()%></span>
                                            </td>
                                            <td class="product-remove">
                                                <span id="idarticulo" style="display:none;"><%= producto.getProductID()%></span>
                                                <a href="" class="remove"  title="Eliminar este producto del carrito" id="deleteitem" > <i class="icon icon_close"  ></i>
                                                </a>
                                            </td>

                                        </tr>

                                        <%}
                                            }%>
                                    </tbody>

                                </table>
                                <%if (articulos == null) {%>
                                <span>No hay artículos en su carrito.</span>
                                <%}%>
                            </div>

                            <div class="row mb-50">
                                <div class="col-md-5 col-sm-12">
                                    <div class="coupon">
                                        <!--<input type="text" name="coupon_code" id="coupon_code" class="input-text form-control" value placeholder="Código de Descuento">
                                        <input type="submit" name="apply_coupon" class="btn btn-md btn-dark" value="Aplicar">-->
                                        <a href="shop-catalog.jsp" class="btn btn-md btn-color"><span>Continuar Comprando</span></a>
                                    </div>
                                </div>

                                <div class="col-md-7">
                                    <div class="actions right">
                                        <input type="submit" name="update_cart" value="Actualzar Carro" class="btn btn-md btn-dark">
                                        <div class="wc-proceed-to-checkout">
                                            <a href="shop-checkout.jsp" class="btn btn-md btn-color"><span>Pasar por caja</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="row">
                        <div class="col-md-6 shipping-calculator-form">
                            <h2 class="heading relative heading-small uppercase mb-30">Calcular el envío</h2>
                            <p class="form-row form-row-wide">
                                <select disabled="disabled" name="calc_shipping_country" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
                                    <option>Seleccionar Comuna</option>
                                </select>
                            </p>

                            <div class="row row-20">
                                <div class="col-sm-12">
                                    <p class="form-row form-row-wide">
                                        <input disabled="disabled" type="text" class="input-text" value placeholder="Dirección" name="calc_shipping_state" id="calc_shipping_state">
                                    </p>
                                </div>

                            </div>

                            <p>
                                <button type="submit" name="calc_shipping" value="1" class="btn btn-md btn-dark mt-20 mb-mdm-40">Actualizar total</button>
                            </p>
                            <div class="alert alert-info fade in alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <strong>¡Información!</strong> </br>En estos momentos, sólo estamos realizando envíos dentro de la comuna de Maipú (3 KM. a la redonda) y el costo es $0 CLP.
                            </div>
                        </div> <!-- end col shipping calculator -->

                        <div class="col-md-4 col-md-offset-2">
                            <div class="cart_totals">
                                <h2 class="heading relative heading-small uppercase mb-30">Detalle del carrito</h2>

                                <table class="table shop_table">
                                    <tbody>





                                        <tr class="cart-subtotal">
                                            <th>Subtotal</th>
                                            <td>



                                                <span class="amount">$ <%=total%> </span>
                                            </td>
                                        </tr>
                                        <tr class="shipping">
                                            <th>Envío</th>
                                            <td>
                                                <span>Gratis</span>
                                            </td>
                                        </tr>
                                        <tr class="order-total">
                                            <th><strong>Total de la Orden</strong></th>
                                            <td>
                                                <strong><span class="amount">$ <%=total%></span></strong>
                                            </td>
                                        </tr>

                                    </tbody>

                                </table>

                            </div>
                        </div> <!-- end col cart totals -->

                    </div> <!-- end row -->


                </div> <!-- end container -->
            </section> <!-- end cart -->

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
                                    <p class="mb-0">A-ha Shop is a very slick and clean e-commerce template with endless possibilities. Creating an awesome clothes store with this Theme is easy than you can imagine.</p>
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
        <script type="text/javascript" src="js/carrito.js"></script>

    </body>
</html>

