<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Academics &mdash; Website by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="assets/fonts/icomoon/style.css">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

<link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">

<link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="assets/css/aos.css">
<link href="assets/css/jquery.mb.YTPlayer.min.css" media="all"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="assets/css/style.css">


<style>
body>div.site-wrap>div:nth-child(6)>div>div>div>div:nth-child(2)>div {
	text-align: center;
}
</style>

</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<div class="py-2 bg-light">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-9 d-none d-lg-block">
						<a class="small mr-3"><span class="icon-phone2 mr-2"></span>
							검찰청1301/ 경찰청112/ 관세청125</a> <a class="small mr-3"><span
							class="icon-phone2 mr-2"></span> 중독재활센터 1899-0893</a>
					</div>
					<div class="row align-items-center">
						<C:if test="${result!=null}">
							<a class="small mr-3" style="float: right;"><span>
									${result.getEmail()}님 환영합니다.</span></a>
						</C:if>
						<C:if test="${result==null}">
							<a href="Gologin.do" class="small mr-3"><span
								class="icon-unlock-alt"></span> log in</a>
						</C:if>

						<!-- 누르면 페이지 이동 -->

						<C:if test="${result!=null}">
							<a href="Gomodify.do" class="small mr-3"><span
								class="icon-unlock-alt"></span> 개인정보수정</a>
						</C:if>
						<C:if test="${result==null}">
							<a href="Goregister.do"
								class="small btn btn-primary px-4 py-2 rounded-0"><span
								class="icon-users"></span> Register</a>
						</C:if>
						</a>

						<C:if test="${result!=null}">
							<a href="Logout.do" class="small mr-3" style="text-align: right;"><span
								class="icon-unlock-alt"></span>로그아웃</a>
						</C:if>
						<C:if test="${result==null}">
						</C:if>

					</div>

				</div>
			</div>
		</div>
	</div>


	<header class="site-navbar py-4 js-sticky-header site-navbar-target"
		role="banner">

		<div class="container">
			<div class="d-flex align-items-center">
				<div class="site-logo">
					<a href="Gomain.do" class="d-block"> <img
						src="images/logosmall.png" alt="Image" class="img-fluid">
					</a>
				</div>
				<div class="mr-auto">
					<nav class="site-navigation position-relative text-right"
						role="navigation">
						<ul
							class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
							<li><a href="Goknowledge_Board.do"
								class="nav-link text-left">지식채널</a></li>
							<li><a href="Goknowledge_Board.do#board"
								class="nav-link text-left">게시판</a></li>
							<li><a href="Goquiz.do" class="nav-link text-left">사례퀴즈</a>
							</li>
						</ul>
						</ul>
					</nav>

				</div>
				<div class="ml-auto">
					<div class="social-wrap">
						<a href="Gobreak.do"><span>체험</span></a> <a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>
					</div>
				</div>

			</div>
		</div>

	</header>


	<div class="site-section ftco-subscribe-1 site-blocks-cover pb-4"
		style="background-image: url('images/bg_4.jpg')">
		<div class="container">
			<div class="row align-items-end">
				<div class="col-lg-7">
					<h2 class="mb-0">회원 탈퇴</h2>
					<p>마약없는 우리사회, 건강가득 행복가득.</p>
				</div>
			</div>
		</div>
	</div>


	<div class="custom-breadcrumns border-bottom">
		<div class="container">
			<a href="Gomain.do">Main</a> <span
				class="mx-3 icon-keyboard_arrow_right"></span> <a href="Gomodify.do">개인정보수정</a>
			<span class="mx-3 icon-keyboard_arrow_right"></span> <span
				class="current">회원탈퇴</span>
		</div>
	</div>


	<form action="Unregister.do">
		<div class="site-section">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-12 form-group">
								<label for="email">EMAIL</label> <input type="text" name="email"
									class="form-control form-control-lg">
							</div>
							<div class="col-md-12 form-group">
								<label for="pword">PW</label> <input type="text" name="pw"
									class="form-control form-control-lg">
								<%
								String error = request.getParameter("error");
								if (error != null && error.equals("invalidCredentials")) {
								%>
								<p style="color: red;">아이디 또는 비밀번호가 잘못되었습니다.</p>
								<%
								}
								%>
							</div>
						</div>
						<div class="row">
							<div class="col-12" style="text-align: center;">
								<input type="submit" value="탈퇴하기"
									class="btn btn-primary btn-lg px-5">
							</div>
						</div>
					</div>
				</div>
	</form>



	</div>
	</div>



  

    <div class="footer">
      <div class="container" style="margin-top:60px;">
        <div class="row">
          <div class="col-lg-3" style="margin-bottom: 15px;">
            <p class="mb-4"><img src="images/logosmall.png" alt="Image" class="img-fluid"></p>
            <p style="margin-left: 50px; font-size: 19px; font-weight: bold;">강력 1팀</p> 
            <p style="margin-left: 15px; font-size: 17px;"> : 약하지 않은 사람들</p> 
            <p style="margin-left: 25px;">박범석 조원제 임혜지</p>  
            <p style="margin-left: 25px;">하동철 한명훈 함수연</p>  
          </div>
          <div class="col-lg-3">
           <p class="mb-4"></p>
            <h3 class="footer-heading" style="margin-top:80px;"><span>한국중독관리센터협회</span></h3>
            <ul class="list-unstyled">
                <li><a href="http://www.kaacc.co.kr/03_sub/page3_2.php">전국 센터 안내</a></li>
                <li><a href="http://www.kaacc.co.kr/03_sub/page3_3.php">관련 기관 안내</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
          <p class="mb-4"></p>
              <h3 class="footer-heading" style="margin-top:80px;"><span>중독재활센터</span></h3>
              <ul class="list-unstyled">
                  <li><a href="https://www.drugfree.or.kr/counsel/index.html?contentsNum=5&category=REFORM&headNum=1&seq=180&tpage=1">중독재활센터 안내</a></li>
                  <li><a href="https://www.drugfree.or.kr/counsel/index.html?contentsNum=5&category=CONSULT_2&seq=12017&tpage=1">상담 안내</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
          <p class="mb-4"></p>
            <h3 class="footer-heading" style="margin-top:80px;"><span>타산지석</span></h3>
            <ul class="list-unstyled" style="width: 500px;">
            	 <li><a href="https://youtu.be/n-ZmBnnadBU?si=wbOmKsLZYgqUw7xs">마약중독자들의 현상태</a></li>
                 <li><a href="https://www.youtube.com/watch?v=0_JfysDMFT4">마약을 끊지 못하는 이유</a></li>
                 <li><a href="https://www.youtube.com/watch?v=oNxq_FD2ph8">20대 마약중독자 인터뷰</a></li>
                 <li><a href="https://www.youtube.com/watch?v=JjO14D9fEwA">유명인 마약 중독 고백</a></li>
                 <li><a href="https://www.youtube.com/watch?v=pB91VeZD2wE">마약중독자 가족이 겪는 고통</a></li>
<!--               
				<li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li>
                <li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li>
                <li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li>
                <li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li>
                <li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li>
                <li style="color: #000;">시름시름시름시름시름시름시름시름시름시름</li> 
-->
            </ul>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                   
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>  ♥  <a href="https://www.spo.go.kr/site/spo/main.do" target="_blank" >마약 팔아요</a>♥
                   
                    </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    

  </div>

	<!-- loader -->
	<div id="loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#51be78" /></svg>
	</div>

	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="assets/js/jquery-ui.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/jquery.countdown.min.js"></script>
	<script src="assets/js/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/aos.js"></script>
	<script src="assets/js/jquery.fancybox.min.js"></script>
	<script src="assets/js/jquery.sticky.js"></script>
	<script src="assets/js/jquery.mb.YTPlayer.min.js"></script>




	<script src="assets/js/main.js"></script>

</body>

</html>