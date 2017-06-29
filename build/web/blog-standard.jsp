<%-- 
    Document   : blog-standard
    Created on : 12-06-2017, 0:11:05
    Author     : Felipe
--%>

<%@page import="classes.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>SUSHI FUKUSUKE | Blog</title>

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

<body class="relative" data-spy="scroll" data-offset="60" data-target=".navbar">

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
                  <% if (session.getAttribute("Autentificacion") instanceof Usuario ){ %>
                                            <li class="top-bar-link"><a href="user-account.jsp"><strong>Mi cuenta</strong></a></li>
                                        <li class="top-bar-link"><a href="cerrarSesionCliente"><strong>Cerrar Sesi&oacute;n</strong></a></li>
                                       <% }else{ %>   
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

    <!-- Breadcrumbs -->
    <div class="container">
      <ol class="breadcrumb">
        <li>
          <a href="index.jsp">Inicio</a>
        </li>
        <li class="active">
          Blog
        </li>
      </ol> <!-- end breadcrumbs -->
    </div>


    <!-- Blog Standard -->
    <section class="section-wrap blog-standard pb-50">
      <div class="container relative">
        <div class="row">


            <!-- standard post -->
            <article class="entry-item">
              <div class="entry-img">
                <a href="blog-single.jsp">
                  <img src="img/blog/post_img_1.jpg" alt="">
                </a>
              </div>

              <div class="entry-wrap">
                <div class="entry">
                  <h2 class="entry-title">
                    <a href="blog-single.jsp">Hot trends of this year.</a>
                  </h2>
                  <ul class="entry-meta">
                    <li class="entry-date">
                      19 July, 2015
                    </li>
                    <li class="entry-category">
                      <a href="#">Fashion</a>
                    </li>
                    <li class="entry-author">
                      <a href="#">Admin</a>
                    </li>
                    <li class="entry-comments">
                      <a href="blog-single.jsp">15 Comments</a>
                    </li>
                  </ul>
                  <div class="entry-content">
                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amadea is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur.</p>
                    <a href="blog-single.jsp" class="btn btn-md btn-light"><span>Read More</span></a>
                  </div>
                </div>
              </div>
            </article> <!-- end standard post -->


            <!-- gallery post -->
            <article class="entry-item">
              <div class="entry-slider">
                <div class="flexslider" id="flexslider">
                  <ul class="slides clearfix">
                    <li>
                      <a href="#">
                        <img src="img/blog/gallery_post_img_1.jpg" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="img/blog/gallery_post_img_2.jpg" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="img/blog/gallery_post_img_3.jpg" alt="">
                      </a>
                    </li>
                  </ul>
                </div>
              </div> <!-- end slider -->

              <div class="entry-wrap">
                <div class="entry">
                  <h2 class="entry-title">
                    <a href="blog-single.jsp">latest summer collection</a>
                  </h2>
                  <ul class="entry-meta">
                    <li class="entry-date">
                      19 July, 2015
                    </li>
                    <li class="entry-category">
                      <a href="#">Fashion</a>
                    </li>
                    <li class="entry-author">
                      <a href="#">Admin</a>
                    </li>
                    <li class="entry-comments">
                      <a href="blog-single.jsp">15 Comments</a>
                    </li>
                  </ul>
                  <div class="entry-content">
                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amadea is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur.</p>
                    <a href="blog-single.jsp" class="btn btn-md btn-light"><span>Read More</span></a>
                  </div>
                </div>
              </div>
            </article> <!-- end gallery post -->

            <!-- video post -->
            <article class="entry-item">
              <div class="entry-video video-wrap">
                <iframe width="640" height="360" src="https://player.vimeo.com/video/90840341?badge=0" allowfullscreen></iframe>
              </div>

              <div class="entry-wrap">
                <div class="entry">
                  <h2 class="entry-title">
                    <a href="blog-single.jsp">clean &amp; professional theme</a>
                  </h2>
                  <ul class="entry-meta">
                    <li class="entry-date">
                      19 July, 2015
                    </li>
                    <li class="entry-category">
                      <a href="#">Fashion</a>
                    </li>
                    <li class="entry-author">
                      <a href="#">Admin</a>
                    </li>
                    <li class="entry-comments">
                      <a href="blog-single.jsp">15 Comments</a>
                    </li>
                  </ul>
                  <div class="entry-content">
                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amadea is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur.</p>
                    <a href="blog-single.jsp" class="btn btn-md btn-light"><span>Read More</span></a>
                  </div>
                </div>
              </div>
            </article> <!-- end video post -->


            <!-- blockquote post -->
            <article class="entry-item">
              <div class="entry blockquote">
                <blockquote class="blockquote-style-1">
                  <ul class="entry-meta">
                    <li class="entry-date">
                      19 July, 2015
                    </li>
                    <li class="entry-category">
                      <a href="#">Fashion</a>
                    </li>
                    <li class="entry-author">
                      <a href="#">Admin</a>
                    </li>
                    <li class="entry-comments">
                      <a href="blog-single.jsp">15 Comments</a>
                    </li>
                  </ul>
                  <p>
                    <a href="blog-single.jsp">"Incredible change happens in your life when you decide to take control of what you do have power over instead of craving control over what you don't."</a>
                  </p>
                  <span>– Steve Maraboli</span>
                </blockquote>
              </div>
            </article> <!-- end blockquote post -->


            <!-- text only post -->
            <article class="entry-item">
              <div class="entry-wrap pt-0">
                <div class="entry">
                  <h2 class="entry-title">
                    <a href="blog-single.jsp">Text blog post. Adventurous man using bicycle</a>
                  </h2>
                  <ul class="entry-meta">
                    <li class="entry-date">
                      19 July, 2015
                    </li>
                    <li class="entry-category">
                      <a href="#">Fashion</a>
                    </li>
                    <li class="entry-author">
                      <a href="#">Admin</a>
                    </li>
                    <li class="entry-comments">
                      <a href="blog-single.jsp">15 Comments</a>
                    </li>
                  </ul>
                  <div class="entry-content">
                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amadea is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur.</p>
                    <a href="blog-single.jsp" class="btn btn-md btn-light"><span>Read More</span></a>
                  </div>
                </div>
              </div>
            </article> <!-- end text only post -->


            <!-- Pagination -->
            <div class="text-center">
              <nav class="pagination clear">
                <a href="#"><i class="fa fa-angle-left"></i></a><span class="page-numbers current">
                1</span><a href="#">
                2</a><a href="#">
                3</a><a href="#">
                4</a><a href="#">
                <i class="fa fa-angle-right"></i></a>
              </nav>
            </div>





        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end blog standard -->


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

  </main> <!-- end main wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>
  <script type="text/javascript" src="js/twitterFetcher_min.js"></script>
  <script type="text/javascript" src="js/scripts.js"></script>

</body>
</html>

