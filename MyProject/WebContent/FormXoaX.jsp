<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/styleTSX.css" rel="stylesheet" type="text/css">

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
				href="index.html">
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
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-user"></i> <span>Người Dùng</span>
			</a></li>
			<hr class="sidebar-divider">


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-user"></i> <span>Tài Xế</span>
			</a></li>
<hr class="sidebar-divider">
			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Chuyến Xe</span>
			</a></li>

			<!-- Divider -->

			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Tuyến Xe</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-bus"></i> <span>Xe</span>
			</a></li>
			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-sticky-note"></i> <span>Thống Kê</span>
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
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
					<!-- Topbar Navbar -->
				</nav>
				<!-- Form thêm -->
		<form style="width: 1000px; margin-left: 130px;" action="khachhang" method="get">
		<h2 style="margin-left: 240px"><b>Xóa Xe</b></h2><br>
  				<div class="row">
					<label class="col-25" for="fname">Mã Xe</label>		
					<input class="col-75" type="text" id="fname" name="txtmakh"
							placeholder="Vui lòng nhập mã xe" readonly="readonly">
				</div>
				<div class="row">
					<label class="col-25" for="lname">Tên Xe</label>
					<input class="col-75" type="text" id="lname" name="txttenkh"
							placeholder="Vui lòng nhập tên xe" readonly="readonly">
				</div>
				<div class="row">
					<label class="col-25" for="lname">Biển Số</label>
					<input class="col-75" type="text" id="lname" name="txtdiachi"
							placeholder="Vui lòng nhập biển xe" readonly="readonly">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Số Ghế</label>
					<input class="col-75" type="text" id="lname" name="txtsdt"
							placeholder="Vui lòng nhập số ghế" readonly="readonly">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Mã Loại Xe</label>
					<input class="col-75" type="text" id="lname" name="txtemail"
							placeholder="Vui lòng nhập mã loại xe" readonly="readonly">
							</div>
						<br>
							<div class="row">
				<input style="margin-left: 525px" type="submit" value="Xóa" name="Xoa"> 
				<input style="margin-left: 15px" type="submit" value="Hủy" name="Huy">
				</div>
		</form>
	</div>
				<!-- End of Topbar -->
</div>
				<!-- Begin Page Content -->
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
