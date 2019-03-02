<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hệ Thống Đặt Vé Xe Khách Online</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- datve -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts -->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="css/cs-select.css">
<link rel="stylesheet" href="css/cs-skin-border.css">

<link rel="stylesheet" href="css/style1.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Hind:400,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap2.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style3.css" />
</head>

<body id="page-top">

	<!-- Navigation -->

	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">Book
			ticket online</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive"
			style="font-size: 300px;">
			<ul class="navbar-nav text-uppercase ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="TrangChu.jsp">Trang Chủ</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#portfolio1">Hướng Dẫn</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#portfolio">Hình Ảnh</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#about">Hãng Xe</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="DangKy">Đăng Xuất</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<!-- Header -->
	<header class="masthead">
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1 style="color: orange;">Đặt Vé</h1>
						</div>
						<html:form action="/timXeAction" method="get">
							<div class="row">
								<div class="col-md-6" style="margin-top: 5px;">
									<div style="font-size: 15px" class="form-group">
										<span class="form-label"><b> Nơi Đi:</b></span>
										<html:select  styleClass="form-control" property="diemDi" name="timXeForm">									
										<html:options name="timXeForm" property="lstDiemDi"/>
										</html:select>
										 <span class="select-arrow"
											style="color: black; padding-top: 5px;"></span>
									</div>
								</div>
								<div class="col-md-6">
									<div style="font-size: 15px" class="form-group">
										<span class="form-label"><b>Nơi Đến:</b></span>
										<html:select  styleClass="form-control" property="diemDen" name="timXeForm">									
										<html:options name="timXeForm" property="lstDiemDen"/>
										</html:select> <span class="select-arrow"
											style="color: black; padding-top: 5px;"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8" style="margin-left: 100px;">
									<div style="font-size: 15px" class="form-group">
										<span class="form-label"><b>Ngày Đi:</b></span> <input
											style="color: black; padding-top: 5px;" class="form-control"
											type="date"  name="ngayXuatPhat">
									</div>
								</div>

							</div>
							<div class="form-btn">
								<button class="submit-btn" style="background-color: green" name="timKiem" value="tim">Tìm
									Kiếm</button>
							</div>
						</html:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<br>
	<!-- Services -->
	<!-- Portfolio Grid -->
	<div id="divcacbuoc">
		<br>
		<h1 id="portfolio1" style="text-align: center;" class="title-green">4
			BƯỚC CƠ BẢN ĐỂ ĐẶT VÉ XE ONLINE</h1>
		<br>
		<div class="row">

			<div class="col-md-2" style="display: inline-block;">
				<div class="box-green" style="display: inline-block;">
					<img style="background-color: #0a8043;" src="img/service1.png">
					<span style="color: white;"><b>1.TÌM CHUYẾN ĐI</b></span>
				</div>
			</div>
			<div class="col-md-2" style="display: inline-block;">
				<div class="box-green" style="display: inline-block;">
					<img class="img-icon2" style="background-color: #0a8043;"
						src="img/service2.png"> <span style="color: white;"><b>2.CHỌN
							GHẾ</b></span>
				</div>
			</div>
			<div class="col-md-2" style="display: inline-block;">
				<div class="box-green" style="display: inline-block;">
					<img class="img-icon3" style="background-color: #0a8043;"
						src="img/service3.png"> <span style="color: white;"><b>3.NHẬP
							THÔNG TIN</b></span>
				</div>
			</div>
			<div class="col-md-2" style="display: inline-block;">
				<div class="box-green" style="display: inline-block;">
					<img class="img-icon4" style="background-color: #0a8043;"
						src="img/service4.png"> <span style="color: white;"><b>4.NHẬN
							VÉ</b></span>
				</div>
			</div>
		</div>
	</div>
	<section class="bg-light" id="portfolio">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Hình Ảnh</h2>
				<h3 class="section-subheading text-muted">Một Số Thông Tin Về
					Các Chuyến Xe</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal1">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/sg.jpg" alt="">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">SÀI GÒN</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Cần Thơ, Cà Mau, Đà Lạt, Mũi
						Né, Nha Trang,...</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal2">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/dl.jpg" alt="Đà Lạt">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">ĐÀ LẠT</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Nha Trang, Đà Nẵng, Huế, Sài
						Gòn, Cần Thơ,...</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal3">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/nt.jpg" alt="Nha Trang">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">NHA TRANG</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Sài Gòn, Đà Lạt, Huế, Hà Nội,
						Đà Nẵng,...</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal4">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/dn.jpg" alt="Đà Nẵng">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">ĐÀ NẴNG</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Sài Gòn, Nha Trang, Hà Nội,
						Quảng Bình,...</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal5">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/h.jpg" alt="Huế">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">HUẾ</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Quảng Bình, Đà Nẵng, Vinh, Hà
						Nội,...</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal"
					href="#portfolioModal6">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fas fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="img/portfolio/qb.jpg" alt="Quảng Bình">
				</a>
				<div class="portfolio-caption">
					<h6>
						Khởi hành từ: <span style="color: red">QUẢNG BÌNH</span>
					</h6>
					<br>
					<p class="text-muted">Điểm đến: Huế, Đà Nẵng, Sài Gòn, Hà
						Nội,...</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<div id="about">
		<div class="container">
			<h2 class="section-heading text-uppercase"
				style="font-size: 40px; margin-top: 0; margin-bottom: 15px; padding-top: 40px; text-align: center">Hãng
				Xe</h2>
			<h3 class="section-subheading text-muted"
				style="font-size: 16px; font-weight: 400; font-style: italic; margin-bottom: 75px; text-align: center">Một
				Số Thông Tin Về Các Hãng Xe</h3>
			<div class="row">
				<div class="col-md-12 partners">
					<img src="img/xe/0000342.png" class="first" alt="Nhà xe Việt Khánh">
					<img src="img/xe/0000305.png" class="first" alt="Nhà xe Phúc Lợi">
					<img src="img/xe/0000307.png" class="first" alt="Nhà xe Sao Việt">
					<img src="img/xe/0000310.png" class="first" alt="Nhà xe Anh Huy">
					<img src="img/xe/0000312.png" class="first"
						alt="Nhà xe Hoàng Phương"><br> <img
						src="img/xe/0000314.png" class="first" alt="Nhà xe Phú Quý">
					<img src="img/xe/0000326.png" class="first" alt="Nhà xe Hà Lan">
					<img src="img/xe/0000328.png" class="first" alt="Nhà xe Bảo Yến">
					<img src="img/xe/0000337.png" class="first"
						alt="Nhà xe X.e Việt Nam"> <img src="img/xe/0000342.png"
						class="first" alt="Nhà xe Việt Khánh"><br> <img
						src="img/xe/0000344.png" class="first" alt="Nhà xe Việt Thanh">
					<img src="img/xe/0000345.png" class="first" alt="Nhà xe Hoàng Long">
					<img src="img/xe/0000346.png" class="first"
						alt="Nhà xe Phiệt Học Số 5"> <img src="img/xe/0000347.png"
						class="first" alt="Nhà xe Tôn Thắng"> <img
						src="img/xe/0000330.png" class="first" alt="Nhà xe Việt Bus">
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div id="divcacbuoc">
		<div class="bg-greyer screen_pc_display">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="box-icon">

							<img class="box-icon-img" src="img/icon/icon1.png">
						</div>
						<h3 class="titleIcon">Đảm bảo giá tốt nhất</h3>

					</div>
					<div class="col-md-3">
						<div class="box-icon">
							<img class="box-icon-img" src="img/icon/icon2.png">
						</div>
						<h3 class="titleIcon">Đặt vé dễ dàng</h3>

					</div>
					<div class="col-md-3">
						<div class="box-icon">
							<img class="box-icon-img" src="img/icon/icon3.png">
						</div>
						<h3 class="titleIcon">Chăm sóc khách hàng 24/7</h3>

					</div>
					<div class="col-md-3">
						<div class="box-icon">
							<img class="box-icon-img" src="img/icon/icon4.png">
						</div>
						<h3 class="titleIcon">Sự hài lòng của khách hàng</h3>

					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer -->
	<div class="footer">
		<span class="copyright">Copyright &copy; 2N3D Team</span>
	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

</body>

</html>
