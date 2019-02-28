<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
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
		<html:form action="/userAction" method="get" style="width: 1000px; margin-left: 130px;">
		<div style="text-align: center;">
		<h2 ><b>Thêm Người Dùng</b></h2>
		<p style="color: red; font-style: italic;"><bean:write name="userForm" property="thongBao"/></p>
		</div>
		
  				<div class="row">
					<label class="col-25" for="fname">UserID</label>		
					<input class="col-75" type="text" id="fname" name="userID"
							placeholder="Vui lòng nhập userID" required="required" >
				</div>
				<div class="row">
					<label class="col-25" for="lname">Password</label>
					<input class="col-75" type="text" id="lname" name="password"
							placeholder="Vui lòng nhập password" required="required">
				</div>
				<div class="row">
					<label class="col-25" for="lname">Họ Tên</label>
					<input class="col-75" type="text" id="lname" name="hoTen"
							placeholder="Vui lòng nhập họ tên" required="required">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Ngày Sinh</label>
					<input class="col-75" type="text" id="lname" name="ngaySinh"
							placeholder="Vui lòng nhập ngày sinh" required="required">
							</div>
							<div class="row">
							<!-- radio gioi tinh -->
					<label class="col-25" for="lname">Giới Tính</label>
							<div  style="    margin-left: 65px; margin-top: 12px;"> 
							<input  type="radio" name="gioiTinh" value="Nam"> Nam
							<input  type="radio" name="gioiTinh" value="Nữ" style="margin-left: 20px;"> Nữ
							</div>
							<!-- end radio gioi tinh -->
							</div>
							
							<div class="row">
					<label class="col-25" for="lname">CMND</label>
					<input class="col-75" type="text" id="lname" name="cmnd"
							placeholder="Vui lòng nhập cmnd" required="required">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Điện Thoại</label>
					<input class="col-75" type="text" id="lname" name="dienThoai"
							placeholder="Vui lòng nhập điện thoại" required="required">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Email</label>
					<input class="col-75" type="text" id="lname" name="email"
							placeholder="Vui lòng nhập email" required="required">
							</div>
							<div class="row">
					<label class="col-25" for="lname">Quyền</label>
					<select name="maQuyen" style="margin-left: 65px">
					<option selected="selected" value="0">Người dùng</option>
					<option  value="1">Admin</option>
					</select></div><br>
							<div class="row">
				<input style="margin-left: 525px" type="submit" value="Thêm" name="them"> 
				<input style="margin-left: 15px" type="submit" value="Hủy" name="huy">
				</div>
		</html:form>
	</div>
</div>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				</div>

</body>

</html>
