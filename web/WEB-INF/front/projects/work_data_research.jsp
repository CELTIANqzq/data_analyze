<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>2010科研数据 </title>
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/work_data_select.do">返回</a>
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

              <!--<li><a href="#" class="btn btn-calltoaction btn-primary">快速注册</a></li>-->
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
          学院2010科研工作量分析
        </h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">




        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位总科研进账数据</h5>


            <div id="canvas-holder">
              <canvas id="chart-area" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位平均科研进账数据</h5>


            <div id="canvas-holder1">
              <canvas id="chart-area1" />
            </div>


          </div>
        </div>

        <br>
        <hr>
        <br>


        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2015年学院不同单位不同年龄段教师科研进账分布</h5>

            <div id="canvas-holder2">
              <canvas id="chart-area2" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>


        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位总发表论文(中文核心、ei、sci期刊)</h5>


            <div id="canvas-holder3">
              <canvas id="chart-area3" />
            </div>


          </div>

        </div>

        <br>
        <hr>
        <br>

      </div>
    </section>

  </main>

  <script>

      //      ==========================================================================================

      //颜色定义
      var color = Chart.helpers.color;

      //总科研进账
    var config = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "总科研进账(万元)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        210.86,
                        625.25,
                        481.9333,
                        109.975,
                        5

                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };


    //  平均科研进账

    var config1 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "人均科研进账(万元)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        4.58,
                        10.97,
                        12.36,
                        2.82,
                        0.34
                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };

    // 学院不同单位不同年龄段教职工科研进账分布
    var horizontalBarChartData4 = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(万元)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    23.5,
                    21.4,
                    165.96
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(万元)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    217,
                    249.5,
                    158.75
                ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(万元)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    25.5,
                    107.2,
                    349.2333
                ]},


            {
                label: '计算中心(万元)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    20,
                    60.975,
                    29
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(万元)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    0,
                    5,
                    0
                ]}


        ]

    };



    //各学院论文发表总数
    var config3 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "篇",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        26,
                        57,
                        70,
                        9,
                        7

                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };





    window.onload = function () {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");
          var ctx2 = document.getElementById("chart-area2").getContext("2d");
          var ctx3 = document.getElementById("chart-area3").getContext("2d");


          window.myRadar = new Chart(ctx,config);
          window.myRadar = new Chart(ctx1,config1);
          window.myRadar = new Chart(ctx3,config3);

        //各单位不同年龄段科研进账分布
        window.myHorizontalBar4 = new Chart(ctx2, {
            type: 'horizontalBar',
            data: horizontalBarChartData4,
            options: {
                // Elements options apply to all of the options unless overridden in a dataset
                // In this case, we are setting the border of each horizontal bar to be 2px wide
                elements: {
                    rectangle: {
                        borderWidth: 1,
                    }
                },
                responsive: true,
                legend: {
                    position: 'right',
                },
                title: {
                    display: true,
                }
            }
        });



    }

  </script>


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
