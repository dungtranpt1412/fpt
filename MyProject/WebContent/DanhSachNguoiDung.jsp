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
							<div class="input-group-append">
<script>
								function myFunction() {
									var input, filter, table, tr, td, i, txtValue, comboBox;
									comboBox = document
											.getElementById("mySelect").selectedIndex;
									input = document.getElementById("myInput");
									filter = input.value.toUpperCase();
									table = document
											.getElementById("dataTable");
									tr = table.getElementsByTagName("tr");
									for (i = 0; i < tr.length; i++) {
										td = tr[i].getElementsByTagName("td")[comboBox];
										if (td) {
											txtValue = td.textContent
													|| td.innerText;
											if (txtValue.toUpperCase().indexOf(
													filter) > -1) {
												tr[i].style.display = "";
											} else {
												tr[i].style.display = "none";
											}
										}
									}
								}
							</script>
							<input class="form-control bg-light border-0 small" type="text" id="myInput" onkeyup="myFunction()"
								placeholder="Search for ..." > 
								<select class="form-control" style="width: 50%;margin-left: 20px;"
								id="mySelect">
								<option>UserID</option>
								<option>Password</option>
								<option>Họ Tên</option>
								<option>Ngày Sinh</option>
								<option>Giới Tính</option>
								<option>CMND</option>
								<option>Điện Thoại</option>
								<option>Email</option>
								<option>Mã Quyền</option>
							</select>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">



					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h3 class="m-0 font-weight-bold text-primary">Danh sách người dùng</h3>
							<p style="color: red; font-style: italic;"><bean:write name="userForm" property="thongBao"/></p>
							<div class="col-lg2 pull-right">
								<html:link styleClass="btn btn-primary" action="/userAction?action=them">Thêm mới</html:link>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>UserID</th>
											<th>Password</th>
											<th>Họ Tên</th>
											<th>Ngày Sinh</th>
											<th>Giới Tính</th>
											<th>CMND</th>
											<th>Điện Thoại</th>
											<th>Email</th>
											<th>Mã Quyền</th>
											<th>Tùy Chỉnh</th>
										</tr>
									</thead>
									
									<tbody>
									<logic:iterate id="un" name="userForm" property="lstUser">
										<tr>
											<td><bean:write name="un" property="userID"/></td>
											<td><bean:write name="un" property="password"/></td>
											<td><bean:write name="un" property="hoTen"/></td>
											<td><bean:write name="un" property="ngaySinh"/></td>
											<td><bean:write name="un" property="gioiTinh"/></td>
											<td><bean:write name="un" property="cmnd"/></td>
											<td><bean:write name="un" property="dienThoai"/></td>
											<td><bean:write name="un" property="email"/></td>
											<td><bean:write name="un" property="maQuyen"/></td>
											<td>
											<bean:define id="id" name="un" property="userID"></bean:define>
											<html:link action="/userAction?userID=${id}&action=sua">
						                		<i class="fa fa-edit"></i>
						                		</html:link>
						                		<html:link action="/userAction?userID=${id}&action=xoa">
						                		<i class="fa fa-trash" style="margin-left: 5px;"></i>
						                		</html:link>
											</td>
										</tr>
									</logic:iterate>
									</tbody>
								</table>
								<div class="row">
									<div class="col-sm-12 col-md-5">
										<div class="dataTables_info" id="dataTable_info" role="status"
											aria-live="polite">Showing 1 to 1 of 1 entries</div>
									</div>
									<div class="col-sm-12 col-md-7">
										<div class="dataTables_paginate paging_simple_numbers"
											id="dataTable_paginate">
											<ul class="pagination">
												<li class="paginate_button page-item previous disabled"
													id="dataTable_previous"><a href="#"
													aria-controls="dataTable" data-dt-idx="0" tabindex="0"
													class="page-link">Previous</a></li>
												<li class="paginate_button page-item active"><a
													href="#" aria-controls="dataTable" data-dt-idx="1"
													tabindex="0" class="page-link">1</a></li>
												<li class="paginate_button page-item next disabled"
													id="dataTable_next"><a href="#"
													aria-controls="dataTable" data-dt-idx="2" tabindex="0"
													class="page-link">Next</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; 2N3D Team</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
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
</body>

</html>
