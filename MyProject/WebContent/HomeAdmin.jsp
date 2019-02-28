<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản Lý Hệ Thống</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/templatemo_misc.css">
<link rel="stylesheet" href="css/templatemo_style.css">
<!-- table -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="css/style.css" /> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap core CSS -->
<link href="./css/style1.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="./css/style1.css" rel="stylesheet">
</head>
<body>
	<div class="responsive-navigation visible-sm visible-xs">
		<a href="#" class="menu-toggle-btn"> <i class="fa fa-bars fa-2x"></i>
		</a>

	</div>

	<div id="main-sidebar" class="hidden-xs hidden-sm"
		style="font-size: 1.5rem">
		<div class="logo">
			<a href="TrangChu.jsp"><h1>
					Quản Lý <br>Hệ Thống
				</h1></a> <span></span>
		</div>

		<ul class="main-menu">
			<li class="home"><a href="TrangChu.jsp">Quản lý người dùng</a></li>
			<li class="about"><a href="ChuyenXe">Quản lý chuyến xe</a></li>
			<li class="services"><a href="TuyenXe">Quản lý tuyến xe</a></li>
			<li class="portfolio"><a href="TaiXe">Quản lý tài xế</a></li>
			<li class="contact"><a href="VeXe">Quản lý vé xe</a></li>
			<li class="contact"><a href="Xe">Quản lý xe</a></li>
			<li class="contact"><a href="DangXuat">Đăng Xuất</a></li>
		</ul>
	</div>
	<div id="main-content">

		<div id="templatemo">
			<div class="main-slider">
				<div class="flexslider">
					<ul class="slides">

						<li><img src="img/h.jpg" alt="Slide 1"></li>

						<li><img src="img/nt.jpg" alt="Slide 2"></li>

						<li><img src="img/dl.jpg" alt="Slide 3"></li>

					</ul>
				</div>
			</div>
<div class="container">
		<div class="row">
		<h1 style="text-align: center">Danh Sách Người Dùng</h1>
			<form action="#" method="get">
				<div class="col-lg-2 pull-right">
					<a class="btn btn-primary" href="ThemSinhVienServlet" role="button">Thêm
						mới</a>
				</div>
			</form>
		</div>
		<br>
		<div class="bs-example">
			<table class="table table-striped">
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
						<th></th>
						
					</tr>
				</thead>
				<tbody>

					<tr>
						<th scope="row">12123</th>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td>123123</td>
						<td><a href="SuaSinhVienServlet?msv="><span
								class="glyphicon glyphicon-edit"></span></a> 
							<a href="XoaSinhVienServlet?msv=" style="margin-left: 30px;"><span
								class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
			<!-- JavaScripts -->
			<script src="js/jquery-1.10.2.min.js"></script>
			<script src="js/jquery.singlePageNav.js"></script>
			<script src="js/jquery.flexslider.js"></script>
			<script src="js/jquery.prettyPhoto.js"></script>
			<script src="js/custom.js"></script>
			<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto({hook: 'data-gal'});
		});

        function initialize() {
          var mapOptions = {
            zoom: 13,
            center: new google.maps.LatLng(40.7809919,-73.9665273)
          };

          var map = new google.maps.Map(document.getElementById('map-canvas'),
              mapOptions);
        }

        function loadScript() {
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
              'callback=initialize';
          document.body.appendChild(script);
        }

        window.onload = loadScript;
    </script>
			<!-- templatemo 394 sonic -->
</body>
</html>