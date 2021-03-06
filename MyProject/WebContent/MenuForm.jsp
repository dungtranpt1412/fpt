<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản lý hệ thống</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="#">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Chào Admin</div>
			</a>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Quản lý</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="userAction.do"> <i class="fas fa-fw fa-user"></i> <span>Người
						Dùng</span>
			</a></li>
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="taiXeAction.do"> <i class="fas fa-fw fa-user"></i> <span>Tài
						Xế</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link"
				href="chuyenXeAction.do"> <i class="fas fa-fw fa-wrench"></i> <span>Chuyến
						Xe</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="tuyenXeAction.do"
				data-target="#collapseUtilities" aria-expanded="true"
				aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Tuyến Xe</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="xeAction.do"> <i class="fas fa-fw fa-bus"></i> <span>Xe</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="fas fa-fw fa-sticky-note"></i> <span>Thống Kê</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-arrow-right"></i> <span>Đăng Xuất</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
	</div>
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
