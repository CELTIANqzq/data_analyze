<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>研究生教学工作量年份选择</title>
	<!--[if lt IE 9]>


    <script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/excanvas.js"></script>
    <![endif]-->
	<!-- The Fonts -->

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/sys/CSS/style.css" />
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/jQuery/jquery-1.7.2.min.js"></script>
	<!--&lt;!&ndash; Flot &ndash;&gt;-->


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/default/easyui.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/icon.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.easyui.min.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<!-- Top Panel -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="${pageContext.request.contextPath}/resource/sys/Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">您好！管理员用户</span>
				<!-- Top Tooltip -->
				<div class="top_tooltip">
					<div>
						<ul class="user_options">

							<li class="i_16_logout"><a href="${pageContext.request.contextPath}/account/loginOut.do" title="注销"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top_links">
				<ul>
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form"/>
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
								</form>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>
	<header class="main_header">
		<div class="wrapper">
			<div class="logo">
				<a href="#" style="text-decoration: none;color: #83888b;font-size: 30px" title="Kanrisha Home">
					数据专家数据维护系统
				</a>
			</div>

		</div>
	</header>


	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="active_tab i_32_dashboard">
					<a href="${pageContext.request.contextPath}/sys_home.do" title="General Info">
						<span class="tab_label">主面板</span>
						<span class="tab_info"></span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teacher/selectPageList.do" title="Some Rows">
						<span class="tab_label">教师基本信息</span>
					</a>
				</li>


				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teach/selectUI.do" title="Some Rows">
						<span class="tab_label">本科教学工作量</span>
					</a>
				</li>

				<li class="i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teachsum/selectUI.do" title="Some Rows">
						<span class="tab_label">研究生教学工作量</span>
					</a>
				</li>


				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_papers/selectUI.do" title="Some Rows">
						<span class="tab_label">学术论文</span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_projects/selectUI.do" title="Some Rows">
						<span class="tab_label">科研项目</span>
					</a>
				</li>

			</ul>
		</aside>

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_dashboard tab_label">控制面板</h3>
					<div><span class="label"></span></div>
				</div>

				<div class="g_12">

					<div class="g_3 quick_stats">
						<div class="big_stats users_stats">
							2010
						</div>
						<h5 class="stats_info">
							<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2010">进入管理</a>
						</h5>
					</div>


					<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						2011
					</div>
					<h5 class="stats_info">
						<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2011">进入管理</a>
					</h5>
				</div>

				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						2012
					</div>
					<h5 class="stats_info">
						<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2012">进入管理</a>
					</h5>
				</div>

				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						2013
					</div>
					<h5 class="stats_info">
						<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2013">进入管理</a>

					</h5>
				</div>

				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						2014
					</div>
					<h5 class="stats_info">
						<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2014">进入管理</a>

					</h5>
				</div>

				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						2015
					</div>
					<h5 class="stats_info">
						<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2015">进入管理</a>

					</h5>
				</div>

					<div class="g_3 quick_stats">
						<div class="big_stats users_stats">
							2016
						</div>
						<h5 class="stats_info">
							<a href="${pageContext.request.contextPath}/sys_teachsum/select.do?SELECT=2016">进入管理</a>

						</h5>
					</div>

				</div>


				<!-- Separator -->
				<div class="g_12 separator"><span></span></div>

			</div>
		</div>

	</div>

	<footer>
		<div class="wrapper">
			<span class="copyright">
				&copy; Copyright &copy; 2017.南昌大学信息工程学院 All rights reserved.
			</span>
		</div>
	</footer>
</body>
</html>
