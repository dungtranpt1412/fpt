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
<link type="text/css" rel="stylesheet" href="css/cv.css" />
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
					<div id="dvSearchTicket" class="ticket-search-filter ">
						<div class="container desktop-route-search hidden-xs hidden-sm">
							<html:form styleId="searchForm" styleClass="form-inline" action="/timXeAction" method="get">
								<div style="color: black;"  class="form-group">
									<span role="status" aria-live="polite"
										class="ui-helper-hidden-accessible"></span>
							
										<html:select  styleClass="form-control" property="diemDi" name="timXeForm">									
										<html:options name="timXeForm" property="lstDiemDi"/>
										</html:select> 
								</div>
								<div class="form-group hidden-xs">
									<a href="#" class="switchButton">⇌</a>
								</div>
								<div style="color: black;"  class="form-group">
									<span role="status" aria-live="polite"
										class="ui-helper-hidden-accessible"></span>
										
										<html:select  styleClass="form-control" property="diemDen" name="timXeForm">									
										<html:options name="timXeForm" property="lstDiemDen"/>
										</html:select> 
										
								</div>
								<div style="color: black;"  class="form-group departDate-fg">
									<i class="fa fa-caret-left" id="mbtPrevDate"
										style="display: none;"></i> <i class="fa fa-caret-right"
										id="mbtNextDate"></i> <input id="departDate" 
										name="ngayXuatPhat" type="date"
										class="date calendar-search hasDatepicker" 
										value="<bean:write name="timXeForm" property="ngayXuatPhat"/>">
										
									<div
										class="form-group quick-date-select fr hidden-xs hidden-sm">
										<button id="btToday" type="button"
											class="fl btn btn-gray btn-today">Hôm nay</button>
										<button id="btTomorrow" type="button"
											class="fl btn btn-gray btn-tomorrow">Ngày mai</button>
									</div>
								</div>
								<div class="form-group pull-right">
									<button id="searchSubmit" name="timKiem" value="tim" type="submit"
										class="submit-btn btn  search-btn" tabindex="4">Tìm
										Vé</button>
								</div>
							</html:form>
						</div>
						<div class="mobi-display hidden-ms" style="display: none;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<br>

	<!-- Services -->
	<!-- Portfolio Grid -->
	<div id="dvSearchFilter" class="dvSearchFilter col-12 col-md-12 col-xs-12" style="height: 50px;">
		<div class="container filter-container">
			<ul class="filter-lg hidden-xs">
				<li class="hidden-xs filter-title-list">Sắp xếp tuyến đường
					theo:</li>
				<li class="td-rate-filter giave-order dropdown"><a href="#"
					class="dropdown-toggle filter-label" data-toggle="dropdown">Giờ
						đi</a></li>
				<li class="td-fare-filter giave-order dropdown"><a href="#"
					class="dropdown-toggle filter-label" data-toggle="dropdown">Giá
						vé</a></li>
			</ul>
		</div>
	</div>
	<!-- Cac hãng xe tương ứng -->
	<div class="chieucao" style="display: block;height: 100%" >
	<logic:iterate id="vChuyenXe" property="lstVChuyenXe" name="timXeForm">
		<!-- chuyến xe thứ nhất  -->
		<div class="chieucaoxe" id="replaceDiv">
			<div id="searchResults">
				<ul class="result-list">
					<li class="result-item col-12 col-md-12 col-xs-12">
						<div class="container">
							<div class="hidden-xs">
								<div class="col-2 col-md-2 col-sm-3 col-xs-2">
									<div class="row">
										<div class="pull-left comp-name-container">
											<h6 class="mt0 mb10 comp-name-title  text-gray3"
												title="<bean:write name="vChuyenXe" property="tenNhaXe"/>">
												<i style="font-size: 20px" class="fas fa-bus"></i> <b
													style="font-size: 20px"><bean:write name="vChuyenXe" property="tenNhaXe"/></b>
													
											</h6>
											<div class="col-lg-12 service-plus-in hidden-xs">
												<img src="img/xe/1.png"
													style="width: 100px; height: 70px">
											</div>
										</div>
	
									</div>
								</div>
								<div
									class="col-4 col-md-5 col-lg-4 col-sm-3 col-xs-4 hidden-xs detail-route">
									<div class="col-12 ml10"
										style="margin-top: 20px; font-size: 20px">
										<div class="col-5 col-md-5 col-sm-12 text-left-from">
											<h6 class="span-from-time mt0 mb5"
												><bean:write name="vChuyenXe" property="gioDi"/></h6>
										</div>
										<div class="col-5 col-md-5 col-sm-12 text-left-to">
											<h6 style="margin-left: 30px;"
												class="span-to-time-mobi mt0 mb5 text-gray3"
												><bean:write name="vChuyenXe" property="gioDen"/></h6>
										</div>
										<img src="img/xe/CV_trip.png"
											style="margin-left: 80px; width: 80px">
										<div class="pull-left hidden-sm" style="width: 100%;">
											<div class="col-5 col-md-5 col-sm-5 text-left"
												style="margin-left: -10px;">
												<a
													class="depart-station ticket-detail-tab-link text-route-link hover-orange-border hover-blue-text"
													style="color: #333"
													href="#"> <b><bean:write name="vChuyenXe" property="diemDi"/></b>
												</a>
											</div>
											<div
												class="col-2 col-md-2 col-sm-2 hidden-xs hidden-sm payoo-mt2 total-time-text"></div>
											<div class="col-5 col-md-5 col-sm-5 payoo-mt2 text-left"
												style="margin-left: 10px;">
												<a
													class="destination-station ticket-detail-tab-link text-route-link hover-orange-border hover-blue-text"
													style="color: #333">
													<b><bean:write name="vChuyenXe" property="diemDen"/></b>
												</a>
											</div>
										</div>
										<ul class="busInfo hidden-sm mt15">
										</ul>
									</div>
								</div>
	
								<div class="col-2 col-md-2 col-sm-3 col-xs-2"
									style="margin-top: 20px;">
									<div class="vehicle-type-p mb3 text-left text-gray3"
										data-value="" style="margin-bottom: 3px !important">
										Giường nằm <b>20</b> chỗ
									</div>
									<div class="clearfix"></div>
									<div class="service-call seats-text text-left mt15"
										style="margin-left: 20px">
										<span
											class="v2GgIxMyICMDAqCUhPQU5HTE9ORzoKMDEtMDMtMjAxOUgYUA-oAYMGyAEH0gEQMjAxOS0wMy0wMSAxMzowMNgB0IYD4AEK6gEBMfoBAzkzMIACGYoCCjIwMTktMDMtMDGSAgUxMzowMJgC8OYXoAIAqAKCAbACAA"><b>10</b></span>
										Ghế trống
									</div>
								</div>
								<div class="col-2 col-md-2 col-sm-3 col-xs-2"
									style="margin-top: 20px;">
	
									<div class="clearfix"></div>
									<div class="service-call seats-text text-left mt15">
										<span
											class="v2GgIxMyICMDAqCUhPQU5HTE9ORzoKMDEtMDMtMjAxOUgYUA-oAYMGyAEH0gEQMjAxOS0wMy0wMSAxMzowMNgB0IYD4AEK6gEBMfoBAzkzMIACGYoCCjIwMTktMDMtMDGSAgUxMzowMJgC8OYXoAIAqAKCAbACAA">
											<b><bean:write name="vChuyenXe" property="bangGia"/></b></span>đ
									</div>
								</div>
								<div class=" pr0 col-md-3 ">
									<br>
	
	
									<p>
										<a id="a-01032019-01300430" style="margin-top: -50px;"
											class="ticket-ac-btn btn-vxr-lg btn pull-right w100 hasSeat closed a-v2GgIxMyICMDAqCUhPQU5HTE9ORzoKMDEtMDMtMjAxOUgYUA-oAYMGyAEH0gEQMjAxOS0wMy0wMSAxMzowMNgB0IYD4AEK6gEBMfoBAzkzMIACGYoCCjIwMTktMDMtMDGSAgUxMzowMJgC8OYXoAIAqAKCAbACAA  online-button link-white"
											href="#01032019-01300430" title="Nhấp để đặt vé"
											onclick="ga('send', 'event', 'Đặt vé', 'click')">Chọn chỗ</a>
	
									</p>
								</div>
							</div>
	
						</div>
					</li>
				</ul>
			</div>
		</div>
		</logic:iterate>
		<div class="bus-preloader"  style="display: inline-block; width:100%; height: 100%;min-height: 200px;margin: 0em">
            <div class="preloader_horizontal">
                <div class="animate_element">
                    <div class="animate_bus"></div>
                   <marquee scrollamount="5" behavior="scroll" direction="right" style="margin-top: 40px; z-index: 2;padding-top: 10px;">
      <img src="img/xe/1.png" width="250" height="60" alt="W3docs" />
    </marquee>
                </div>
            </div>
            <div class="road">
                <span>Lộ trình</span>
            </div>
        </div>
	<div  id="divcacbuoc" class="container-fluid" style="display: inline-block; height: 100%;min-height: 200px;margin: 0em">
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
