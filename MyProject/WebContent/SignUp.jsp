<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<title>Đăng ký thành viên</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/styleLogOut.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>
<body>
<h1 class="w3ls">Đăng Ký</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">BOOK TICKET ONLINE</h2>
		<p class="agileits2">Đăng ký thành viên</p>
	</div>
	<div class="content-agile2" style="padding-bottom: 20px" >
		<form action="SignUp" method="get">
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="userID" placeholder="UserID" title="Vui lòng nhập UserID" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password" placeholder="Mật Khẩu" id="password1" required="">
			</div>	

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="repassword" placeholder="Nhập lại mật khẩu" id="password2" required="">
			</div>			
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="hoTen" placeholder="Họ Tên" title="Vui lòng nhập họ tên" required="" >
			</div>
			<div class="form-control w3layouts">	
				<input type="date" id="email" name="ngaySinh" placeholder="Ngày Sinh" title="Vui lòng nhập ngày sinh" required="">
			</div>
			
			<div class="form-control w3layouts" id ="gioitinh">	
				Giới tính <input style="margin-left: 50px" type="radio" name="txtGioiTinh" value="Nam"> Nam
				<input type="radio" name="txtGioiTinh" value="Nữ"> Nữ
			</div>
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="cmnd" placeholder="CMND" title="Vui lòng nhập CMND" required="">
			</div>
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="sdt" placeholder="SĐT" title="Vui lòng nhập SĐT" required="">
			</div>
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="email" placeholder="Email" title="Vui lòng nhập Email" required="">
			</div>
			<input type="submit" class="register" value="Đăng ký" name="signUp">
		</form>
		<%if(request.getAttribute("ktt")!=null){
		int ktt=(int)request.getAttribute("ktt");
		if(ktt==0){%>
			<p style="color: red; padding-left: 150px;padding-top: -20px;">Tài khoản đã tồn tại</p><br>
		<%}else if(ktt==-1){ %>
			<p style="color: red">Đăng ký thất bại</p>
			<%}else if(ktt==2){%>
				<p style="color: red">Mật khẩu không giống nhau</p>
			<%}else if(ktt==3){%>
			<p style="color: red">Vui lòng nhập đầy đủ thông tin</p>
			<%}} %>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
		</script>
		
		<ul class="social-agileinfo wthree2">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>

</body>
</html>