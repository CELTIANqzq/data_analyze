<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>学院教学科研数据分析结果查看选择</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />

    <!-- Facebook and Twitter integration -->
  <meta property="og:title" content=""/>
  <meta property="og:image" content=""/>
  <meta property="og:url" content=""/>
  <meta property="og:site_name" content=""/>
  <meta property="og:description" content=""/>
  <meta name="twitter:title" content="" />
  <meta name="twitter:image" content="" />
  <meta name="twitter:url" content="" />
  <meta name="twitter:card" content="" />

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/front/lib_one/favicon.ico">



  <!-- Animate.css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/animate.css">
  <!-- Icomoon Icon Fonts-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/icomoon.css">
  <!-- Bootstrap  -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/bootstrap.css">
  <!-- Owl Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/owl.theme.default.min.css">
  <!-- Theme style  -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_two/css/style.css">


  <!-- Modernizr JS -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_two/js/modernizr-2.6.2.min.js"></script>
  <!-- FOR IE9 below -->
  <!--[if lt IE 9]>
  <script src="${pageContext.request.contextPath}/resource/front/lib_two/js/respond.min.js"></script>
  <![endif]-->

  <!-- Themify Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/themify-icons.css">
  <!-- Icomoon Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/icomoon-icons.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/bootstrap.css">
  <!-- Owl Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/owl.theme.default.min.css">
  <!-- Magnific Popup -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/magnific-popup.css">
  <!-- Easy Responsive Tabs -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/easy-responsive-tabs.css">
  <!-- Theme Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/style.css">


  <!-- FOR IE9 below -->
  <!--[if lte IE 9]>
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/modernizr-2.6.2.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/respond.min.js"></script>
  <![endif]-->

  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/Chart.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/samples/utils.js"></script>

</head>

<body class="fh5co-outer">
  <header id="fh5co-header" role="banner">
    
      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header"> 
            <!-- Mobile Toggle Menu Button -->
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
            <a class="navbar-brand" href="index.jsp">返回主页</a>
          </div>
          <div id="fh5co-navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <!--<li><a href="#">数据中心</a></li>-->
            </ul>
            <ul class="nav navbar-nav navbar-right">

              <li>


              </li>
              <li>&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;</li>
              <li><button class="btn btn-primary">登录</button></li>

            </ul>
          </div>
        </div>
      </nav>

  </header>


  <div id="fh5co-page-title" style="background-image: url(${pageContext.request.contextPath}/resource/front/lib_one/images/index_bg.jpg)">
    <div class="overlay"></div>
    <div class="container">
      <div class="text">
        <h1>
          学院教学、科研工作量分析年份选择
        </h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">


        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <h2 class="section-heading">教学数据</h2>
          </div>
        </div>

        <div class="row gallery-row">
          
          <div class="col-md-12">


            <!--年份选择-->

            <div class="fh5co-gallery">

              <a class="gallery-item" href="teach/work_data_teach.do">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
					<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2010</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
						<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2011</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
                   <span class="overlay">
						<h2>教学数据分析</h2>
						<span>20122</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
                <span class="overlay">
						<h2>教学数据分析</h2>
						<span>2013</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
							<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2014</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
				<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2015</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
					<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2016</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
				<span class="overlay">
						<h2>教学数据分析</h2>
						<span>2017</span>
					</span>
              </a>


            </div>








          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <h2 class="section-heading">科研数据</h2>
          </div>
        </div>



        <div class="row gallery-row">
          <div class="col-md-12">

            <!--年份选择-->

            <div class="fh5co-gallery">

              <a class="gallery-item" href="project/work_data_research.do">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
					<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2010</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
						<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2011</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
                   <span class="overlay">
						<h2>科研数据分析</h2>
						<span>2012</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
                <span class="overlay">
						<h2>科研数据分析</h2>
						<span>2013</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
							<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2014</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
				<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2015</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
					<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2016</span>
					</span>
              </a>
              <a class="gallery-item" href="#">
                <img src="${pageContext.request.contextPath}/resource/front/lib_two/images/data01.jpg" alt="2010年数据">
				<span class="overlay">
						<h2>科研数据分析</h2>
						<span>2017</span>
					</span>
              </a>


            </div>


          </div>
        </div>


      </div>
    </section>

  </main>

  <footer role="contentinfo" id="fh5co-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="footer-box border-bottom">
            <h3 class="footer-heading"> 关于我们</h3>
            <p>
               我们是信息工程学院教学数据信息开发的团队。
            </p>
          </div>
          
            <h3 class="footer-heading">订阅</h3>
            <form action="#" class="form-subscribe">
              <div class="field">
                <input type="email" class="form-control" placeholder="hello@mail.com">
                <button class="btn btn-primary">订阅</button>
              </div>
            </form>
            <div class="fh5co-spacer fh5co-spacer-sm"></div>
          
        </div>
        <div class="col-md-3 col-sm-6">
          
            <h3 class="footer-heading">正在开发的项目</h3>
            <ul class="footer-list">
              <li><a href="#">项目一</a></li>
              <li><a href="#">项目二</a></li>
              <li><a href="#">项目三</a></li>
            </ul>
          
        </div>


        <div class="visible-sm clearfix"></div>


        <div class="col-md-3 col-sm-6">
          
            <h3 class="footer-heading">初步成果</h3>
            <ul class="footer-list">
              <li><a href="#"><abbr title="Hypertext Markup Language 5">成果一</abbr></a></li>
              <li><a href="#"><abbr title="Cascading Stylesheets 3">成果二</abbr></a></li>
              <li><a href="#">成果三</a></li>
              <li><a href="#">成果四</a></li>
            </ul>
          
        </div>


        <div class="col-md-3 col-sm-6 clearfix">

          <div class="row">
            <div class="col-md-6 col-sm-6">
              <div class="footer-box">
                <h3 class="footer-heading">联系我们</h3>
                <ul class="footer-list">
                  <li><a href="#">我们的主页</a></li>
                  <li><a href="#">给我们留言</a></li>
                  <li><a href="#">关于我们</a></li>
                  
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="footer-box">
                <h3 class="footer-heading">技术支持</h3>
                <ul class="footer-list">
                  <li><a href="#">问题</a></li>
                  <li><a href="#">领域知识</a></li>
                </ul>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            <p class="text-center">
              <a href="#" target="_blank">UP-VAMS</a><br> &copy; 2017 Display. All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </footer>


  <!-- Go To Top -->
    <a href="#" class="fh5co-gotop"><i class="ti-shift-left"></i></a>


  <!-- jQuery -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery-1.10.2.min.js"></script>
  <!-- jQuery Easing -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.easing.1.3.js"></script>
  <!-- Bootstrap -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/bootstrap.js"></script>
  <!-- Owl carousel -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/owl.carousel.min.js"></script>
  <!-- Magnific Popup -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.magnific-popup.min.js"></script>
  <!-- Easy Responsive Tabs -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/easyResponsiveTabs.js"></script>
  <!-- FastClick for Mobile/Tablets -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/fastclick.js"></script>

  <!-- Main JS -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/main.js"></script>

</body>
</html>
