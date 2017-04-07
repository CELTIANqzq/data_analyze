<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>学院${YEAR}教学工作量数据分析 </title>
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

    <!-- Google Webfont -->
    <!--
    <link href='http://fonts.useso.com/css?family=PT+Mono' rel='stylesheet' type='text/css'>
     -->
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


    <%--<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>



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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">返回主页</a>
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
          学院2010教学数据分析结果
        </h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">

          <div class="row gallery-row">

              <div class="col-md-12">


                  <ul class="resp-tabs-list hor_1">
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2010" style="text-decoration: none;color: blue">2010</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2011" style="text-decoration: none;color: blue">2011</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2012" style="text-decoration: none;color: blue">2012</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2013" style="text-decoration: none;color: blue">2013</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2014" style="text-decoration: none;color: blue">2014</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2015" style="text-decoration: none;color: blue">2015</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2016" style="text-decoration: none;color: blue">2016</a></li>
                  </ul>

              </div>
          </div>
          <hr/>


          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <div id="canvas-holder6">
                      <canvas id="chart-area6" />
                  </div>

              </div>

          </div>









          <div class="row gallery-row">
          
          <div class="col-md-6 col-sm-6">




            <h3 style="text-align: center">${YEAR}学院各单位专任教师总教学工作量数据</h3>


            <div id="canvas-holder">
              <canvas id="chart-area" />
            </div>

              <br/>

              <center>

              <button type="button" class="btn btn-success" title="数据列表"
                      data-container="body" data-toggle="popover" data-placement="right"
                      data-content="${SumTeachData["XY"]}">
                      ${YEAR}信息工程学院总教学工作量
              </button>

              </center>

              <br/>

              <center>

                  <button type="button" class="btn btn-success" title="数据列表"
                          data-container="body" data-toggle="popover" data-placement="right"
                          data-content="<c:forEach var="items" items="${JSJKXYJS_FirstToFiveTeachData}">${items.key}:${items.value}  </c:forEach>">
                      ${YEAR}计算机科学与技术教学工作量前五
                  </button>

              </center>

              <br/>

              <center>

                  <button type="button" class="btn btn-success" title="数据列表"
                          data-container="body" data-toggle="popover" data-placement="right"
                          data-content="<c:forEach var="items" items="${DGDZSYZX_FirstToFiveTeachData}">${items.key}:${items.value}  </c:forEach>">
                      ${YEAR}电工电子实验中心教学工作量前五
                  </button>

              </center>

          </div>

          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位专任教师平均教学工作量数据</h3>


            <div id="canvas-holder1">
              <canvas id="chart-area1" />
            </div>


              <br/>

              <center>

                  <button type="button" class="btn btn-success" title="数据列表"
                          data-container="body" data-toggle="popover" data-placement="right"
                          data-content="<c:forEach var="items" items="${DQYZDHGCX_FirstToFiveTeachData}">${items.key}:${items.value}  </c:forEach>">
                      ${YEAR}电气与自动化系教学工作量前五
                  </button>

              </center>

              <br/>

              <center>

                  <button type="button" class="btn btn-success" title="数据列表"
                          data-container="body" data-toggle="popover" data-placement="right"
                          data-content="<c:forEach var="items" items="${JSZX_FirstToFiveTeachData}">${items.key}:${items.value}  </c:forEach>">
                      ${YEAR}计算中心教学工作量前五
                  </button>

              </center>

              <br/>
              <center>

                  <button type="button" class="btn btn-success" title="数据列表"
                          data-container="body" data-toggle="popover" data-placement="right"
                          data-content="<c:forEach var="items" items="${DZXXGCX_FirstToFiveTeachData}">${items.key}:${items.value}  </c:forEach>">
                      ${YEAR}电子信息工程教学工作量前五
                  </button>

              </center>



          </div>
        </div>
        <%--<br/>--%>
        <%--<hr/>--%>
        <%--<br/>--%>

        <%--<div class="row gallery-row">--%>
          <%--<div class="col-md-12">--%>

            <%--<h5 style="text-align: center">学院不同单位不同年龄段专任教师工作量比例分布</h5>--%>

            <%--<div id="canvas-holder2">--%>
              <%--<canvas id="chart-area2" />--%>
            <%--</div>--%>

          <%--</div>--%>
        <%--</div>--%>

        <%--<br/>--%>
        <%--<hr/>--%>
        <%--<br/>--%>

        <%--<div class="row gallery-row">--%>

          <%--<div class="col-md-6 col-sm-6">--%>

            <%--<h5 style="text-align: center">学院各单位实验人员工作量数据</h5>--%>


            <%--<div id="canvas-holder3">--%>
              <%--<canvas id="chart-area3" />--%>
            <%--</div>--%>


          <%--</div>--%>

          <%--<div class="col-md-6 col-sm-6">--%>

            <%--<h5 style="text-align: center">学院各单位实验人员平均工作量数据</h5>--%>


            <%--<div id="canvas-holder4">--%>
              <%--<canvas id="chart-area4" />--%>
            <%--</div>--%>


          <%--</div>--%>
        <%--</div>--%>

        <%--<br>--%>
        <%--<hr>--%>
        <%--<br>--%>

        <%--<div class="row gallery-row">--%>
          <%--<div class="col-md-12">--%>

            <%--<h5 style="text-align: center">学院不同单位不同年龄段实验人员工作量比例分布</h5>--%>

            <%--<div id="canvas-holder5">--%>
              <%--<canvas id="chart-area5" />--%>
            <%--</div>--%>

          <%--</div>--%>
        <%--</div>--%>

      </div>
    </section>

  </main>

  <script>


      //颜色定义
      var color = Chart.helpers.color;

//      学院各单位专任教师总教学工作量数据 图一



      var config = {
          type: 'radar',
          data: {
              labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
              datasets: [

                  {
                      label: "总教学工作量(小时)",
                      backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.red,
                      pointBackgroundColor: window.chartColors.red,
                      data: [

                           ${SumTeachData["JSJKXYJSX"]},
                           ${SumTeachData["DZXXGCX"]},
                           ${SumTeachData["DQYZDHGCX"]},
                           ${SumTeachData["JSZX"]},
                          ${SumTeachData["DGDZSYZX"]},


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


//      学院各单位专任教师平均教学工作量数据



      var config1 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "人均教学工作量(小时)",
                    backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.red,
                    pointBackgroundColor: window.chartColors.red,
                    data: [
                        ${AveTeachData["JSJKXYJSX"]},
                        ${AveTeachData["DZXXGCX"]},
                        ${AveTeachData["DQYZDHGCX"]},
                        ${AveTeachData["JSZX"]},
                        ${AveTeachData["DGDZSYZX"]}
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
//                text: 'Chart.js Radar Chart'
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };

////      学院不同单位不同年龄段专任教师工作量比例分布
//
//      var horizontalBarChartData = {
//        labels: ["35岁以下", "36-44岁", "45岁以上"],
//        datasets: [
//            //     1
//            {
//                label: '计算机科学与技术(%)',
//                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.purple,
//                borderWidth: 1,
//                data: [
//                    4.16,
//                    44.42,
//                    51.41
//                ]
//            }
//            ,
////              2
//            {
//                label: '电子信息工程(%)',
//                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.green,
//                data: [
//                    13.93,
//                    37.50,
//                    48.57
//             ]},
//
//            //              3 color(dsColor).alpha(0.5).rgbString()
//            {
//                label: '电气与自动化工程系(%)',
//                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.blue,
//                data: [
//                    10.47,
//                    28.30,
//                    61.23
//            ]},
//
//
//            {
//                label: '计算中心(%)',
//                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.orange,
//                data: [
//                    5.04,
//                    48.16,
//                    46.80
//                ]},
//
//
//            //              3 color(dsColor).alpha(0.5).rgbString()
//            {
//                label: '电工电子实验中心(%)',
//                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.red,
//                data: [
//                    19.79,
//                    45.35,
//                    34.86
//            ]}
//
//
//            ]
//
//    };

////学院各单位实验人员工作量数据
//
//
//      var config3 = {
//        type: 'radar',
//        data: {
//            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
//            datasets: [
//
//                {
//                    label: "总教学工作量(小时)",
//                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
//                    borderColor: window.chartColors.yellow,
//                    pointBackgroundColor: window.chartColors.yellow,
//                    data: [
//                        2877.52,
//                        4881.5,
//                        5050.7,
//                        5009.506,
//                        2813.9
//
//                    ]
//                }
//
//
//            ]
//        },
//        options: {
//            legend: {
//                position: 'bottom',
//            },
//            title: {
//                display: true,
//            },
//            scale: {
//                ticks: {
//                    beginAtZero: true
//                }
//            }
//        }
//    };
//
//
////学院各单位实验人员平均工作量数据
//
//
//      var config4 = {
//        type: 'radar',
//        data: {
//            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
//            datasets: [
//
//                {
//                    label: "人均教学工作量(小时)",
//                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
//                    borderColor: window.chartColors.yellow,
//                    pointBackgroundColor: window.chartColors.yellow,
//                    data: [
//                        719.38,
//                        542.39,
//                        1262.675,
//                        357.7897,
//                        281.39
//                    ]
//                }
//
//
//            ]
//        },
//        options: {
//            legend: {
//                position: 'bottom',
//            },
//            title: {
//                display: true,
//            },
//            scale: {
//                ticks: {
//                    beginAtZero: true
//                }
//            }
//        }
//    };
//
//
////      学院不同单位不同年龄段实验人员工作量比例分布
//
//
//
//      var horizontalBarChartData1 = {
//        labels: ["35岁以下", "36-44岁", "45岁以上"],
//        datasets: [
//            //     1
//            {
//                label: '计算机科学与技术(%)',
//                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.purple,
//                borderWidth: 1,
//                data: [
//                    0,
//                    50.70,
//                    49.30
//                ]
//            }
//            ,
////              2
//            {
//                label: '电子信息工程(%)',
//                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.green,
//                data: [
//                    1.15,
//                    26.15,
//                    72.70
//                ]},
//
//            {
//                label: '电气与自动化工程系(%)',
//                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.blue,
//                data: [
//                    10.19,
//                    0,
//                    89.81
//                ]},
//
//
//            {
//                label: '计算中心(%)',
//                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.orange,
//                data: [
//                    7.63,
//                    15.25,
//                    77.12
//                ]},
//
//            {
//                label: '电工电子实验中心(%)',
//                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
//                borderColor: window.chartColors.red,
//                data: [
//                    11.73,
//                    12.97,
//                    75.30
//                ]}
//
//
//        ]
//
//    };

      //学院总体教学量数据分析
      var config6 = {
          type: 'line',
          data: {
              labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016"],
              datasets: [

                  {
                  label: "学院总人均教学工作量",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                          ${TeachData2010["XY"]},
                          ${TeachData2011["XY"]},
                          ${TeachData2012["XY"]},
                          ${TeachData2013["XY"]},
                          ${TeachData2014["XY"]},
                          ${TeachData2015["XY"]},
                          ${TeachData2016["XY"]}
                  ],
                  fill: false,
              }

                  , {
                  label: "计算机科学与技术系人均教学工作量",
                  fill: false,
                  backgroundColor: window.chartColors.blue,
                  borderColor: window.chartColors.blue,
                  data: [
                      ${TeachData2010["JSJKXYJSX"]},
                      ${TeachData2011["JSJKXYJSX"]},
                      ${TeachData2012["JSJKXYJSX"]},
                      ${TeachData2013["JSJKXYJSX"]},
                      ${TeachData2014["JSJKXYJSX"]},
                      ${TeachData2015["JSJKXYJSX"]},
                      ${TeachData2016["JSJKXYJSX"]}
                  ],}

                  , {
                      label: "电子信息工程系人均教学工作量",
                      fill: false,
                      backgroundColor: window.chartColors.green,
                      borderColor: window.chartColors.green,
                      data: [
                          ${TeachData2010["DZXXGCX"]},
                          ${TeachData2011["DZXXGCX"]},
                          ${TeachData2012["DZXXGCX"]},
                          ${TeachData2013["DZXXGCX"]},
                          ${TeachData2014["DZXXGCX"]},
                          ${TeachData2015["DZXXGCX"]},
                          ${TeachData2016["DZXXGCX"]}
                      ],}

                  , {
                      label: "电气与自动化系人均教学工作量",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          ${TeachData2010["DQYZDHGCX"]},
                          ${TeachData2011["DQYZDHGCX"]},
                          ${TeachData2012["DQYZDHGCX"]},
                          ${TeachData2013["DQYZDHGCX"]},
                          ${TeachData2014["DQYZDHGCX"]},
                          ${TeachData2015["DQYZDHGCX"]},
                          ${TeachData2016["DQYZDHGCX"]}
                      ],}

                  , {
                      label: "计算中心人均教学工作量",
                      fill: false,
                      backgroundColor: window.chartColors.purple,
                      borderColor: window.chartColors.purple,
                      data: [
                          ${TeachData2010["JSZX"]},
                          ${TeachData2011["JSZX"]},
                          ${TeachData2012["JSZX"]},
                          ${TeachData2013["JSZX"]},
                          ${TeachData2014["JSZX"]},
                          ${TeachData2015["JSZX"]},
                          ${TeachData2016["JSZX"]}
                      ],}

                  , {
                      label: "电工电子实验中心人均教学工作量",
                      fill: false,
                      backgroundColor: window.chartColors.color8,
                      borderColor: window.chartColors.color8,
                      data: [
                          ${TeachData2010["DGDZSYZX"]},
                          ${TeachData2011["DGDZSYZX"]},
                          ${TeachData2012["DGDZSYZX"]},
                          ${TeachData2013["DGDZSYZX"]},
                          ${TeachData2014["DGDZSYZX"]},
                          ${TeachData2015["DGDZSYZX"]},
                          ${TeachData2016["DGDZSYZX"]}
                      ],}


              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
                  text:'2010-2016全学院人均教学工作量数据整体分析'
              },
              tooltips: {
                  mode: 'index',
                  intersect: false,
              },
              hover: {
                  mode: 'nearest',
                  intersect: true
              },
              scales: {
                  xAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: '年份：'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: '时间（小时）：'
                      }
                  }]
              }
          }
      };


    window.onload = function () {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");
//          var ctx2 = document.getElementById("chart-area2").getContext("2d");
//          var ctx3 = document.getElementById("chart-area3").getContext("2d");
//          var ctx4 = document.getElementById("chart-area4").getContext("2d");
//          var ctx5 = document.getElementById("chart-area5").getContext("2d");
          var ctx6 = document.getElementById("chart-area6").getContext("2d");


//        window.myHorizontalBar = new Chart(ctx2, {
//              type: 'horizontalBar',
//              data: horizontalBarChartData,
//              options: {
//                  // Elements options apply to all of the options unless overridden in a dataset
//                  // In this case, we are setting the border of each horizontal bar to be 2px wide
//                  elements: {
//                      rectangle: {
//                          borderWidth: 1,
//                      }
//                  },
//                  responsive: true,
//                  legend: {
//                      position: 'right',
//                  },
//                  title: {
//                      display: true,
//                  }
//              }
//          });

//          window.myHorizontalBar1 = new Chart(ctx5, {
//              type: 'horizontalBar',
//              data: horizontalBarChartData1,
//              options: {
//
//                  elements: {
//                      rectangle: {
//                          borderWidth: 1,
//                      }
//                  },
//                  responsive: true,
//                  legend: {
//                      position: 'right',
//                  },
//                  title: {
//                      display: true,
//                  }
//              }
//          });

          window.myRadar = new Chart(ctx, config);
          window.myRadar = new Chart(ctx1,config1);
//          window.myRadar = new Chart(ctx3, config3);
//          window.myRadar = new Chart(ctx4,config4);
          window.myLine = new Chart(ctx6,config6);
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


  <script>
      $(function () {
          $("[data-toggle='popover']").popover();
      });
  </script>



  <!-- Go To Top -->
    <a href="#" class="fh5co-gotop"><i class="ti-shift-left"></i></a>

  <!-- jQuery -->
  <%--<script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery-1.10.2.min.js"></script>--%>
  <!-- jQuery Easing -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.easing.1.3.js"></script>
  <!-- Bootstrap -->
  <%--<script src="${pageContext.request.contextPath}/resource/front/lib_one/js/bootstrap.js"></script>--%>
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
