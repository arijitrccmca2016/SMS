<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@page session="true"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SMS</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.4 -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!-- Font Awesome Icons -->
<link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- Ionicons -->
<link href="${pageContext.request.contextPath}/static/css/ionicons.min.css" rel="stylesheet"
	type="text/css">
<!-- Theme style -->
<link href="${pageContext.request.contextPath}/static/css/AdminLTE.css" rel="stylesheet" type="text/css">
<!-- AdminLTE Skins. Choose a skin from the css/skins 
 folder instead of downloading all of them to reduce the load. -->
<link href="${pageContext.request.contextPath}/static/css/_all-skins.min.css" rel="stylesheet"
	type="text/css">
<!-- iCheck for checkboxes and radio inputs -->
<link href="${pageContext.request.contextPath}/static/css/all.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/static/css/dataTables.bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/static/css/dataTables.responsive.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/static/css/dataTables.tableTools.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/static/css/datepicker3.css" rel="stylesheet"
	type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/static/js/jQuery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/printThis.js"></script>

</head>
<body class="skin-blue sidebar-mini">
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function logOut() {
				document.getElementById("logoutForm").submit();
			}
		</script>
	<!-- Site wrapper -->
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a
				href="welcome"
				class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
				class="logo-mini">SMS</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>SMS</b> School Management System</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a
					href="welcome"
					class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
					class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<ul class="dropdown-menu">
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 200px;">
									<ul class="menu"
										style="overflow: hidden; width: 100%; height: 200px;">
										<li>
											<!-- start message --> <a
											href="welcome">
												<div class="pull-left">
													<img
														src="${pageContext.request.contextPath}/static/images/owner.png"
														class="img-circle" alt="User Image">
												</div>
										</a>
										</li>
										<!-- end message -->
									</ul>
									<div class="slimScrollBar"
										style="width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
							</li>
							<li class="footer"><a
								href="welcome"></a></li>
						</ul>

						<!-- Notifications: style can be found in dropdown.less -->
						<ul class="dropdown-menu">
							<li class="header"></li>
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 200px;">
									<ul class="menu"
										style="overflow: hidden; width: 100%; height: 200px;">
										<li></li>
									</ul>
									<div class="slimScrollBar"
										style="width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
							</li>
							<li class="footer"><a
								href="welcome">View
									all</a></li>
						</ul>

						<!-- Tasks: style can be found in dropdown.less -->
						<ul class="dropdown-menu">
							<li class="header"></li>
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 200px;">
									<ul class="menu"
										style="overflow: hidden; width: 100%; height: 200px;">
										<li>
											<!-- Task item --> <a
											href="welcome">
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
									<div class="slimScrollBar"
										style="width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(0, 0, 0);"></div>
									<div class="slimScrollRail"
										style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
								</div>
							</li>
							<li class="footer"><a
								href="welcome">View
									all tasks</a></li>
						</ul>

						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a
							href="welcome"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-user fa-lg"></i> <span class="hidden-xs">
									Tailor </span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="${pageContext.request.contextPath}/static/images/owner.png"
									class="img-circle" alt="User Image">
									<p>
										Tailor <small> Owner <br>10
										</small>
									</p></li>
								<!-- Menu Body -->
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a data-target="#user_profile" data-toggle="modal"
											class="btn btn-success btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a
											href="javascript:logOut();"
											class="btn btn-danger btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- =============================================== -->
		<!-- Left side column. contains the sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="margin-top: 10px; height: auto;">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="active"><a
						href="welcome"><i
							class="fa fa-dashboard"></i> <span>Owner Dashboard</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa-hdd-o"></i><span>My Account</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa-user"></i><span>Courses</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa-users"></i><span>Examination</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa-credit-card"></i><span>Attendance</span></a></li>
					<li class=""><a
						href=#><i
							class="fa fa-credit-card"></i><span>Fees</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa-wrench"></i><span>Hostel</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa fa-money"></i><span>Transport</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa fa-credit-card"></i><span>Library</span></a></li>
					<li class=""><a
						href="#"><i
							class="fa fa fa-credit-card"></i><span>Reports</span></a></li>		
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- =============================================== -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 818px;">
			<!-- Add the sidebar's background. This div must be placed
 immediately after the control sidebar -->
			<form id="updateprofile"
				action="#"
				method="post">
				<div class="modal fade" role="dialog" id="user_profile"
					aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								<h4 class="modal-title" id="gridSystemModalLabel">Update
									Your Profile</h4>
							</div>
							<div class="modal-body">
								<div align="center">
									<img class="photo_img_round"
										style="width: 100px; height: 100px;"
										src="${pageContext.request.contextPath}/static/images/owner.png">
								</div>
								<h4 align="center">Tailor</h4>
								<h4 align="center">Owner</h4>
								<div class="form-group">
									<label class="control-label">Name:&nbsp;&nbsp;</label> <input
										type="text" class="form-control" id="txtProfileName"
										name="txtProfileName" value="Tailor">
								</div>
								<div class="form-group">
									<label class="control-label">Email:&nbsp;&nbsp;</label> <input
										type="text" class="form-control" id="txtProfileEmail"
										name="txtProfileEmail" value="mark@yahoo.com">
								</div>
								<div class="form-group">
									<label class="control-label">Password:&nbsp;&nbsp;</label> <input
										type="text" class="form-control" id="txtProfilePassword"
										name="txtProfilePassword" value="123456">
								</div>
								<div
									style="color: orange; font-weight: bold; text-align: left; font-size: 15px;">After
									update application will be logout automatically.</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary"
									onclick="javascript:$(&#39;#updateprofile&#39;).submit();">Update</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<input type="hidden" name="user_id" value="6">
			</form>
			<!-- Content Header (Page header) -->

			<section class="content-header">
				<h1>
					Owner Dashboard<small>Control Panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a
						href="welcome"><i
							class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Home</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<!-- /.row start -->
				<div class="row home_dash_box">
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>1</h3>
								<p>My Account</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/owner.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>3</h3>
								<p>My Courses</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/owner.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>5</h3>
								<p>Examination</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/owner.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>24000.00$</h3>
								<p>My Fees</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/fund.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>3000$</h3>
								<p>Hostel</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/owner.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>Bus</h3>
								<p>Transport</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/owner.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>4</h3>
								<p>Library</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/room.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
					<!-- col start -->
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>10</h3>
								<p>Reports</p>
							</div>
							<div class="icon">
								<img height="80" width="80" src="${pageContext.request.contextPath}/static/images/report.png">
							</div>
							<a
								href="#"
								class="small-box-footer">More Info <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col end -->
				</div>
				<!-- /.row end -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.1
			</div>
			<strong>Copyright © 2016-2017 <a href="welcome">SMS.com</a></strong>
		</footer>
		<!-- /.control-sidebar -->
		<div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
	</div>
	<!-- ./wrapper -->
	<!-- Bootstrap 3.3.2 JS -->
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
	<!-- SlimScroll -->
	<script src="${pageContext.request.contextPath}/static/js/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- FastClick -->
	<script src="${pageContext.request.contextPath}/static/js/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath}/static/js/app.min.js" type="text/javascript"></script>
	<!-- Demo -->
	<script src="${pageContext.request.contextPath}/static/js/demo.js" type="text/javascript"></script>
	<!-- iCheck 1.0.1 -->
	<script src="${pageContext.request.contextPath}/static/js/icheck.min.js" type="text/javascript"></script>
	<!-- DATA TABES SCRIPT -->
	<script src="${pageContext.request.contextPath}/static/js/jquery.dataTables.min.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/dataTables.bootstrap.min.js"
		type="text/javascript"></script>
	<!-- iCheck 1.0.1 -->
	<script src="${pageContext.request.contextPath}/static/js/jquery.mask.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/common.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/dataTables.responsive.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/dataTables.tableTools.min.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap-datepicker.js"
		type="text/javascript"></script>
</body>
</html>