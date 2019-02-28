<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Hệ Thống Đặt Vé Xe Khách Online</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/agency.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Book ticket now</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="TrangChu">Trang Chủ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Hình Ảnh</a>
          </li>
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Thông Tin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="DangNhap">Đăng Nhập</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="DangKy">Đăng Ký</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To Our System!</div>
        <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="DangNhap">ĐẶT VÉ NGAY</a>
      </div>
    </div>
  </header>
  <!-- Services -->
  <!-- Portfolio Grid -->
  <section class="bg-light" id="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase" >Hình Ảnh</h2>
          <h3 class="section-subheading text-muted">Một Số Thông Tin Về Các Chuyến Xe</h3>
        </div>
      </div>  
      <div class="row">
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/sg.jpg" alt="">
          </a>
          <div class="portfolio-caption">
           <h6>Khởi hành từ: <span style="color: red">SÀI GÒN</span></h6><br>
            <p class="text-muted">Điểm đến: Cần Thơ, Cà Mau, Đà Lạt, Mũi Né, Nha Trang,...</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/dl.jpg" alt="Đà Lạt">
          </a>
          <div class="portfolio-caption">
            <h6>Khởi hành từ: <span style="color: red">ĐÀ LẠT</span></h6><br>
            <p class="text-muted">Điểm đến: Nha Trang, Đà Nẵng, Huế, Sài Gòn, Cần Thơ,...</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/nt.jpg" alt="Nha Trang">
          </a>
          <div class="portfolio-caption">
            <h6>Khởi hành từ: <span style="color: red">NHA TRANG</span></h6><br>
            <p class="text-muted">Điểm đến: Sài Gòn, Đà Lạt, Huế, Hà Nội, Đà Nẵng,...</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/dn.jpg" alt="Đà Nẵng">
          </a>
          <div class="portfolio-caption">
           <h6>Khởi hành từ: <span style="color: red">ĐÀ NẴNG</span></h6><br>
            <p class="text-muted">Điểm đến: Sài Gòn, Nha Trang, Hà Nội, Quảng Bình,...</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/h.jpg" alt="Huế">
          </a>
          <div class="portfolio-caption">
            <h6>Khởi hành từ: <span style="color: red">HUẾ</span></h6><br>
            <p class="text-muted">Điểm đến: Quảng Bình, Đà Nẵng, Vinh, Hà Nội,...</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/qb.jpg" alt="Quảng Bình">
          </a>
          <div class="portfolio-caption">
            <h6>Khởi hành từ: <span style="color: red">QUẢNG BÌNH</span></h6><br>
            <p class="text-muted">Điểm đến: Huế, Đà Nẵng, Sài Gòn, Hà Nội,...</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- About -->
  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">THÔNG TIN</h2>
          <h3 class="section-subheading text-muted">Những thông tin bạn cần biết!</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img" src="img/about/imgtt1.jpg" alt="Quy Định">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h5 class="subheading" style="color: #ff471a;"><i class="fa fa-hand-o-right"></i> NHỮNG QUY ĐỊNH CHUNG</h5>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Khuyến khích quý khách đặt chỗ trước nhằm đảm bảo luôn có vị trí ghế cho quý vị, tuy nhiên vẫn có thể đến tại bến để đi mà không cần gọi đặt chỗ. Quý khách hàng có thể mua vé bằng các hình thức linh hoạt nhưng vẫn đảm bảo...!</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img" src="img/about/imgtt2.jpg" alt="Vận Chuyển">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h5 class="subheading" style="color: #ff471a;"><i class="fa fa-hand-o-right"></i> VẬN CHUYẾN HÀNG HÓA</h5>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Mỗi khách hàng chỉ được mang theo 1 vali với kích thước trung bình và 1 túi hành lý với kích thước cỡ xách tay. Hành lý được chấp thuận bao gồm vali, túi vải, thùng với những khóa an toàn, mọi sự mất mát bên trong hành lý khi có khóa an toàn chúng tôi không chịu trách nhiệm...!</p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
               <img class="rounded-circle img" src="img/about/imgtt3.jpg" alt="Hành Lý">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h5 class="subheading" style="color: #ff471a;"><i class="fa fa-hand-o-right"></i> THÔNG TIN HÀNH LÝ</h5>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Để đảm bảo sự an toàn cho các hàng hóa vận chuyến và an toàn cho sự di chuyển của tất cả quý hành khách trên chuyến xe, quý hành khách có nhu cầu với dịch vụ vận chuyển hàng hóa vui lòng đọc kĩ các quy định liên quan đến hàng hóa cần vận chuyển bên dưới đây...!</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <h4>Be Part
                  <br>Of Our
                  <br>System!</h4>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Team -->
  <section class="bg-light" id="team">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
          <h3 class="section-subheading text-muted">Thông tin về đội ngũ!</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-5">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/dungta5.jpg" alt="DungTA5">
            <h5>DungTA5</h5>
            <p class="text-muted">Developer</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/dungntt14.jpg" alt="DungNTT14">
            <h5>DungNTT14</h5>
            <p class="text-muted">Developer</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/ngandt5.jpg" alt="NganDT5">
            <h5>NganDT5</h5>
            <p class="text-muted">Developer</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/nhungptm.jpg" alt="NhungPTM">
            <h5>NhungPTM</h5>
            <p class="text-muted">Developer</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/ducpt7.jpg" alt="DucPT7">
            <h5>DucPT7</h5>
            <p class="text-muted">Developer</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8 mx-auto text-center">
          <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
        </div>
      </div>
    </div>
  </section>



  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; 2N3D Team</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <!-- Portfolio Modals -->

  <!-- Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">SÀI GÒN</span></h2>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/sg.jpg" alt="Sài Gòn">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Cần Thơ, Cà Mau, Đà Lạt, Mũi Né, Nha Trang,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 2 -->
  <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">ĐÀ LẠT</span></h2>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/dl.jpg" alt="Đà Lạt">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Nha Trang, Đà Nẵng, Huế, Sài Gòn, Cần Thơ,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 3 -->
  <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                 <h3 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">NHA TRANG</span></h3>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/nt.jpg" alt="Nha Trang">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Sài Gòn, Đà Lạt, Huế, Hà Nội, Đà Nẵng,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 4 -->
  <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h3 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">ĐÀ NẴNG</span></h3>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/dn.jpg" alt="Đà Nẵng">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Sài Gòn, Nha Trang, Hà Nội, Quảng Bình,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 5 -->
  <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
               <h3 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">HUẾ</span></h3>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/h.jpg" alt="Huế">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Quảng Bình, Đà Nẵng, Vinh, Hà Nội,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 6 -->
  <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h3 class="text-uppercase"><i style="color:orange;" class="fa fa-bus"></i> KHỞI HÀNH TỪ: <span style="color: orange;">QUẢNG BÌNH</span></h3>
                <p class="item-intro text-muted">Thông tin chi tiết về chuyến xe.</p>
                <img class="img-fluid" src="img/portfolio/qb.jpg" alt="Quảng Bình">
                <p>*** Quý khách có thể đặt vé thông qua hệ thống phục vụ 24/24 của chúng tôi <i>(kể cả thứ 7 và Chủ Nhật)</i> một cách tiện lợi ngay trên chiếc điện thoại thông minh của quý vị thông qua website:<a href="TrangChu.jsp"><i style="color: green"> tại đây</i></a></p>
                <p>Các điểm đến: Huế, Đà Nẵng, Sài Gòn, Hà Nội,...</p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
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
