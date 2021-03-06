<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                  <li aria-current="page" class="breadcrumb-item active">Ladies</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>Ladies</h1>
                <p>In our Ladies department we offer wide selection of the best products we have found and carefully selected worldwide.</p>
              </div>
              <div class="box info-bar">
                <div class="row">
                  <div class="col-md-12 col-lg-4 products-showing">Showing <strong>12</strong> of <strong>25</strong> products</div>
                  <div class="col-md-12 col-lg-7 products-number-sort">
                    <form class="form-inline d-block d-lg-flex justify-content-between flex-column flex-md-row">
                      <div class="products-number"><strong>Show</strong><a href="#" class="btn btn-sm btn-primary">12</a><a href="#" class="btn btn-outline-secondary btn-sm">24</a><a href="#" class="btn btn-outline-secondary btn-sm">All</a><span>products</span></div>
                      <div class="products-sort-by mt-2 mt-lg-0"><strong>Sort by</strong>
                        <select name="sort-by" class="form-control">
                          <option>Price</option>
                          <option>Name</option>
                          <option>Sales first</option>
                        </select>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="row products">
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product1.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product1_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Fur coat with very but very very long name</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product2.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">White Blouse Armani</a></h3>
                      <p class="price"> 
                        <del>$280</del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
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
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product3.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Black Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product3.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Black Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product2.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">White Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product1.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product1_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Fur coat</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <!-- /.products-->
              </div>
              <div class="pages">
                <p class="loadMore"><a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Load more</a></p>
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <li class="page-item"><a href="#" aria-label="Previous" class="page-link"><span aria-hidden="true">??</span><span class="sr-only">Previous</span></a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" aria-label="Next" class="page-link"><span aria-hidden="true">??</span><span class="sr-only">Next</span></a></li>
                  </ul>
                </nav>
              </div>
            </div>
            <!-- /.col-lg-9-->
            <div class="col-lg-3">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Categories</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column category-menu">
                    <li><a href="category.jsp" class="nav-link">Men <span class="badge badge-secondary">42</span></a>
                      <ul class="list-unstyled">
                        <li><a href="category.jsp" class="nav-link">T-shirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Shirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Pants</a></li>
                        <li><a href="category.jsp" class="nav-link">Accessories</a></li>
                      </ul>
                    </li>
                    <li><a href="category.jsp" class="nav-link active">Ladies  <span class="badge badge-light">123</span></a>
                      <ul class="list-unstyled">
                        <li><a href="category.jsp" class="nav-link">T-shirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Skirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Pants</a></li>
                        <li><a href="category.jsp" class="nav-link">Accessories</a></li>
                      </ul>
                    </li>
                    <li><a href="category.jsp" class="nav-link">Kids  <span class="badge badge-secondary">11</span></a>
                      <ul class="list-unstyled">
                        <li><a href="category.jsp" class="nav-link">T-shirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Skirts</a></li>
                        <li><a href="category.jsp" class="nav-link">Pants</a></li>
                        <li><a href="category.jsp" class="nav-link">Accessories</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
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
            <p class="text-center text-lg-left">??2019 Your name goes here.</p>
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