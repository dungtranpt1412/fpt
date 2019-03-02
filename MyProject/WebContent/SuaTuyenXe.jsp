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
<link href="css/styleTSX.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Include MenuFrom -->
		<jsp:include page="MenuForm.jsp"></jsp:include>

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
<marquee><h1 style="color: blue;">Hệ Thống Quản Lý Vé Xe Khách</h1></marquee>
					<!-- Topbar Navbar -->
				</nav>
				<!-- Form sua -->
				<html:form style="width: 1000px; margin-left: 130px;"
					action="/tuyenXeAction" method="post">
					<h2 style="margin-left: 240px">
						<b>Sửa Tuyến Xe</b>
					</h2>
					<br>
					<div class="row">
						<label class="col-25" for="fname">Mã Tuyến</label>
						<html:text property="maTuyen" styleClass="col-75" styleId="fname"
							readonly="true" style="background: #e5dede;"></html:text>
					</div>
					<div class="row">
						<label class="col-25" for="lname">Tên Tuyến</label>
						<html:text property="tenTuyen" styleClass="col-75" styleId="fname"></html:text>
						<span style="color: red;margin: 17px;font-weight: bold;">*</span>
					</div>
					<div class="row">
						<label class="col-25" for="lname">Điểm đi</label>
						<html:text property="diemDi" styleClass="col-75" styleId="fname"></html:text>
						<span style="color: red;margin: 17px;font-weight: bold;">*</span>
					</div>
					<div class="row">
						<label class="col-25" for="lname">Điểm đến</label>
						<html:text property="diemDen" styleClass="col-75" styleId="fname"></html:text>
						<span style="color: red;margin: 17px;font-weight: bold;">*</span>
					</div>
					<div class="row">
						<label class="col-25" for="lname">Bảng giá</label>
						<html:text property="bangGia" styleClass="col-75" styleId="fname"></html:text>
						<span style="color: red;margin: 17px;font-weight: bold;">*</span>
					</div>
					<br>
					<div class="row">
						<input style="margin-left: 525px" type="submit" value="Sửa"
							name="sua"> <input style="margin-left: 15px"
							type="submit" value="Hủy" name="huy">
					</div>
				</html:form>
			</div>
			<!-- End of Topbar -->
		</div>
		<!-- Begin Page Content -->
	</div>

</body>

</html>