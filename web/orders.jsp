<%-- 
    Document   : shop-cart
    Created on : 12-06-2017, 0:13:17
    Author     : Felipe
--%>




<%@page import="classes.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>SUSHI FUKUSUKE | Ordenes</title>

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
                  <li class="top-bar-link"><a href="orders.jsp">Mis Ordenes</a></li>
                  <li class="top-bar-link"><a href="shop-cart.jsp">Carrito</a></li>
                  <li class="top-bar-link"><a href="contact.jsp">Cerrar Sesión</a></li>
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
                        <a href="#"> $ </a>
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
                    <li class="dropdown"><a href="#">Blog</a></li>
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
            <h1 class="uppercase">Mis Ordenes</h1>
          </div>
        </div>
      </div>
    </section> <!-- end page title -->

    <!-- Cart -->
    <section class="section-wrap shopping-cart pt-0">
      <div class="container relative">
        <div class="row">

          <div class="col-md-12">
            <div class="table-wrap mb-30" id="cart-container">
              <table class="order_table cart table" id="order-table">
                <thead>
                  <tr>
                    <th class="order-num" colspan="1"># Orden</th>
                    <th class="order-date">Fecha</th>
                    <th class="client-name">Nombre</th>
                    <th class="client-address">Dirección </th>
                    <th class="client-email">Correo </th>
                    <th class="order-total">Total</th>
                    <th class="order-detail">Estado</th>
                    <th class="order-action">Accion</th>
                  </tr>
                </thead>
                <tbody>
                    
                
                  <tr class="cart_item">
                    <td class="order-num">
                      <span> 222 </span>
                    </td>
                     <td class="order-date">
                      <span> 20/06/2017 </span>
                    </td>
                    <td class="client-name">
                      <span> Felipe Sepúlveda </span>
                    </td>
                    <td class="client-address">
                      <span> Avenida Laguna sur 8805 </span>
                    </td>
                    <td class="client-email">
                      <span> fei.sepulveda@alumnos.duoc.cl </span>
                    </td>
                    <td class="order-total">
                      <span class="amount">$ 9990 </span>
                    </td>
                    <td class="order-detail">
                        <span> Aceptada </span>
                    </td>
                     <td class="order-action">
                        <a href="#"> Anular </a>
                    </td>
                  </tr>
                    
                   
                    
                    
                    
                    
                
                    
        
                </tbody>
               
              </table>
               
                
                
            </div>

           

          </div> <!-- end col -->
        </div> <!-- end row -->

        <div class="row">
        

         

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
  <script type="text/javascript" src="js/carrito.js"></script>

</body>
</html>

