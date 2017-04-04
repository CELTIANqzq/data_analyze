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

    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>


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
        <h1>学院人力资源数据分析</h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">


          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <div id="main" style="height:600px;width: 100%"></div>


              </div>
              </div>

              <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <h5>学院自2003年至今人才引进情况</h5>


                  <div id="canvas-holder6">
                      <canvas id="chart-area6" />
                  </div>



              </div>

          </div>

          <br/>
          <hr/>
          <br/>


          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <h5>学院未来9年退休情况</h5>


                  <div id="canvas-holder8">
                      <canvas id="chart-area8"/>
                  </div>


              </div>

          </div>


          <br/>
          <hr/>
          <br/>

          <div class="row gallery-row">
              <div class="col-md-12">

                  <h5 style="text-align: center">学院人才队伍博士比例</h5>



                  <div id="canvas-holder10">
                      <canvas id="chart-area10" />
                  </div>

              </div>
          </div>

          <br/>
          <hr/>
          <br/>


        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h5>专任教师职称结构</h5>


            <div id="canvas-holder" style="width: 400px;height: 400px">
              <canvas id="chart-area" />
            </div>


          </div>

          <div class="col-md-6 col-sm-6">

            <h5>专任教师学历结构</h5>


            <div id="canvas-holder1" style="width: 400px;height: 400px">
              <canvas id="chart-area1" />
            </div>



          </div>
        </div>
        <br/>
        <hr/>
        <br/>

        <!-- Gallery Row -->

        <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">


            <h5>专任教师年龄结构</h5>


            <div id="canvas-holder2" style="width: 400px;height: 400px">
              <canvas id="chart-area2" />
            </div>



          </div>
		  <div class="col-md-6 col-sm-6">



            <h5>学院不同年龄阶段博士比例</h5>

            <br/>
            <br/>
            <br/>

            <div id="canvas-holder3">
              <canvas id="chart-area3" style="width: 300px;height: 180px"/>
            </div>


          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <!-- Gallery Row -->

        <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">


            <h5 style="text-align: center">不同年龄段、不同学位人数比例</h5>


            <div id="canvas-holder4">
              <canvas id="chart-area4"/>
            </div>



          </div>
          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">不同年龄段、不同职称人数比例</h5>


            <div id="canvas-holder5">
              <canvas id="chart-area5" />
            </div>


          </div>
        </div>

        <br/>
        <hr/>
        <br/>





      </div>
    </section>

  </main>

  <script>

      // 路径配置
      require.config({
          paths: {
              echarts: 'http://echarts.baidu.com/build/dist'
          }
      });

      // 使用
      require(
              [
                  'echarts',
                  'echarts/chart/map' // 使用柱状图就加载bar模块，按需加载
              ],

              function (ec) {
                  // 基于准备好的dom，初始化echarts图表
                  var myChart = ec.init(document.getElementById('main'));

                  option = {
                      title : {
                          text: '师资力量',
                          subtext: '地域分布',
                          x:'center'
                      },
                      tooltip : {
                          trigger: 'item'
                      },
                      legend: {
                          orient: 'vertical',
                          x:'left',
                          data:['博士','硕士','学士']
                      },
                      dataRange: {
                          min: 0,
                          max: 2500,
                          x: 'left',
                          y: 'bottom',
                          text:['高','低'],           // 文本，默认为数值文本
                          calculable : true
                      },
                      toolbox: {
                          show: true,
                          orient : 'vertical',
                          x: 'right',
                          y: 'center',
                          feature : {
                              mark : {show: true},
                              dataView : {show: true, readOnly: false},
                              restore : {show: true},
                              saveAsImage : {show: true}
                          }
                      },
                      roamController: {
                          show: true,
                          x: 'right',
                          mapTypeControl: {
                              'china': true
                          }
                      },
                      series : [
                          {
                              name: '博士',
                              type: 'map',
                              mapType: 'china',
                              roam: false,
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[
                                  {name: '北京',value: Math.round(Math.random()*1000)},
                                  {name: '天津',value: Math.round(Math.random()*1000)},
                                  {name: '上海',value: Math.round(Math.random()*1000)},
                                  {name: '重庆',value: Math.round(Math.random()*1000)},
                                  {name: '河北',value: Math.round(Math.random()*1000)},
                                  {name: '河南',value: Math.round(Math.random()*1000)},
                                  {name: '云南',value: Math.round(Math.random()*1000)},
                                  {name: '辽宁',value: Math.round(Math.random()*1000)},
                                  {name: '黑龙江',value: Math.round(Math.random()*1000)},
                                  {name: '湖南',value: Math.round(Math.random()*1000)},
                                  {name: '安徽',value: Math.round(Math.random()*1000)},
                                  {name: '山东',value: Math.round(Math.random()*1000)},
                                  {name: '新疆',value: Math.round(Math.random()*1000)},
                                  {name: '江苏',value: Math.round(Math.random()*1000)},
                                  {name: '浙江',value: Math.round(Math.random()*1000)},
                                  {name: '江西',value: Math.round(Math.random()*1000)},
                                  {name: '湖北',value: Math.round(Math.random()*1000)},
                                  {name: '广西',value: Math.round(Math.random()*1000)},
                                  {name: '甘肃',value: Math.round(Math.random()*1000)},
                                  {name: '山西',value: Math.round(Math.random()*1000)},
                                  {name: '内蒙古',value: Math.round(Math.random()*1000)},
                                  {name: '陕西',value: Math.round(Math.random()*1000)},
                                  {name: '吉林',value: Math.round(Math.random()*1000)},
                                  {name: '福建',value: Math.round(Math.random()*1000)},
                                  {name: '贵州',value: Math.round(Math.random()*1000)},
                                  {name: '广东',value: Math.round(Math.random()*1000)},
                                  {name: '青海',value: Math.round(Math.random()*1000)},
                                  {name: '西藏',value: Math.round(Math.random()*1000)},
                                  {name: '四川',value: Math.round(Math.random()*1000)},
                                  {name: '宁夏',value: Math.round(Math.random()*1000)},
                                  {name: '海南',value: Math.round(Math.random()*1000)},
                                  {name: '台湾',value: Math.round(Math.random()*1000)},
                                  {name: '香港',value: Math.round(Math.random()*1000)},
                                  {name: '澳门',value: Math.round(Math.random()*1000)}
                              ]
                          },
                          {
                              name: '硕士',
                              type: 'map',
                              mapType: 'china',
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[
                                  {name: '北京',value: Math.round(Math.random()*1000)},
                                  {name: '天津',value: Math.round(Math.random()*1000)},
                                  {name: '上海',value: Math.round(Math.random()*1000)},
                                  {name: '重庆',value: Math.round(Math.random()*1000)},
                                  {name: '河北',value: Math.round(Math.random()*1000)},
                                  {name: '安徽',value: Math.round(Math.random()*1000)},
                                  {name: '新疆',value: Math.round(Math.random()*1000)},
                                  {name: '浙江',value: Math.round(Math.random()*1000)},
                                  {name: '江西',value: Math.round(Math.random()*1000)},
                                  {name: '山西',value: Math.round(Math.random()*1000)},
                                  {name: '内蒙古',value: Math.round(Math.random()*1000)},
                                  {name: '吉林',value: Math.round(Math.random()*1000)},
                                  {name: '福建',value: Math.round(Math.random()*1000)},
                                  {name: '广东',value: Math.round(Math.random()*1000)},
                                  {name: '西藏',value: Math.round(Math.random()*1000)},
                                  {name: '四川',value: Math.round(Math.random()*1000)},
                                  {name: '宁夏',value: Math.round(Math.random()*1000)},
                                  {name: '香港',value: Math.round(Math.random()*1000)},
                                  {name: '澳门',value: Math.round(Math.random()*1000)}
                              ]
                          },
                          {
                              name: '学士',
                              type: 'map',
                              mapType: 'china',
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[
                                  {name: '北京',value: Math.round(Math.random()*1000)},
                                  {name: '天津',value: Math.round(Math.random()*1000)},
                                  {name: '上海',value: Math.round(Math.random()*1000)},
                                  {name: '广东',value: Math.round(Math.random()*1000)},
                                  {name: '台湾',value: Math.round(Math.random()*1000)},
                                  {name: '香港',value: Math.round(Math.random()*1000)},
                                  {name: '澳门',value: Math.round(Math.random()*1000)}
                              ]
                          }
                      ]
                  };

                  // 为echarts对象加载数据
                  myChart.setOption(option);
              }
      );


      //      ==========================================================================================


      <!--专任教师职称结构-->

      var config = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      47,
                      78,
                      74
                  ],
                  backgroundColor: [
                      window.chartColors.red,
                      window.chartColors.orange,
                      window.chartColors.yellow
                  ],
                  label: '人数'
              }],
              labels: [
                  "教授",
                  "副教授",
                  "讲师"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//      ==========================================================================================

     //专任教师学历结构
      var config1 = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      76,
                      88,
                      38
                  ],
                  backgroundColor: [
                      window.chartColors.blue,
                      window.chartColors.purple,
                      window.chartColors.green
                  ],
                  label: '人数'
              }],
              labels: [
                  "博士",
                  "硕士",
                  "学士"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
//                  text: 'Chart.js Doughnut Chart'
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//      ==========================================================================================

    //专任教师年龄结构
      var config2 = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      62,
                      31,
                      73,
                      30
                  ],
                  backgroundColor: [
                      window.chartColors.blue,
                      window.chartColors.purple,
                      window.chartColors.green
                  ],
                  label: '人数'
              }],
              labels: [
                  "50岁以上",
                  "46～50岁",
                  "36～45岁",
                  "35岁以下"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
//                  text: 'Chart.js Doughnut Chart'
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//==========================================================================================


//专任教师博士比、硕士比、学士比
      var config3 = {
          type: 'line',
          data: {
              labels: ["35岁以下", "36-44岁", "45-49岁", "50岁以上"],
              datasets: [{
                  label: "博士比例(%)",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      82.33,
                      41.10,
                      32.26,
                      17.74
                  ],
                  fill: false,
              }]
          }
      };


//      ==========================================================================================

//不同年龄段，不同学位人数比例


    var color = Chart.helpers.color;

    var config4 = {
        type: 'radar',
        data: {
            labels: ["博士",  "硕士", "学士", "无学位"],
            datasets: [

            {
                label: "50岁以上(%)",
                backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                borderColor: window.chartColors.red,
                pointBackgroundColor: window.chartColors.red,
                data: [
                    17.74,
                    29.03,
                    50.00,
                    3.23

                ]
            },

            {
                label: "45-49岁(%)",
                backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                borderColor: window.chartColors.blue,
                pointBackgroundColor: window.chartColors.blue,
                data: [
                    32.26,
                    58.06,
                    9.68,
                    0

                ]
            },

                {
                    label: "36-44岁(%)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.green,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        41.10,
                        54.79,
                        4.11,
                        0

                    ]
                },

                {
                    label: "35岁以下(%)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        83.33,
                        13.33,
                        3.33,
                        0
                    ]
                },


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


    //不同年龄段，不同职称人数比例

      var config5 = {
          type: 'radar',
          data: {
              labels: ["教授",  "副教授", "讲师", "助教"],
              datasets: [

                  {
                      label: "50岁以上(%)",
                      backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.red,
                      pointBackgroundColor: window.chartColors.red,
                      data: [
                          54.84,
                          38.71,
                          6.45,
                          0

                      ]
                  },

                  {
                      label: "45-49岁(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.blue,
                      pointBackgroundColor: window.chartColors.blue,
                      data: [
                          12.90,
                          51.61,
                          35.48,
                          0

                      ]
                  },

                  {
                      label: "36-44岁(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.green,
                      pointBackgroundColor: window.chartColors.blue,
                      data: [
                          12.33,
                          42.47,
                          41.10,
                          4.11

                      ]
                  },

                  {
                      label: "35岁以下(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.blue,
                      pointBackgroundColor: window.chartColors.yellow,
                      data: [
                          0,
                          23.33,
                          73.33,
                          3.33
                      ]
                  },


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

    //学院2003年至今人才引进情况

      var config6 = {
          type: 'line',
          data: {
              labels: ["2003", "2004", "2005", "2006", "2007", "2008", "2009","2010","2011","2012","2013","2014","2015","2016"],
              datasets: [{
                  label: "博士",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      1,
                      2,
                      4,
                      9,
                      13,
                      13,
                      16,
                      18,
                      20,
                      26,
                      28,
                      32,
                      40,
                      45
                  ],
                  fill: false,
              },

                  {
                  label: "硕士",
                  fill: false,
                  backgroundColor: window.chartColors.blue,
                  borderColor: window.chartColors.blue,
                  data: [
                      1,
                      8,
                      15,
                      23,
                      24,
                      24,
                      24,
                      25,
                      26,
                      27,
                      28,
                      29,
                      30,
                      32
                  ],},

                  {
                      label: "学士",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          2,
                          5,
                          12,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18
                      ],}

              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
//                  text:'Chart.js Line Chart'
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
                          labelString: 'Month'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Value'
                      }
                  }]
              }
          }
      };

//      ==========================================================================================

// 学院未来9年教师退休情况
      var config8 = {
          type: 'line',
          data: {
              labels: ["2017", "2018", "2019", "2020", "2021", "2022", "2023","2024","2025"],
              datasets: [{
                  label: "教师",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      1,
                      2,
                      3,
                      5,
                      8,
                      10,
                      13,
                      16,
                      23
                  ],
                  fill: false,
              },

                  {
                      label: "非专技",
                      fill: false,
                      backgroundColor: window.chartColors.blue,
                      borderColor: window.chartColors.blue,
                      data: [
                          2,
                          5,
                          6,
                          9,
                          9,
                          11,
                          14,
                          16,
                          18
                      ],},

                  {
                      label: "管理岗",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          0,
                          0,
                          3,
                          3,
                          3,
                          3,
                          3,
                          5,
                          7

                      ],}

              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
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
                          labelString: 'Month'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Value'
                      }
                  }]
              }
          }
      };

//      ==========================================================================================

//  学院博士比例现状

      var horizontalBarChartData = {
          labels: ["35岁以下", "36-44岁", "45-49岁", "50岁以上"],
          datasets: [
         //     1
              {
              label: '教授(%)',
              backgroundColor: color(window.chartColors.purple).alpha(0.5).rgbString(),
              borderColor: window.chartColors.purple,
              borderWidth: 1,
              data: [
                  0,
                  88.89,
                  75.00,
                  23.53
                ]
              }
          ,
//              2
              {
              label: '副教授(%)',
              backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
              borderColor: window.chartColors.green,
              data: [
                  100,
                  45.16,
                  18.75,
                  8.33
              ]},
              //              3 color(dsColor).alpha(0.5).rgbString()
              {
                  label: '讲师(%)',
                  backgroundColor: color(window.chartColors.yellow).alpha(0.5).rgbString(),
                  borderColor: window.chartColors.grey,
                  data: [
                      81.82,
                      26.67,
                      36.36,
                      25.00

             ]}]

      };


      window.onload = function() {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");
          var ctx2 = document.getElementById("chart-area2").getContext("2d");
          var ctx3 = document.getElementById("chart-area3").getContext("2d");
          var ctx4 = document.getElementById("chart-area4").getContext("2d");
          var ctx5 = document.getElementById("chart-area5").getContext("2d");
          var ctx6 = document.getElementById("chart-area6").getContext("2d");
          var ctx8 = document.getElementById("chart-area8").getContext("2d");
          var ctx10 = document.getElementById("chart-area10").getContext("2d");


          window.myHorizontalBar = new Chart(ctx10, {
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


          window.myPie = new Chart(ctx, config);
          window.myPie = new Chart(ctx1, config1);
          window.myPie = new Chart(ctx2, config2);
          window.myDoughnut = new Chart(ctx3, config3);
          window.myRadar = new Chart(ctx4, config4);
          window.myRadar = new Chart(ctx5, config5);
          window.myLine = new Chart(ctx6, config6);
          window.myLine = new Chart(ctx8, config8);
      };

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
