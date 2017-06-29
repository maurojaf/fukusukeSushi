<%-- 
    Document   : shop-single-product
    Created on : 12-06-2017, 0:15:28
    Author     : Felipe
--%>
<%@page import="classes.Usuario"%>
<%@page import="classes.Products"%>
<%@page import="controllers.ControladorProducto"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Products producto = new ControladorProducto().getProducto(id);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>SUSHI FUKUSUKE | Detalle del Producto</title>

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
        <li>
          <a href="index.jsp">Tienda Online</a>
        </li>
        <li class="active">
          Detalles del producto
        </li>
      </ol> <!-- end breadcrumbs -->
    </div>


    <!-- Single Product -->
    <section class="section-wrap single-product">
      <div class="container relative">
        <div class="row">

          <div class="col-sm-6 col-xs-12 mb-60">

            <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">

              <div class="gallery-cell">
                <a href="img/shop/single_img_1.jpg" class="lightbox-img">
                    <img src="<%=producto.getProductImage() %>" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
              <div class="gallery-cell">
                <a href="img/shop/single_img_2.jpg" class="lightbox-img">
                  <img src="img/shop/single_img_2.jpg" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
              <div class="gallery-cell">
                <a href="img/shop/single_img_3.jpg" class="lightbox-img">
                  <img src="img/shop/single_img_3.jpg" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
              <div class="gallery-cell">
                <a href="img/shop/single_img_4.jpg" class="lightbox-img">
                  <img src="img/shop/single_img_4.jpg" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
              <div class="gallery-cell">
                <a href="img/shop/single_img_5.jpg" class="lightbox-img">
                  <img src="img/shop/single_img_5.jpg" alt="" />
                  <i class="icon arrow_expand"></i>
                </a>
              </div>
            </div> <!-- end gallery main -->

            <div class="gallery-thumbs">

              <div class="gallery-cell">
                <img src="img/shop/single_img_1.jpg" alt="" />
              </div>
              <div class="gallery-cell">
                <img src="img/shop/single_img_2.jpg" alt="" />
              </div>
              <div class="gallery-cell">
                <img src="img/shop/single_img_3.jpg" alt="" />
              </div>
              <div class="gallery-cell">
                <img src="img/shop/single_img_4.jpg" alt="" />
              </div>
              <div class="gallery-cell">
                <img src="img/shop/single_img_5.jpg" alt="" />
              </div>

            </div> <!-- end gallery thumbs -->

          </div> <!-- end col img slider -->

          <div class="col-sm-6 col-xs-12 product-description-wrap">
            <h1 class="product-title"><%= producto.getProductName() %></h1>
            <span class="rating">
              <a href="#">3 Reviews</a>
            </span>
            <form action="agregarProducto" method="post">
            <span class="price">
              <ins>
                <span class="ammount">$ <%=producto.getProductPrice() %></span>
              </ins>
            </span>
            <p class="product-description"><%= producto.getProductLongDesc() %></p>



            <ul class="product-actions clearfix">

              <li>
                  <button type="submit" class="btn btn-color btn-lg add-to-cart left"><span>Agregar al carro</span></button>
              </li>
              <li>
                <div class="icon-add-to-wishlist left">
                  <a href="#"><i class="icon icon_heart_alt"></i></a>
                </div>
              </li>
              <li>
                <div class="quantity buttons_added">
                    <input name="idproducto" type="hidden" value="<%= producto.getProductID() %>"/>
                  <input type="button" value="-" class="minus" /><input id="txt-cantidad" name="cantidad" type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus" />
                </div>
              </li>
            </ul>
            </form>
            <div class="product_meta">
              <span class="sku">SKU: <a href="#"><%=producto.getProductSKU() %></a></span>
              <span class="posted_in">Category: <a href="#"> </a></span>
              <span class="tagged_as">Tags: <a href="#">Elegant</a>, <a href="#">Bag</a></span>
            </div>

            <div class="socials-share clearfix">
              <div class="social-icons rounded">
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-vimeo"></i></a>
              </div>
            </div>
          </div> <!-- end col product description -->
        </div> <!-- end row -->

        <!-- tabs -->
        <div class="row">
          <div class="col-md-12">
            <div class="tabs tabs-bb">
              <ul class="nav nav-tabs">
                <li class="active">
                  <a href="#tab-description" data-toggle="tab">Description</a>
                </li>
                <li>
                  <a href="#tab-info" data-toggle="tab">Information</a>
                </li>
              </ul> <!-- end tabs -->

              <!-- tab content -->
              <div class="tab-content">

                <div class="tab-pane fade in active" id="tab-description">
                  <p>
                 <%= producto.getProductLongDesc()  %>
                  </p>
                </div>

                <div class="tab-pane fade" id="tab-info">
                  <table class="table">

                    <tbody>
                      <tr>
                        <th>SKU</th>
                        <td><%= producto.getProductSKU() %></td>
                      </tr>
                      <tr>
                        <th>Categoria</th>
                        <td>...</td>
                      </tr>
                      <tr>
                        <th>Precio</th>
                        <td>$ <%= producto.getProductPrice() %></td>
                      </tr>
                    </tbody>
                  </table>
                </div>

               

            </div>
          </div> <!-- end tabs -->
        </div> <!-- end row -->


      </div> <!-- end container -->
    </section> <!-- end single product -->


    <!-- Related Items -->
    <section class="section-wrap related-products pt-0">
      <div class="container">
        <div class="row heading-row">
          <div class="col-md-12 text-center">
            <h2 class="heading uppercase"><small>Related Products</small></h2>
          </div>
        </div>

        <div class="row row-10">

          <div id="owl-related-products" class="owl-carousel owl-theme nopadding">

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_1.jpg" alt="">
                  <img src="img/shop/shop_item_1_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>
              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Night Party Dress</a>
                </h3>
                <span class="price">
                  <del>
                    <span>$388.00</span>
                  </del>
                  <ins>
                    <span class="ammount">$159.99</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_2.jpg" alt="">
                  <img src="img/shop/shop_item_2_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>
              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Elegant White Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$219.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_3.jpg" alt="">
                  <img src="img/shop/shop_item_3_back.jpg" alt="" class="back-img">
                </a>
                <span class="sold-out valign">out of stock</span>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>
              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Long Black Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$99.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_4.jpg" alt="">
                  <img src="img/shop/shop_item_4_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>
              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Sexy Pink Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$120.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_5.jpg" alt="">
                  <img src="img/shop/shop_item_5_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Minty Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$399.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_6.jpg" alt="">
                  <img src="img/shop/shop_item_6_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Sexy White Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$119.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_7.jpg" alt="">
                  <img src="img/shop/shop_item_7_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Elegant Pink Dress</a>
                </h3>
                <span class="price">
                  <ins>
                    <span class="ammount">$1379.00</span>
                  </ins>
                </span>
              </div>
            </div>

            <div class="product-item">
              <div class="product-img">
                <a href="#">
                  <img src="img/shop/shop_item_8.jpg" alt="">
                  <img src="img/shop/shop_item_8_back.jpg" alt="" class="back-img">
                </a>
                <div class="product-label">
                  <span class="sale">sale</span>
                </div>
                <div class="product-actions">
                  <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                    <i class="fa fa-exchange"></i>
                  </a>
                  <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                    <i class="fa fa-heart"></i>
                  </a>
                </div>
                <a href="#" class="product-quickview">Quick View</a>
              </div>

              <div class="product-details">
                <h3>
                  <a class="product-title" href="shop-single-product.jsp">Gray California Dress</a>
                </h3>
                <span class="price">
                  <del>
                    <span>$350.00</span>
                  </del>
                  <ins>
                    <span class="ammount">$150.00</span>
                  </ins>
                </span>
              </div>
            </div>

          </div> <!-- end owl -->

        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end related products -->


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

  </main> <!-- end main-wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>
  <script type="text/javascript" src="js/scripts.js"></script>

</body>
</html>
