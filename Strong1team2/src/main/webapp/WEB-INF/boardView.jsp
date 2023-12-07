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


    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_4.jpg')">
      <div class="container">
        <div class="row align-items-end">
          <div class="col-lg-7">
            <h2 class="mb-0">게시판</h2>
            <p>안사요 마약, 안사요 절망. </p>
          </div>
        </div>
      </div>
    </div>


    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href=".do">Main</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">게시판</span>
      </div>
    </div>

    <div class="site-section">
      <div class="container">

        <div class="board_wrap">
          <div class="board_title">
            <strong>게시글</strong>
            <p></p>
          </div>
          <div class="board_view_wrap">
            <div class="board_view">
              <div class="title">
                글 제목이 들어갑니다.
              </div>
              <div class="info">
                <dl>
                  <dt>번호</dt>
                  <dd>1</dd>
                </dl>
                <dl>
                  <dt>글쓴이</dt>
                  <dd>김이름</dd>
                </dl>
                <dl>
                  <dt>작성일</dt>
                  <dd>2021.1.16</dd>
                </dl>
                <dl>
                  <dt>조회</dt>
                  <dd>33</dd>
                </dl>
              </div>
              <div class="cont">
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다
              </div>
            </div>
            
            <div class="bt_wrap">
              <a href="Goknowledge_Board.do#board" class="on">목록</a>
              
              <a class="on">수정</a>
            </div>
          </div>
        </div>



      </div>
    </div>

    <div class="comment_section">
      <div class="container">
          <div class="board_wrap">
              <!-- <div class="board_title">
                  <strong>댓글</strong>
                  <p>여기서 댓글인데 나중에 지울예정</p>
              </div> -->
              <div class="board_list_wrap">
                  <div class="cmt_board_list">
                      <div style="display: flex; justify-content: space-between; align-items: center;">
                       
                          <div class="title">댓글이 없습니다. 작성해주시기 바랍니다.</div><br>
                          <div class="writer">작성자</div>
                          <div class="date">시간</div>
                          <div><input type="button" value="삭제" style="width:70px;">  </div>
                      </div>
  	<!--                    <div>
                          <div class="title">댓글 내용</div><br>
                          <div class="writer">김이름</div>
                          <div class="date">2021.1.15</div>
                      </div>
                      <div>
                          <div class="title">댓글 내용</div><br>
                          <div class="writer">김이름</div>
                          <div class="date">2021.1.15</div>
                      </div>
                      <div>
                          <div class="title">댓글 내용</div><br>
                          <div class="writer">김이름</div>
                          <div class="date">2021.1.15</div>
                      </div>
                      <div>
                          <div class="title">댓글 내용</div><br>
                          <div class="writer">김d</div>
                          <div class="date">2021.1.15</div>
                      </div> -->
                  </div>
                  <div id="boardStart" class="board_write_wrap">
                    <div class="cmt_board_write">
                    
                    
                    <form action="UserComment.do">
                            <C:if test="${result!=null}">
                        <div class="cmt_title">
                            <ul>
                                <dd><input type="text" name="comment" placeholder="댓글 입력" style="width: 100%; height: 50px;"></dd>
                            </ul>
                        </div>
                    </div>
                    <div class="bt_wrap">
                    <input type="hidden" class="postNumber" name="postNumber">
                      <input type="submit" value="등록" class="btn btn-primary btn-lg px-5">
                  </div>
                </div>
                 </C:if>
                      <C:if test="${result==null}">
                        <div class="cmt_title">
                            <ul>
                                <dd><input type="text" disabled="disabled" name="comment" placeholder="로그인 시 이용 가능합니다." style="width: 100%; height: 50px;"></dd>
                            </ul>
                        </div>
                    </div>
                    <div class="bt_wrap">
                    <input type="hidden" class="postNumber" name="postNumber">
                      <input type="submit" disabled="disabled" value="등록" class="btn btn-primary btn-lg px-5">
                  </div>
                </div>
                 </C:if>
                </form>

                       
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
  <!-- .site-wrap -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#51be78" />
    </svg></div>

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


<script type="text/javascript">
  let postId;
  const urlParams = new URLSearchParams(window.location.search);
  postId = urlParams.get("id");
  
  const linkElement = document.querySelector('body > div:nth-child(5) > div > div > div.board_view_wrap > div.bt_wrap > a:nth-child(2)');
  var userEmail = "${result.getEmail()}";
  var postNumber = document.getElementsByClassName('postNumber');
for (var i = 0; i < postNumber.length; i++) {
    postNumber[i].value = postId;
}

  console.log(postId);

  
  

  $.ajax({
	    url: 'View.do',
	    method: 'GET',
	    data: {
	      id: postId // URLSearchParams로부터 가져온 postId 값을 전달합니다.
	    },
	    success: function(response) {
	    	console.log("성공1");
	      // 서버 응답에서 title과 content 값을 가져옴
	      const data = response[0]; // 배열의 첫 번째 요소에 있는 객체를 data로 사용합니다.
	      const titleValue = data.B_TITLE; // data 객체의 B_TITLE 속성값을 가져와 할당
	      const contentValue = data.B_CONTENT; // data 객체의 B_CONTENT 속성값을 가져와 할당
	      const emailValue = data.EMAIL;
		  const created_AT = data.CREATED_AT;
		  const numValue = data.B_NUM;

		     if(userEmail != emailValue) {
		           linkElement.style.display = 'none';
		        } 
		        
		        if(emailValue === 'smhrd') {
		           linkElement.style.display = 'inline-block';
		        } 
		        
		        if(emailValue === userEmail) {
		           linkElement.style.display = 'inline-block';
		        } 
		  
	      // 타이틀과 컨텐츠를 업데이트
	      const boardTitle = document.getElementsByClassName("title")[0];
	      const boardContent = document.getElementsByClassName("cont")[0];
	      const boardEmail = document.querySelector(`
	    		  body > div:nth-child(5) > div > div > div.board_view_wrap > div.board_view > div.info > dl:nth-child(2) > dd
	    		`);
	      const boardCreated_At = document.querySelector(`
	    		  body > div:nth-child(5) > div > div > div.board_view_wrap > div.board_view > div.info > dl:nth-child(3) > dd
	  		`);
	      const boardNum = document.querySelector(`body > div:nth-child(5) > div > div > div.board_view_wrap > div.board_view > div.info > dl:nth-child(1) > dd`);
	      
	      
	      
	      boardTitle.innerText = titleValue; 
	      boardContent.innerText = contentValue; // 컨텐츠 업데이트
	      boardEmail.innerText = emailValue;
	      boardCreated_At.innerText = created_AT;
	      boardNum.innerText = numValue;
	      
	      console.log("성공11111111111111111111111111")
	    },
	    
	    
	    
	    error: function(xhr, status, error) {
	      console.error('Error:', error);
	    }
	  });
	  
  
  $(document).ready(function(){ 
		$.ajax({
		    url: 'CommentView.do',
		    method: 'GET',
		    data: {
		      id: postId // URLSearchParams로부터 가져온 postId 값을 전달합니다.
		    },
		    success: function(response) {
		    	   console.log(response)
		    	   const commentList = Object.values(response);
		    	  const origincmt = document.querySelector(`body > div.comment_section > div > div > div > div.cmt_board_list > div:nth-child(1)`);
		    	  origincmt.remove();
		    	   var comment = document.querySelector(`body > div.comment_section > div > div > div > div.cmt_board_list`)
		    	   
				    var cWriter = commentList[i].EMAIL;
		    	   // 여기서부터 for문 시작할듯? 
		    		for(let i=0; i<commentList.length; i++) {
		    			// %기준은 화면 100%일때 기준으로 했음 영상 찍을때 화면100%로 해주셈!!   
		    			const newWriter = document.createElement('div');
		    			newWriter.classList.add("writer");
		    			newWriter.style.marginRight = "50px";
		    			newWriter.style.position = "absolute";
		    			newWriter.style.right = "35%"; 
				    	   const newContent = document.createElement('div');
				    	   newContent.classList.add("title");
				    	   newContent.style.marginRight = "50px";
				    	   
				    	   newContent.setAttribute('name', 'contentD');
				    	   const newDate = document.createElement('div');
				    	   newDate.classList.add("date");
				    	   newDate.style.marginRight = "50px";
				    	   newDate.style.position = "absolute";
				    	   newDate.style.right = "22%"; 
				    	   
				    	   const newD = document.createElement('div');
				    	   const newLineBreak = document.createElement('br');

				    	   const space = document.createTextNode('                 ');
				    	   const newDiv = document.createElement('div');
				    	   newDiv.style.display = "flex";
				    	   newDiv.style.justifyContent = "spaceBetween";
				    	   newDiv.style.alignItems = "center";
				    	
				    	   
				    	   
				    	   
				    	   const newForm = document.createElement('form');
				    	   newForm.action = "DropComment.do";
				    	   const submitButton = document.createElement('button');
				    	   submitButton.textContent = 'submit'; // 버튼 텍스트 설정
				    	   
				    	   
				    	   newContent.innerHTML = commentList[i].CMT_CONTENT;
				    	   newWriter.innerHTML = commentList[i].EMAIL;
				    	   newDate.innerHTML = commentList[i].COMMENTED_AT.split(" ")[0];
				    	   var cmt = newContent.textContent; 
				    	   const deleteButton = document.createElement('input');
				    	   deleteButton.type = "button";
				    	   deleteButton.value = "삭제";
				    	   deleteButton.style.fontSize = "20px";
				    	   deleteButton.style.width = "70px";
				    	   deleteButton.style.height = "50px";
				    	   deleteButton.style.position = "absolute";
				    	   deleteButton.style.right = "20%"; 
				    	  
				    	   comment.appendChild(newDiv);
				    	   newForm.appendChild(submitButton);
				    	   newDiv.appendChild(newContent);
//				    	   newDiv.appendChild(space); // 공백 추가
				    	   newDiv.appendChild(newWriter);
//				    	   newDiv.appendChild(space); // 공백 추가
				    	   newDiv.appendChild(newDate);
				    	   console.log("확인 >> ", cWriter)
				    	   console.log("확인 >> ", userEmail)
				    	   if (commentList[i].EMAIL === userEmail) {
				    		    newDiv.appendChild(deleteButton);
				    		}
				    	   
				    	   if(userEmail === 'smhrd'){
				    		   newDiv.appendChild(deleteButton);
				    	   }
				    	   comment.appendChild(newDiv);
				    	   
				    	   
				    	   newDiv.appendChild(newLineBreak);
				    	   
				    	   deleteButton.addEventListener('click', function() {
				    		   var comD = newContent.innerHTML;
				    		   console.log(comD);
				    		    $.ajax({
				    		        url: 'DropComment.do',
				    		        method: 'GET',
				    		        data: {
				    		            id: comD,
				    		            postNumber: postId// 변수 id에 postId 값을 할당하여 서버에 전달
				    		        },
				    		        success: function(data) {
				    		        	window.location.reload();
				    		            console.log(data); 
				    		        },
				    		        error: function(xhr, status, error) {
				    		            console.error('Error:', error);
			    		         }
				    		    });
				    		});
		    		}
		    },	
		    
		    error: function(xhr, status, error) {
		        console.error('Error:', error);
		      }
		    });
	});
  
  
  const buttonElement = document.querySelector(`body > div:nth-child(5) > div > div > div.board_view_wrap > div.bt_wrap > a:nth-child(2)`);

  buttonElement.addEventListener('click', function(event) {
  console.log("check2222222222")

  	const newURL = 'http://localhost:8081/Strong1team/GoboardEdit.do?postNumber='+ postId
  	
  	window.location.href = newURL;
  });

	  
  </script>  



</body>

</html>