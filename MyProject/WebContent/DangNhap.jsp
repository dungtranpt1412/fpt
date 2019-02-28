<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng nhập hệ thống</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Space Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- css files -->

<!-- Online-fonts -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese"
	rel="stylesheet">
<!-- //Online-fonts -->
</head>
<body>
	<div class="main">
		<div class="main-w3l">
			<div class="w3layouts-main">
				<h2>
					<span>Đăng Nhập</span>
				</h2>
				<html:form action="/dangNhap" method="post">
					<input placeholder="Tài Khoản" name="userID" type="text"
						required=""> <input placeholder="Mật Khẩu" name="password"
						type="password" required=""> <input type="submit"
						value="Đăng nhập" name="submit">
				</html:form>
				<p style="color: red; font-style: italic;"><bean:write name="userDNForm" property="thongBao"/></p>
				<br><a href="/dangKy" style="color: white;">Đăng ký tài khoản?</a>
			</div>
		</div>
		
	</div>
</body>
</html>
