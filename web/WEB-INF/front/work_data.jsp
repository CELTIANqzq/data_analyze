<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>学院人力资源数据分析 </title>
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
          学院2015、2016教学、科研工作量分析
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

            <h5 style="text-align: center">2015学院各单位专任教师总教学工作量数据</h5>


            <div id="canvas-holder">
              <canvas id="chart-area" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位专任教师平均教学工作量数据</h5>


            <div id="canvas-holder1">
              <canvas id="chart-area1" />
            </div>



          </div>
        </div>
        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2015学院不同单位不同年龄段专任教师工作量比例分布</h5>

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

            <h5 style="text-align: center">2015学院各单位实验人员工作量数据</h5>


            <div id="canvas-holder3">
              <canvas id="chart-area3" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位实验人员平均工作量数据</h5>


            <div id="canvas-holder4">
              <canvas id="chart-area4" />
            </div>


          </div>
        </div>

        <br>
        <hr>
        <br>

        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2015年学院不同单位不同年龄段实验人员工作量比例分布</h5>

            <div id="canvas-holder5">
              <canvas id="chart-area5" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>


        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位专任教师总教学工作量数据</h5>


            <div id="canvas-holder6">
              <canvas id="chart-area6" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位专任教师平均教学工作量数据</h5>


            <div id="canvas-holder7">
              <canvas id="chart-area7" />
            </div>



          </div>
        </div>
        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2016学院不同单位不同年龄段专任教师工作量比例分布</h5>

            <div id="canvas-holder8">
              <canvas id="chart-area8" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位实验人员工作量数据</h5>


            <div id="canvas-holder9">
              <canvas id="chart-area9" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位实验人员平均工作量数据</h5>


            <div id="canvas-holder10">
              <canvas id="chart-area10" />
            </div>


          </div>
        </div>

        <br>
        <hr>
        <br>

        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2016年学院不同单位不同年龄段实验人员工作量比例分布</h5>

            <div id="canvas-holder11">
              <canvas id="chart-area11" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位总科研进账数据</h5>


            <div id="canvas-holder12">
              <canvas id="chart-area12" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位平均科研进账数据</h5>


            <div id="canvas-holder13">
              <canvas id="chart-area13" />
            </div>


          </div>
        </div>

        <br>
        <hr>
        <br>
        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位总科研进账数据</h5>


            <div id="canvas-holder14">
              <canvas id="chart-area14" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位平均科研进账数据</h5>


            <div id="canvas-holder15">
              <canvas id="chart-area15" />
            </div>


          </div>
        </div>

        <br>
        <hr>
        <br>



        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2015年学院不同单位不同年龄段教师科研进账分布</h5>

            <div id="canvas-holder16">
              <canvas id="chart-area16" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">
          <div class="col-md-12">

            <h5 style="text-align: center">2016年学院不同单位不同年龄段教师科研进账分布</h5>

            <div id="canvas-holder17">
              <canvas id="chart-area17" />
            </div>

          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2015学院各单位总发表论文(中文核心、ei、sci期刊)</h5>


            <div id="canvas-holder18">
              <canvas id="chart-area18" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">2016学院各单位总发表论文(中文核心、ei、sci期刊)</h5>


            <div id="canvas-holder19">
              <canvas id="chart-area19" />
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
                          15949.26,
                          21913.01,
                          24957.4,
                          15942.64,
                          8384.684

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

      //      ==========================================================================================


      //  人均教学工作量

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
                        346.723,
                        384.4388,
                        639.9333,
                        408.7856,
                        558.979
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

      //      ==========================================================================================


      //  2015学院不同单位不同年龄段专任教师工作量比例分布
    var horizontalBarChartData = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(%)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    4.16,
                    44.42,
                    51.41
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(%)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    13.93,
                    37.50,
                    48.57
             ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(%)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    10.47,
                    28.30,
                    61.23
            ]},


            {
                label: '计算中心(%)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    5.04,
                    48.16,
                    46.80
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(%)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    19.79,
                    45.35,
                    34.86
            ]}


            ]

    };

      //      ==========================================================================================


      //实验人员工作量分析
    var config3 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "总教学工作量(小时)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        2877.52,
                        4881.5,
                        5050.7,
                        5009.506,
                        2813.9

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

      //      ==========================================================================================

    //  人均教学工作量

    var config4 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "人均教学工作量(小时)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        719.38,
                        542.39,
                        1262.675,
                        357.7897,
                        281.39
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

      //      ==========================================================================================

    //  学院不同单位不同年龄段实验人员工作量比例分布
    var horizontalBarChartData1 = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(%)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    0,
                    50.70,
                    49.30
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(%)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    1.15,
                    26.15,
                    72.70
                ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(%)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    10.19,
                    0,
                    89.81
                ]},


            {
                label: '计算中心(%)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    7.63,
                    15.25,
                    77.12
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(%)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    11.73,
                    12.97,
                    75.30
                ]}


        ]

    };

      //      ==========================================================================================

      //   2016年各单位专任教师教学工作量统计

    var config6 = {
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
                        17033.36,
                        21145.81,
                        22984.45,
                        13392.2,
                        7872.372

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


    //  人均教学工作量
      //      ==========================================================================================

    var config7 = {
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
                        370.2904,
                        370.9791,
                        589.3448,
                        343.3897,
                        524.8248
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

      //      ==========================================================================================


      //2016年各单位专任教师教学工作量统计 8
    var horizontalBarChartData2 = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(%)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    9.46,
                    45.33,
                    45.21
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(%)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    16.28,
                    33.30,
                    50.42
                ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(%)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    10.70,
                    26.48,
                    62.82
                ]},


            {
                label: '计算中心(%)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    2.45,
                    44.36,
                    53.18
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(%)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    19.21,
                    33.48,
                    47.31
                ]}


        ]

    };

      //      ==========================================================================================

      //实验人员工作量分析
    var config9 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "总教学工作量(小时)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        3299.96,
                        4184.9,
                        3729.32,
                        4929,
                        2848.6

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

      //      ==========================================================================================


      //  人均教学工作量

    var config10 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "人均教学工作量(小时)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        824.99,
                        418.49,
                        745.864,
                        410.75,
                        284.86
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

      //      ==========================================================================================

      // 2016 学院不同单位不同年龄段实验人员工作量比例分布
    var horizontalBarChartData3 = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(%)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    0,
                    50.00,
                    50.00
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(%)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    3.19,
                    23.09,
                    73.72
                ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(%)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    11.37,
                    0,
                    88.63
                ]},


            {
                label: '计算中心(%)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    8.76,
                    17.53,
                    73.74
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(%)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    8.07,
                    12.81,
                    79.12
                ]}


        ]

    };

      //      ==========================================================================================


      //2015总科研进账
    var config12 = {
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
//                text: 'Chart.js Radar Chart'
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };

      //      ==========================================================================================

    //  平均科研进账

    var config13 = {
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

      //      ==========================================================================================

    //2016总科研进账
    var config14 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "总科研进账(万元)",
                    backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.red,
                    pointBackgroundColor: window.chartColors.red,
                    data: [
                        320.825,
                        572.55,
                        272.493,
                        40.6,
                        3

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

      //      ==========================================================================================

    //  2016平均科研进账

    var config15 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "人均科研进账(万元)",
                    backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.red,
                    pointBackgroundColor: window.chartColors.red,
                    data: [
                        6.9745,
                        10.05,
                        6.99,
                        1.04,
                        0.2
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

      //      ==========================================================================================

    // 2015 学院不同单位不同年龄段教职工科研进账分布
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


      //      ==========================================================================================

    // 2016 学院不同单位不同年龄段教职工科研进账分布
    var horizontalBarChartData5 = {
        labels: ["35岁以下", "36-44岁", "45岁以上"],
        datasets: [
            //     1
            {
                label: '计算机科学与技术(万元)',
                backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
                borderColor: window.chartColors.purple,
                borderWidth: 1,
                data: [
                    45.9,
                    32.7,
                    242.225
                ]
            }
            ,
//              2
            {
                label: '电子信息工程(万元)',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.green,
                data: [
                    122.6,
                    285.85,
                    164.1
                ]},

            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电气与自动化工程系(万元)',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                    44.52,
                    30.8,
                    197.173
                ]},


            {
                label: '计算中心(万元)',
                backgroundColor: color(window.chartColors.orange).alpha(0.5).rgbString(),
                borderColor: window.chartColors.orange,
                data: [
                    10,
                    12,
                    18.6
                ]},


            //              3 color(dsColor).alpha(0.5).rgbString()
            {
                label: '电工电子实验中心(万元)',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                    0,
                    0,
                    3
                ]}


        ]

    };

      //      ==========================================================================================

    //2015各学院论文发表总数
    var config18 = {
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

      //      ==========================================================================================


      //  2016各学院论文发表总数

    var config19 = {
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
                        20,
                        75,
                        77,
                        7,
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






    window.onload = function () {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");
          var ctx2 = document.getElementById("chart-area2").getContext("2d");


          var ctx3 = document.getElementById("chart-area3").getContext("2d");
          var ctx4 = document.getElementById("chart-area4").getContext("2d");
          var ctx5 = document.getElementById("chart-area5").getContext("2d");

          var ctx6 = document.getElementById("chart-area6").getContext("2d");
          var ctx7 = document.getElementById("chart-area7").getContext("2d");
          var ctx8 = document.getElementById("chart-area8").getContext("2d");

          var ctx9 = document.getElementById("chart-area9").getContext("2d");
          var ctx10 = document.getElementById("chart-area10").getContext("2d");

          var ctx11 = document.getElementById("chart-area11").getContext("2d");

          var ctx12 = document.getElementById("chart-area12").getContext("2d");
          var ctx13 = document.getElementById("chart-area13").getContext("2d");

          var ctx14 = document.getElementById("chart-area14").getContext("2d");
          var ctx15 = document.getElementById("chart-area15").getContext("2d");

          var ctx16 = document.getElementById("chart-area16").getContext("2d");
          var ctx17 = document.getElementById("chart-area17").getContext("2d");


          var ctx18 = document.getElementById("chart-area18").getContext("2d");
          var ctx19 = document.getElementById("chart-area19").getContext("2d");

        window.myHorizontalBar = new Chart(ctx2, {
              type: 'horizontalBar',
              data: horizontalBarChartData,
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

          window.myHorizontalBar1 = new Chart(ctx5, {
              type: 'horizontalBar',
              data: horizontalBarChartData1,
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

        window.myHorizontalBar2 = new Chart(ctx8, {
            type: 'horizontalBar',
            data: horizontalBarChartData2,
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

        //2016年各单位实验人员工作量统计
        window.myHorizontalBar3 = new Chart(ctx11, {
            type: 'horizontalBar',
            data: horizontalBarChartData3,
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

          window.myRadar = new Chart(ctx, config);
          window.myRadar = new Chart(ctx1,config1);
          window.myRadar = new Chart(ctx3, config3);
          window.myRadar = new Chart(ctx4,config4);

          window.myRadar = new Chart(ctx6,config6);
          window.myRadar = new Chart(ctx7,config7);

          window.myRadar = new Chart(ctx9,config9);
          window.myRadar = new Chart(ctx10,config10);


          window.myRadar = new Chart(ctx12,config12);
          window.myRadar = new Chart(ctx13,config13);

          window.myRadar = new Chart(ctx14,config14);
          window.myRadar = new Chart(ctx15,config15);


        //2015年各单位不同年龄段科研进账分布
        window.myHorizontalBar4 = new Chart(ctx16, {
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

        //2016年各单位不同年龄段科研进账分布
        window.myHorizontalBar5 = new Chart(ctx17, {
            type: 'horizontalBar',
            data: horizontalBarChartData5,
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

        window.myRadar = new Chart(ctx18,config18);
        window.myRadar = new Chart(ctx19,config19);



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
              <a href="#" target="_blank">UP-VAMS</a><br> &copy; 2017 Display. All Rights Reserved.</small></p>
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