<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="models.CategoryModel"%>
     <%@page import="models.ProductModel"%>
    <%@page import="java.util.List"%>
    <%@page import="Dao.CategoryDao"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Obaju : e-commerce template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <header class="header mb-5">
      <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
      <jsp:include page="header/header1.jsp"></jsp:include>
    </header>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Ladies</a></li>
                  <li class="breadcrumb-item"><a href="#">Tops</a></li>
                  <li aria-current="page" class="breadcrumb-item active">White Blouse Armani</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3 order-2 order-lg-1">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Brands <a href="#" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"></i> Clear</a></h3>
                </div>
                <div class="card-body">
                  <form>
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Armani  (10)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Versace  (12)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Carlo Bruni  (15)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Jack Honey  (14)
                        </label>
                      </div>
                    </div>
                    <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>
                  </form>
                </div>
              </div>
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Colours <a href="#" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"></i> Clear</a></h3>
                </div>
                <div class="card-body">
                  <form>
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"><span class="colour white"></span> White (14)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"><span class="colour blue"></span> Blue (10)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"><span class="colour green"></span>  Green (20)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"><span class="colour yellow"></span>  Yellow (13)
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"><span class="colour red"></span>  Red (10)
                        </label>
                      </div>
                    </div>
                    <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>
                  </form>
                </div>
              </div>
              <!-- *** MENUS AND FILTERS END ***-->
              <div class="banner"><a href="#"><img src="img/banner.jpg" alt="sales 2014" class="img-fluid"></a></div>
            </div>
            <div class="col-lg-9 order-1 order-lg-2">
              <%          
                             ProductModel product = (ProductModel)request.getAttribute("product");;
                               %>
              <div id="productMain" class="row">
                <div class="col-md-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div class="item"> <img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></div>
                    <div class="item"> <img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></div>
                    <div class="item"> <img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></div>
                  </div>
                  <div class="ribbon sale">
                    <div class="theribbon">SALE</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                  <div class="ribbon new">
                    <div class="theribbon">NEW</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                </div>
                <div class="col-md-6">
                  <div class="box">
                    <h1 class="text-center"><%= product.getProductName() %></h1>
                    <p class="price"><%= product.getProductPrice() %></p>
                    <p class="text-center buttons"><a href="<%=request.getContextPath()%>/addcart?productId=<%=product.getProductId() %>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</a><a href="basket.jsp" class="btn btn-outline-primary"><i class="fa fa-heart"></i> Add to wishlist</a></p>
                  </div>
                  <div data-slider-id="1" class="owl-thumbs">
                    <button class="owl-thumb-item"><img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="img/<%= product.getProductPicture() %>" alt="" class="img-fluid"></button>
                  </div>
                </div>
              </div>
              <div id="details" class="box">
                <p></p>
                <h4>Product details</h4>
                 <p> <%= product.getProductDescription() %></p>
              </div>
              <div class="row same-height-row">
                <div class="col-md-3 col-sm-6">
                  <div class="box same-height">
                    <h3>You may also like these products</h3>
                  </div>
                </div>
              <%          
                             List<ProductModel> newsListProduct1 = null;
                               
                             	if(request.getAttribute("listRe")!=null){
                             		newsListProduct1 = (List<ProductModel>) request.getAttribute("listRe");
                                	
                               %>
                          <% for(int j =0 ;j<newsListProduct1.size();j++){ %>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail?productId=<%=newsListProduct1.get(j).getProductId() %>"><img src="img/<%=newsListProduct1.get(j).getProductPicture()  %>" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail?productId=<%=newsListProduct1.get(j).getProductId() %>"><img src="img/<%=newsListProduct1.get(j).getProductPicture()  %>" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail?productId=<%=newsListProduct1.get(j).getProductId() %>" class="invisible"><img src="img/<%=newsListProduct1.get(j).getProductPicture()  %>" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail?productId=<%=newsListProduct1.get(j).getProductId() %>"><%= newsListProduct1.get(j).getProductName() %></a></h3>
                      <p class="price"><%= newsListProduct1.get(j).getProductPrice()%></p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                 <%} }%>
              </div>
              <div class="row same-height-row">
                <div class="col-md-3 col-sm-6">
                  <div class="box same-height">
                    <h3>Products viewed recently</h3>
                  </div>
                </div>
                    <%          
                             List<ProductModel> newsListProduct = null;
                               
                             	if(request.getAttribute("listR")!=null){
                             		newsListProduct = (List<ProductModel>) request.getAttribute("listR");
                                	
                               %>
                          <% for(int i =0 ;i<newsListProduct.size();i++){ %>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail?productId=<%=newsListProduct.get(i).getProductId() %>"><img src="img/<%=newsListProduct.get(i).getProductPicture()  %>" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail?productId=<%=newsListProduct.get(i).getProductId() %>"><img src="img/<%=newsListProduct.get(i).getProductPicture()  %>" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail?productId=<%=newsListProduct.get(i).getProductId() %>" class="invisible"><img src="img/<%=newsListProduct.get(i).getProductPicture()  %>" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail?productId=<%=newsListProduct.get(i).getProductId() %>"><%= newsListProduct.get(i).getProductName() %></a></h3>
                      <p class="price"><%= newsListProduct.get(i).getProductPrice()%></p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <%} }%>
              </div>
            </div>
            <!-- /.col-md-9-->
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
<footer>
 <jsp:include page="footer/footer1.jsp"></jsp:include>
 </footer>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-2 mb-lg-0">
            <p class="text-center text-lg-left">©2019 Your name goes here.</p>
          </div>
          <div class="col-lg-6">
            <p class="text-center text-lg-right">Template design by <a href="https://bootstrapious.com/">Bootstrapious</a>
              <!-- If you want to remove this backlink, pls purchase an Attribution-free License @ https://bootstrapious.com/p/obaju-e-commerce-template. Big thanks!-->
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>