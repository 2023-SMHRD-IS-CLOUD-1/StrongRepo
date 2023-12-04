<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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



<!-- 원래 코드  -->

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
     <!-- 
    
					<C:if test="${result!=null}">
					    ${result.getEmail()}님 환영합니다.
					</C:if> 
					<C:if test="${result==null}">
						<a href="Gologin.do" class="small mr-3"><span class="icon-unlock-alt"></span> log in</a>
					</C:if>
						
						<!-- 누르면 페이지 이동 -->
		<!-- 				
					<C:if test="${result!=null}">
					<a href="Gomodify.do" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> 개인정보수정</a>
					</C:if> 
					<C:if test="${result==null}">
					<a href="Goregister.do" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
					</C:if> </a>
					
					<div class="logout">
					<C:if test="${result!=null}">
					<a href="Logout.do">로그아웃</a>
					</C:if>
					<C:if test="${result==null}">
					</C:if>
						</div>
						


					</div>
				</div>
			</div>
		</div>
    
    -->  
    
    
    
    
    
    
    
    
    
    
    
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

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
                  <a href="GOquiz.do" class="nav-link text-left">사례퀴즈</a>
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

   
  <!--    <div class="hero-slide owl-carousel site-blocks-cover">-->
      <div class="intro-section">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-12 mx-auto text-center">
            
              <h1>마약 필터</h1>
                       <div style="display: flex; justify-content: center; align-items: center; text-align: center;">
		    <div id="image_container" style="width: 500px; height: 500px; margin: 10px;border: 2px solid black;">
		        <!-- Display uploaded image here -->
		    </div>
		    <div id="resultImageContainer" style="width: 500px; height: 500px; margin: 10px; border: 2px solid black; text-align: center;">
		        <!-- Display transformed image here -->
		    </div>
		</div>
		<div style="display: flex; justify-content: center; align-items: center; text-align: center;">
			<form id="uploadForm" action="/upload" method="post" enctype="multipart/form-data">
			    <input type="file" name="image" id="imageInput" onchange="setThumbnail(event);">
			   
			    <button type="button" onclick="uploadImage()"> Upload </button>
			</form>
		</div>
         </div>
          </div>
        </div>
      </div>

  <!--   </div> -->
    

    <div></div>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>대시보드 자리</span>
            </h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">

            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-mortarboard text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>Personalize Learning</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit morbi hendrerit elit</p>
                <p><a href="#" class="btn btn-primary px-4 rounded-0">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-school-material text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>Trusted Courses</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit morbi hendrerit elit</p>
                <p><a href="#" class="btn btn-primary px-4 rounded-0">Learn More</a></p>
              </div>
            </div> 
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
            <div class="feature-1 border">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-library text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2>Tools for Students</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit morbi hendrerit elit</p>
                <p><a href="#" class="btn btn-primary px-4 rounded-0">Learn More</a></p>
              </div>
            </div> 
          </div>
        </div>
      </div>
    </div>


<!-- 
    <div class="site-section">
      <div class="container">

        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-6 mb-5">
            <h2 class="section-title-underline mb-3">
              <span>Popular Courses</span>
            </h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia, id?</p>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
              <div class="owl-slide-3 owl-carousel">
                  <div class="course-1-item">
                    <figure class="thumnail">
                      <a href="course-single.html"><img src="images/course_1.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Mobile Application</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>
      
                  <div class="course-1-item">
                    <figure class="thumnail">
                      <a href="course-single.html"><img src="images/course_2.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Web Design</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>
      
                  <div class="course-1-item">
                    <figure class="thumnail">
                      <a href="course-single.html"><img src="images/course_3.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Arithmetic</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="courses-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>

                  <div class="course-1-item">
                    <figure class="thumnail">
                        <a href="course-single.html"><img src="images/course_4.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Mobile Application</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>
      
                  <div class="course-1-item">
                    <figure class="thumnail">
                        <a href="course-single.html"><img src="images/course_5.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Web Design</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>
      
                  <div class="course-1-item">
                    <figure class="thumnail">
                        <a href="course-single.html"><img src="images/course_6.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price">$99.00</div>
                      <div class="category"><h3>Mobile Application</h3></div>  
                    </figure>
                    <div class="course-1-content pb-4">
                      <h2>How To Create Mobile Apps Using Ionic</h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Similique accusantium ipsam.</p>
                      <p><a href="course-single.html" class="btn btn-primary rounded-0 px-4">Enroll In This Course</a></p>
                    </div>
                  </div>
      
              </div>
      
          </div>
        </div>

        
        
      </div>
    </div>
        
      </div>
    </div>
    
 -->
    <div class="section-bg style-1" style="background-image: url('images/bg_4.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/close.png" class="iconclose"></span>
            <h3>출구 없는 미로</h3>
            <p> 단 한번의 호기심! 이것이 마약의 유혹</p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/no-drugs.png" class="icondrug"></span>
            <h3>NO EXIT</h3>
            <p>설마하다 중독되고 중독되면 파멸온다.</p>
          </div>
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
            <span><img src="images/close.png" class="iconclose"></span>
            <h3>절대 시작하지 마세요</h3>
            <p>마약과의 입맞춤은 죽음과의 포옹이다.</p>
          </div>
        </div>
      </div>
    </div>


    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3" style="margin-bottom: 15px;">
            <p class="mb-4"><img src="images/logosmall.png" alt="Image" class="img-fluid"></p>
            <p style="margin-left: 50px; font-size: 19px; font-weight: bold;">강력 1팀</p> 
            <p style="margin-left: 15px; font-size: 17px;"> : 약하지 않은 사람들</p> 
            <p style="margin-left: 25px;">박범석 조원제 임혜지</p>  
            <p style="margin-left: 25px;">하동철 한명훈 함수연</p>  
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>한국중독관리센터협회</span></h3>
            <ul class="list-unstyled">
                <li><a href="http://www.kaacc.co.kr/03_sub/page3_2.php">전국 센터 안내</a></li>
                <li><a href="http://www.kaacc.co.kr/03_sub/page3_3.php">관련 기관 안내</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>중독재활센터</span></h3>
              <ul class="list-unstyled">
                  <li><a href="https://www.drugfree.or.kr/counsel/index.html?contentsNum=5&category=REFORM&headNum=1&seq=180&tpage=1">중독재활센터 안내</a></li>
                  <li><a href="https://www.drugfree.or.kr/counsel/index.html?contentsNum=5&category=CONSULT_2&seq=12017&tpage=1">상담 안내</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading""><span>응원의 한마디</span></h3>
            <ul class="list-unstyled" style="width: 500px;">
                <li style="color: #000;">힘내라 빠샤빠샤빠샤빠샤빠샤빠샤빠샤빠샤</li>
                <li style="color: #000;">힘내라 아자아자아자아자아자아자아자아자</li>
                <li style="color: #000;">힘내라 빠샤빠샤빠샤빠샤빠샤빠샤빠샤빠샤</li>
                <li style="color: #000;">힘내라 아자아자아자아자아자아자아자아자</li>
                <li style="color: #000;">힘내라 빠샤빠샤빠샤빠샤빠샤빠샤빠샤빠샤</li>
                <li style="color: #000;">힘내라 아자아자아자아자아자아자아자아자</li>
            </ul>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    

  </div>
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




  <script src="assets/js/main.js"></script>
  
  <script>
		// 로그인 페이지 이동
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							const linkElement = document
									.querySelector('body > div.site-wrap > div.py-2.bg-light > div > div > div.col-lg-3.text-right > a.small.mr-3');

							if (linkElement) {
								linkElement.addEventListener("click", function(
										event) {
									event.preventDefault();
									const link = linkElement
											.getAttribute('href');
									window.location.href = link;
								});
							}
						});
	</script>

	<script>
		// 회원가입 페이지 이동
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							const linkElement = document
									.querySelector('body > div.site-wrap > div.py-2.bg-light > div > div > div.col-lg-3.text-right > a.small.btn.btn-primary.px-4.py-2.rounded-0');

							if (linkElement) {
								linkElement.addEventListener("click", function(
										event) {
									event.preventDefault();
									const link = linkElement
											.getAttribute('href');
									window.location.href = link;
								});
							}
						});
	</script>

	<script>
		// 메인 페이지(로고) 이동
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							const linkElement = document
									.querySelector('#sticky-wrapper > header > div > div > div.site-logo > a > img');

							if (linkElement) {
								linkElement.addEventListener("click", function(
										event) {
									event.preventDefault();
									const link = linkElement
											.getAttribute('href');
									window.location.href = link;
								});
							}
						});
	</script>

	<script>
		// 메인 페이지 이동
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							const linkElement = document
									.querySelector('#sticky-wrapper > header > div > div > div.mr-auto > nav > ul > li:nth-child(1) > a');

							if (linkElement) {
								linkElement.addEventListener("click", function(
										event) {
									event.preventDefault();
									const link = linkElement
											.getAttribute('href');
									window.location.href = link;
								});
							}
						});
	</script>
<script>
		function uploadImage() {
		    var formData = new FormData(document.getElementById('uploadForm'));
		    
		    // Assuming 'imageInput' is the ID of your file input element
		    var imageFile = document.getElementById('imageInput').files[0];
	
		    // Append the image to the FormData with the key 'image'
		    formData.append('image', imageFile);
	
		    fetch('http://127.0.0.1:9000/upload_and_receive', {
		        method: 'POST',
		        body: formData
		    })
		    .then(response => {
		        if (!response.ok) {
		            throw new Error('Network response was not ok');
		        }
		        return response.blob(); // Use blob() to get image data
		    })
		    .then(data => {
		        var resultImageContainer = $('#resultImageContainer');
		        resultImageContainer.empty();
		        
		        // Create an Object URL for the blob
		        var imageUrl = URL.createObjectURL(data);
		        
		        resultImageContainer.append('<img src="' + imageUrl + '" alt="Transformed Image" style="max-width: 496px; max-height: 496px;">');
		    })
		    .catch(error => {
		        console.error('Error:', error);
		        var resultImageContainer = $('#resultImageContainer');
		        resultImageContainer.empty();
		        resultImageContainer.append('<p style="color: red;">Error: ' + '얼굴 인식이 되지 않았습니다. 다른 사진을 올려주세요.' + '</p>');
		    
		    });
		}
	</script>
	<script>
		function setThumbnail(event){
			var resultImageContainer = document.getElementById('resultImageContainer');
	        resultImageContainer.innerHTML = '';
			var ImageContainer = document.getElementById('image_container');
	        ImageContainer.innerHTML = '';
	        
	        // 글 제거 (예시: id가 'textContainer'인 요소 제거)
	        var textContainer = document.getElementById('textContainer');
	        if (textContainer) {
	            textContainer.remove();
	        }
			var reader = new FileReader();
			
			reader.onload = function(event){
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("class", "col-lg-6");
				document.querySelector("div#image_container").appendChild(img);
			};
			
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>
</body>

</html>