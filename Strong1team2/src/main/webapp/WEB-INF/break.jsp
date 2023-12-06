<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
  <style>
    
    /* ======== style ======== */
     #imageInput{
      font-size: 20px;
      font-weight: bold;
      width: 100px;
      border: none;

    }
    .imageContainer{
      width: 500px; 
      height: 500px; 
      margin: 10px;
      border: 2px solid black;
      background-color: rgb(151, 150, 150, 0.3);
    }
    #uploadForm > button{
      font-size: 20px;
      font-weight: bold;
      margin-left: 20px;
      border: none;
      width: 100px;
      height: 38px;
    }
    
    body > header {
    background-color: white;
    
    
    }
    
    
    
    
                    html {
                        animation-name: shake;
                        animation-duration: 60ms;
                        animation-timing-function: ease-in-out;
                        animation-iteration-count: 190;
                        animation-delay: 6.5s;
                    }

                    body {
                        animation-name: shake-little;
                        animation-duration: 60ms;
                        animation-timing-function: ease-in-out;
                        animation-iteration-count: 245;
                        animation-delay: 3s;
                    }
                    .intro-section {
                        overflow: visible;
                        animation: 1000s fall-header ease-out 8.5s;
                    }
                    .site-section {
                        animation: 1000s fall-subject linear 7s;
                        z-index: 2000;
                    }
                    .section-bg.style-1  {
                        animation: 1000s fall-paging linear 6s;
                        z-index: 2000;
                    }
                    .footer {
                        animation: 1000s fall-paging linear 6s;
                        z-index: 2000;
                    }
            #popup {
            display: none;
            position: fixed;
            width: 550px;
            height: 500px;
            text-align: center;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: rgb(0, 0, 0);
            border: none;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 3000;
        }
        #popup button {
        background-color: #ffffff; /* 원하는 버튼 배경 색상으로 조절 */
        color: rgb(0, 0, 0); /* 버튼 텍스트 색상 조절 */
        border: none;
        border-radius: 1em;
        margin-top: 20px;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        }

    

    </style>
    
<head>
   <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
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
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="assets/css/style.css">

<link rel="icon" type="image/png" sizes="16x16"
	href="assets/images/favicon.png">
<title>Adminmart Template - The Ultimate Multipurpose admin
	template</title>
<link href="assets/extra-libs/c3/c3.min.css" rel="stylesheet">
<link href="assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
<link href="assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<link href="assets/dist/css/style2.css" rel="stylesheet">
<link href="assets/libs/morris.js/morris.css" rel="stylesheet">


</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

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
            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 신고 : 검찰청1301/ 경찰청112/ 관세청125</a> 
            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 중독재활센터 1899-0893</a> 
          </div>
          <div class="col-lg-3 text-right">
            <a href="Gologin.do" class="small mr-3"><span class="icon-unlock-alt"></span> Log In</a>
            <a href="Goregister.do" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner" style="background-color: white;">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="Gomain.do" class="d-block">
              <img src="images/logosmall.png" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li>
                  <a href="Goknowledge_Board.do" class="nav-link text-left">지식채널</a>
                </li>
                <li>
                  <a href="Goknowledge_Board.do#board" class="nav-link text-left">게시판</a>
                </li>
                <li>
                  <a href="Goquiz.do" class="nav-link text-left">사례퀴즈</a>
                </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <div class="social-wrap">
              <a href="Gobreak.do"><span>체험</span></a>
  

              <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
            </div>
          </div>
         
        </div>
      </div>

    </header>

    
   <div class="intro-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12 mx-auto text-center">

					<h1 style="font-size: 100px; margin-bottom: 35px;">인생 똑바로 살아라 </h1><br><h1> 이렇게 되기 싫으면</h1><br>
					<h4>▼ 마약은 필터 로만 하세요 ▼</h4>
					
					<div
						style="display: flex; justify-content: center; align-items: center; text-align: center;">
						<div id="image_container" class="imageContainer">
							<img src="images/beforefilter.png" alt="Image" class="img-fluid" style="width: 240px; height: 500px;">
						</div>
						<div style="font-size: 50px; margin: 0 20px;">▶</div>
						<div id="resultImageContainer" class="imageContainer">
						<img src="images/afterfilter.png" alt="Image" class="img-fluid" style="width: 450px; height: 500px;">
							<!-- Display transformed image here -->
						</div>
					</div>
					<div
						style="display: flex; justify-content: left; margin-left: 20px;">
						<form id="uploadForm" action="/upload" method="post"
							enctype="multipart/form-data">
							<!-- 파일 선택 버튼 -->
							<input type="file" name="image" id="imageInput"
								onchange="setThumbnail(event);">
							<!-- upload 버튼 -->
							<button type="button" onclick="uploadImage()">Filter</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
    

    <div></div>

 <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>대시보드</span>
            </h2>
          </div>
        </div>
        
        	<div class="row" style="justify-content: center;">
					<div class="row4">
						<div class="card-group">
							<div class="card border-right">
								<div class="card-body">
									<div class="d-flex d-lg-flex d-md-block align-items-center">
										<div>
											<div class="d-inline-flex align-items-center">
												<h2 class="text-dark mb-1 font-weight-medium">20230건       </h2>

												<span
													class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">전년도
													대비 + 47.58%</span>
											</div>
											<h6
												class="text-muted font-weight-normal mb-0 w-100 text-truncate">
												마약 단속현황 (2023.01-2023.9)</h6>
										</div>
										<div class="ml-auto mt-md-3 mt-lg-0">
											<span class="opacity-7 text-muted"></span>
										</div>
										<!-- <i data-feather="user-plus"></i> -->
									</div>
								</div>
							</div>

							<div class="card border-right">
								<div class="card-body">
									<div class="d-flex d-lg-flex d-md-block align-items-center">
										<div>
											<div class="d-inline-flex align-items-center">
												<h2 class="text-dark mb-1 font-weight-medium">910건       </h2>
												<span
													class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">전년도
													대비 + 155.62%</span>
											</div>
											<h6
												class="text-muted font-weight-normal mb-0 w-100 text-truncate">
												10대 마약 단속 현황 (2023.01-2023.09)</h6>
										</div>
										<div class="ml-auto mt-md-3 mt-lg-0">
											<span class="opacity-7 text-muted">
											</span>
										</div>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-body">
									<div class="d-flex d-lg-flex d-md-block align-items-center">
										<div>
											<h2 class="text-dark mb-1 font-weight-medium">Asia</h2>
											<h6
												class="text-muted font-weight-normal mb-0 w-100 text-truncate">마약범죄
												발생률 1위</h6>
										</div>
										<div class="ml-auto mt-md-3 mt-lg-0">
											<span class="opacity-7 text-muted"><i data-feather="globe"></i></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- *************************************************************** -->
						<!-- End First Cards -->
						<div class="row3">
							<div class="row2">
								<div class="row1">
									<div class="hj" style="width: 400px; height: 450px;">
										<div class="card" style="width: 400px; height: 450px;">
											<div class="card-body" style="width: 400px; height: 450px;">
												<h4 class="card-title text-black">직업별 단속내역<h6> (2014.01-2023.09)</h6></h4>
												<div>
													<canvas id="polar-chart" width="3000px" height="3000px"></canvas>
												</div>
											</div>
										</div>
									</div>
									<div class="hj" style="width: 460px; height: 450px;">
										<div class="card" style="width: 460px; height: 450px;">
											<div class="card-body" style="width: 460px; height: 450px;">
												<h4 class="card-title text-black">연령별 단속내역<h6> (2014.01-2023.09)</h6></h4>
												<div class="net-income mt-4 position-relative"
													style="height: 300px;"></div>
												<ul class="list-inline text-center mb-2" style="margin-top:20px;">
													<li class="list-inline-item text-muted ">연령대</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="dan"
									style="margin-top: 30px; width: 900px; height: 500px;">
									<div class="card" style="width: 900px; height: 500px;">
										<div class="card-body" style="width: 900px; height: 500px;">
											<h4 class="card-title text-black">마약 단속현황<h6> (2014.01-2023.09)</h6></h4>
											<div id="morris-line-chart"
												style="width: 860px; height: 430px; margin-left: 10px;">

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="hj"
								style="margin-left: 15px; width: 500px; height: 1030px">
								<div class="card"
									style="margin-left: 15px; width: 450px; height: 1030px">
									<div class="card-body"
										style="margin-left: 15px; width: 450px; height: 1030px">
										<div style="margin-right: 40px;">
											<h4 class="card-title mb-4 text-black">국가별 마약 단속현황</h4>
											<div style="height: 350px">
												<div id="visitbylocate" style="height: 100%;"></div>
											</div>
											<div style="margin-top: 50px;">


												<div class="row0 mb-3 align-items-center">
													<div class="col1-4 text-right">
														<span class="font-14 text-black">Oceania</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 0.4%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">0.4</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">14만</span>
													</div>
												</div>
												<div class="row0 mb-3 align-items-center mt-1 mt-5">
													<div class="col1-4 text-right">
														<span class="font-14 text-black">Africa</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 4.8%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">4.8%</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">138만</span>
													</div>
												</div>
												<div class="row0 mb-3 align-items-center">
													<div class="col1-4 text-right">
														<span class="text-black font-14">Europe</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 18.1%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">18.1%</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">520만</span>
													</div>
												</div>
												<div class="row0 mb-3 align-items-center">
													<div class="col1-4 text-right">
														<span class="text-black font-14">America</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 16.8%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">16.8</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">482만</span>
													</div>
												</div>
												<div class="row0 mb-3 align-items-center">
													<div class="col1-4 text-right">
														<span class="text-black font-14">Asia</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 26.5%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">26.5</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">763만</span>
													</div>
												</div>
												<div class="row0 mb-3 align-items-center">
													<div class="col1-4 text-right">
														<span class="text-black font-14">Global</span>
													</div>
													<div class="col1-5-1">
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 33.4%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100">33.4</div>
														</div>
													</div>
													<div class="col1-3-1 text-right">
														<span class="mb-0 font-14 text-black font-weight-medium">960만</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        
       
    

 
    <div class="section-bg style-1" style="background-image: url('images/bg_4.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/close.png" class="iconclose"></span>
            <h3>출구 없는 미로</h3>
            <p> 단 한번의 호기심! 이것이 마약의 유혹</p>
            <p> 마약으로 우리 가족의 죽음을 삽니다.</p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/no-drugs.png" class="icondrug"></span>
            <h3>NO EXIT</h3>
            <p>호기심에 손댄 마약 죽음되어 돌아온다.</p>
            <p>설마하다 중독되고 중독되면 파멸온다.</p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/close.png" class="iconclose"></span>
            <h3>절대 시작하지 마세요</h3>
            <p>마약과의 입맞춤은 죽음과의 포옹이다.</p>
            <p>리허설이 없는 자살극, 그것이 바로 마약!</p>
          </div>
        </div>
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

  <div id="popup">
    <img src="images/campaign1.jpg">
    <button onclick="closePopup()">홈 화면으로 가기</button>
  </div>

  <script>
    function showPopup() {
        document.getElementById('popup').style.display = 'block';
    }

    function closePopup() {
        window.location.href = 'Gomain.do';
    }

    document.addEventListener('animationend', function (event) {
        if (event.animationName === 'shake-little') {
            showPopup();
        }
    });
</script>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

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

  <script src="assets/dist/js/pages/dashboards/dashboard1.min.js"></script>
	<!--dashboard-->
	<script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/dist/js/app-style-switcher.js"></script>
	<script src="assets/dist/js/feather.min.js"></script>
	<script
		src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="assets/extra-libs/sparkline/sparkline.js"></script>
	<script src="assets/dist/js/custom.min.js"></script>
	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="assets/dist/js/pages/chartjs/chartjs.init.js"></script>
	<script src="assets/libs/chart.js/dist/Chart.min.js"></script>
	<script src="assets/dist/js/pages/chartjs/chartjs.init2.js"></script>
	<!--polar-->
	<script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/libs/raphael/raphael.min.js"></script>
	<script src="assets/libs/morris.js/morris.min.js"></script>
	<script src="assets/dist/js/pages/morris/morris-data2.js"></script>
	<!-- 차트 값-->
	<script src="assets/extra-libs/c3/d3.min.js"></script>
	<script src="assets/extra-libs/c3/c3.min.js"></script>
	<script src="assets/libs/chartist/dist/chartist.min.js"></script>
	<script
		src="assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
	<script src="assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
	<script
		src="assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>






  <script src="assets/js/main.js"></script>

</body>

</html>