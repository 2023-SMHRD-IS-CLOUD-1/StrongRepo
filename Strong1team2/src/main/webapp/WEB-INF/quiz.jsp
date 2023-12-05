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

<style>

    div.col-lg-7{
        text-align: left;
    }

    .site-section{
        text-align: center;
    }

    .select{
        display: inline-block; 
        margin: 10px 10px;
        margin-top: 30px;
        width: 400px;
        height: 800px;
        border: 1px solid rgb(231, 231, 231);
        border-radius: 1em;
        padding: 20px 20px;
    }



    .pb-4 h3 {
        background-color: rgb(223, 221, 221);
        border-radius: 2em;
        padding: 10px;
        color: rgb(36, 35, 35);
        font-weight: bold;
    }

    .pb-4 h4 {
        margin-top: 15px;
    }

    [type="checkbox"] {
    vertical-align: middle;
    appearance: none;
    border: max(2px, 0.2em) solid rgb(83, 83, 83);
    border-radius: 50%;
    width: 1.25em;
    height: 1.25em;
    }
    [type="checkbox"]:checked {
    border: 0.4em solid tomato;
    }

    .fixed-button {
            position: fixed;
            bottom: 20px;
            right: 30px;
            background-color: tomato;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            padding-top: 60px; 
        }

        .modal-content {
            text-align: center;
            background-color: #fefefe;
            height: 500px;
            margin: 13% auto;
            padding: 50px;
            border: 1px solid #888;
            width: 80%;
        }

        /* 닫기 버튼 스타일 */
        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            color: #888;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

  </style>


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
	            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 검찰청1301/ 경찰청112/ 관세청125</a> 
	            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 중독재활센터 1899-0893</a> 
	          </div>
    		  <div class="row align-items-center">
					<C:if test="${result!=null}">
					   <a class="small mr-3" style="float: right;"><span> ${result.getEmail()}님 환영합니다.</span></a>
					</C:if> 
					<C:if test="${result==null}">
						<a href="Gologin.do" class="small mr-3"><span class="icon-unlock-alt"></span> log in</a>
					</C:if>
						
						<!-- 누르면 페이지 이동 -->
	 				
					<C:if test="${result!=null}">
					<a href="Gomodify.do" class="small mr-3" ><span class="icon-unlock-alt"></span> 개인정보수정</a>
					</C:if> 
					<C:if test="${result==null}">
					<a href="Goregister.do" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
					</C:if> </a>
					
					<C:if test="${result!=null}">
					<a href="Logout.do" class="small mr-3" style="text-align: right;"><span class="icon-unlock-alt"></span>로그아웃</a>
					</C:if>
					<C:if test="${result==null}">
					</C:if>
						
				</div>

					</div>
				</div>
			</div>
		</div>
		
		
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
                <li class="active">
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

    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_4.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">사례퀴즈</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="Gomain.do">Main</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">사례퀴즈</span>
      </div>
    </div>
    
    <div class="site-section">
        <div class="container">

            <h2>다음 중 마약을 접하게 되는 사례를 고르시오.</h2>
            <h5>(중복가능)</h5>

            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/soda.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>길에서 받은 음료</h3>
                        <h4>서울 강남 대치동 학원가의 재수생 임혜주 양(가명, 18), 오늘도 책가방을 멘 채로 터덜터덜 걸어가고 있다.<br>
"거기, 학생? 와서 간식 좀 가져가~"<br>
"엇! 감사합니다!"<br>
배고팠던 혜주 양, 입꼬리를 귀밑까지 올리며, 급하게 음료수와 과자를 챙겨가는데...</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/telegram.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>SNS</h3>
                        <h4>SNS 중독자 김혜진 양(가명, 17), 오늘도 어김없이 SNS 탐방을 한다.<br>
"흐응~ 이것도 맛있어 보이고~ 저것도... 아이스? 이건 뭐지? 요즘 유행하는 음식인가?"<br>
'아이스'를 판매한다는 게시글을 우연히 본 혜진 양, 호기심에 게시된 텔레그램 아이디로 연락해보는데...</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/nicotine.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>전자담배</h3>
                        <h4>금연 100일차인 유해지 양(가명, 20), 오늘도 그 공허함을 술자리로 달래고 있다.<br>
"해지야~ 너 진짜 안 펴? 이거 비싼 건데? 새 거 하나 줄게~"<br>
아는 오빠 1이 전자담배를 흔들며 씨익 웃자, 열이 오른 해지 양.<br>
전자담배를 완력으로 뺏어 입에 물고 피기 시작하는데...
</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/jelly.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>일본 젤리</h3>
                        <h4>일본 나고야의 한 상가, 한국인 여행객 심혜진 군(가명, 19)은 선글라스 안쪽의 눈을 이리저리 굴리면서 주위를 살피고 있다.<br>
'흠... 뭘 먹을까아? 이것도, 저것도 다 맛있어 보이는데... 아, 저거다!'<br>
탐스럽게 빛나는 주황색 젤리를 보고 눈 돌아간 혜진 군, 바로 사서 입에 넣어버리는데...</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/cash.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>떨어진 돈</h3>
                        <h4>한국계 미국인인 헤지 림(17, 가명)은 오늘도 단골 햄버거집을 향해 힘차게 걸음을 옮기고 있다.<br>
'hmm... 아임 헝그리. yo~ yo~'<br>
그러던 중, 바닥에 떨어진 10달러 지폐를 발견한 헤지 림.<br>
'wow~ 이 돈이면 베이컨 치즈 버거까지 먹을 수 있겠는데~'<br>
한 치의 망설임도 없이 지폐를 줍는데...</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            <div class="select">
                <figure class="thumnail">
                    <a><img src="images/diet.png" alt="Image" class="img-fluid"></a>
                </figure>
                <div class="course-1-content pb-4">
                    <label>
                        <h3>다이어트</h3>
                        <h4>상습적 다이어터인 엄희지 양(가명,26), 이번만큼은 다이어트에 성공하기로 마음먹는다.<br>
"아... 다이어트를 하고 싶으시다고요? 이 약을 4주 동안 드시면 됩니다."<br>
"네~ 감사합니다앙~'<br>
의사로부터 다이어트 약을 처방받은 희지 양, 가벼운 발걸음으로 집으로 돌아가는데...</h4>
                        <input type="checkbox">
                    </label>
                </div>
            </div>
            
            <button class="fixed-button" onclick="openModal()">정답 보기</button>

          
        </div>
    </div>


   
    

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



  <div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>🎉사실 모두 정답이었습니다 🎉</h2>
    </div>
</div>

<script>
    function openModal() {
        document.getElementById('myModal').style.display = 'block';
    }

    function closeModal() {
        document.getElementById('myModal').style.display = 'none';
    }

    window.onclick = function(event) {
        var modal = document.getElementById('myModal');
        if (event.target === modal) {
            closeModal();
        }
    }

    window.onscroll = function() {
            var button = document.querySelector('.fixed-button');
            var footer = document.querySelector('.footer');

            // 버튼이 나타나는 위치 계산
            var buttonDisplayPosition = footer.offsetTop - window.innerHeight;

            // 스크롤 위치가 버튼이 나타나는 위치를 넘었을 때
            if (window.scrollY > buttonDisplayPosition) {
                button.style.display = 'none';
            } else {
                button.style.display = 'block';
            }
        }
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




  <script src="assets/js/main.js"></script>

</body>

</html>