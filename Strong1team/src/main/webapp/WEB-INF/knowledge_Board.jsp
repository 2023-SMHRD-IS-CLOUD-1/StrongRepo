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

  .course-1-content.pb-4{
      height: 650px;
      position: relative;
    }

    /* 모달 스타일 */
    .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fefefe;
            padding: 20px;
            border: 1px solid #888;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 1);
            z-index: 1;
            width: 800px;
            height: 800px;
            overflow-y: auto;
        }

        /* 오버레이 스타일 */
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(252, 252, 252, 0.5);
            z-index: 0;
        }

        /* 추가된 스타일 */

        .modal_body img {
            max-width: 100%;
            height: auto;
        }

        /* 버튼 스타일 */

        .btn-open-modal {
            cursor: pointer;
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            position: absolute;
            bottom: 5px;
            transform: translate(-50%, -50%);
            transition: background-color 0.3s ease;
            }
            .btn-open-modal:hover {
            background-color: #0056b3; /* Darker color on hover */
            }
        .btn-close-modul{
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
   }
        .btn-close-modul:hover {
          background-color: #0056b3;
          color: #fff;
        }
    
    .drugtitle{
      font-weight: bold;
      color: #000;
      text-align: left;
      
      margin-left: 20px;
    }
   .drugcontent{
    color: #000;
    text-align: left;
    margin-bottom: 25px;
    margin-left: 20px;
   }
   .icon-close{
    color: rgb(196, 29, 0);
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
            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 신고 : 검찰청-1301/ 경찰청112/ 관세청125</a> 
            <a class="small mr-3"><span class="icon-phone2 mr-2"></span> 중독재활센터 1899-0893</a> 
          </div>
          <div class="col-lg-3 text-right">
            <a href="Gologin.do" class="small mr-3"><span class="icon-unlock-alt"></span> Log In</a>
            <a href="Goregister.do" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
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
                <li class="active">
                  <a href="Goknowledge_Board.do" class="nav-link text-left">지식채널</a>
                </li>
                <li class="active">
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
              <h2 class="mb-0">지식채널 / 게시판</h2>
              <p>순간의 마약복용 영원한 인생포기</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="Gomain.do">Main</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">지식채널 / 게시판</span>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
          <div class="row">
              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                      <a href=""><img src="images/psilocybin.jpg" alt="Image" class="img-fluid" style="width: 100%; height: 100%;"></a>
                      <!-- <div class="price">가격대</div> -->
                      <div class="category"><h3>실로시빈 버섯 </h3></div>  
                      </figure>
                      <div class="course-1-content pb-4"  style="height: 650px;">
                      <h2>실로시빈 또는 실로사이빈은 진균독이자, 환각제이다.</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close" >은어 : 매직버섯, 파터타이머 등</span>
                          <span class="icon-close">가격 :$20-25</span>
                          <span class="icon-close">복용시 :환각, 정신 착란 등</span>
                          <span class="icon-close">금단 증상 :재현 현상 등</span>
                          <span class="icon-close">처벌:징역 30개월 등
                                                                    </span>
                          
                      </div>
                      <p class="desc mb-4">공황장애 또는 정신병이 생길수도있다.</p>
                     
                      <div id="myModal" class="modal">
                        <div class="modal_body">
                            <img src="images/psilocybin1.jpg" alt="실로시빈 버섯">
                            <h2>실로시빈 버섯</h2>
                            <p><h4 class="drugtitle">은어</h4>
                              <h5 class="drugcontent">매직 버섯, 파터타이머, 실로사이빈 버섯, shroom</h5>
                               <h4 class="drugtitle">복용후</h4> <h5 class="drugcontent">시간의 흐름이 매우 느리게 늘어나고
                                혼란되고 
                                시각적인 왜곡이 일어나는 등
                                LSD와 유사하다.
                                마약의 주원료로 사용
                                복용 시 남자일 때 성생활에 영향을 줄 수 있다.
                                복용 시 정신이 산만해지며 성생활에 집중을 못하게 된다.</h5>
                                <h4 class="drugtitle">금단증상</h4>
                                <h5 class="drugcontent">메스꺼움, 구토, 근력약화, 졸음, 혼미 등 증세가 3시간 동안 지속
                                  될 수도 있다. 실로시빈은 대량 섭취 시 공황장애 또는 정신병이
                                  발생할 수 있다</h5>
                                <h4 class="drugtitle">가격</h4>
                                <h5 class="drugcontent">$20-25에 온스의 <>분의 <>을 소비합니다.</h5>
                                  
                            </p>
                        </div>
                        <button onclick="closeModal()" class="btn-close-modul">지식페이지이동</button>
                    </div>
                    
                    <div id="overlay" class="overlay"></div>
                    
                    <!-- 버튼 클릭 시 모달 열기 -->
                    <button class="btn-open-modal" onclick="openModal()">설명 더보기</button>
                    
                    <script src="js/modalcontent.js">
                        
                    </script>
                      </div>
                  </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                              <a href=""><img src="images/hemp.jpg" alt="Image" class="img-fluid" style="width: 100%; height: 100%;"></a>
                      <!-- <div class="price">가격대</div> -->
                      <div class="category"><h3>마리화나(대마초)</h3></div>  
                      </figure>
                      <div class="course-1-content pb-4">
                      <h2>마취제, 대마잎이나 꽃을 건조시켜 담배형태로 흡연</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close">은어 : 떨, 빵, THC 등</span>
                          <span class="icon-close">가격 : 1온스(약30g)당 320달러</span>
                          <span class="icon-close">복용시 :충혈된 눈, 기침 등</span>
                          <span class="icon-close">금단증상 :불면증, 과민증 등</span>
                          <span class="icon-close">처벌 : 기소유예,벌금형 등</span>
                      </div>
                      <p class="desc mb-4">기관지염, 쌕쌕거림, 기침 ,가래, 복통 및 주기성구토증후군이 생기며 사춘기때 시작할시 인지저하와 뇌의 변화가 발생할수 있다.</p>
                      <div id="myModal1" class="modal">
                        <div class="modal_body1">
                            <img src="images/THC.jpg" alt="마리화나(대마초)" width="50%" height="30%">
                            <h2>마리화나(대마초)</h2>
                            <p><h4 class="drugtitle">은어</h4>
                              <h5 class="drugcontent">THC, 메리제인, weed, pot,grass 등</h5>
                              <h4 class="drugtitle">THC</h4>
                              <h5 class="drugcontent">대마초에 함유된 자연 발생 바나비노이드 성분 중하나이며
                                대마에 마약 효과를 내주는 물질이다.</h5>
                              <h4 class="drugtitle">대마 은어</h4>
                              <h5 class="drugcontent">떨, 빵, 고기, 단풍</h5>
                              <h4 class="drugtitle">사티바</h4>
                              <h5 class="drugcontent">high -> 흡연 시 활기가 넘치고 생기가 생긴다. 대부분 파티용 마약에 자주 사용</h5>
                              <h4 class="drugtitle">인디카</h4>
                              <h5 class="drugcontent">low -> 몸과 정신이 처지며 숙면에 도움이 되어 의료용으로 인디카를 사용</h5>
                              <h4 class="drugtitle">두개를 섞은 하이브리도</h4>
                              <h5 class="drugcontent">교배종에 따라 효과가 어떻게 변화할지 알 수가 없다. 또한
                                THC함량에 따라 또 달라지기 때문에 모든 대마는 효과가 세세하게 달라질 수 있다.</h5>                                
                              <br><img src = "images/withdrawalsymptoms.jpg"><br>
                              <h4 class="drugtitle">단기 복용시</h4>
                              <h5 class="drugcontent">뇌 활성을 보여주며 모든 생각이 끊기고 자유로이 흐르는 몽환적인 상태 유도
                                시간,색채및 공간지각을 왜곡 및 향상되어 만듦
                                일반적으로 긴장을 완화하고 안정감을 제공
                                고 양감,흥분및,내적 기쁨을 약물 사용되는 환경과 관련이 있음
                                사용 후 24시간 동안 협응력,반응시간, 깊이 지각 및 집중력이 저하될 수 있다
                                그 외로 심박 수 증가,충혈된 눈, 식욕 증가, 구강 건조 등이 포함되어있다. 
                                이러한 현상은 보통 흡입 후 4~6시간 동안 지속</h5>
                              
                              <h4 class="drugtitle">장기 복용시</h4>
                              <h5 class="drugcontent">기관지염,쌕쌕거림, 기침, 가래증가, 복통 및 주기성 구토 증후군
                                사춘기 때 시작할지 인지저하와 뇌의 변화가 발생할 수 있다.
                                여성일 경우 임신 가능성 저하 만약 임신한 경우 아기가 더 작게 나올 수도 있다
                                남자일 경우 정자 수 감소 및 생식능력 감소할 가능성이 있다.</h5>
                              <h4 class="drugtitle">금단 증상</h4>
                              <h5 class="drugcontent">다른 마약에 비해 금단 증상은 가벼운 편이다. 수주 간의 심한 잦은 사용 후에는,
                                돌연한 중단으로 인해 약 12시간 후에 시작되어 최대 7일 동안 지속되는 증상이 있다.
                                불면증, 과민성,우울증, 오심, 식욕부진</h5>                                                                                                                                                                                          
                              <img src="images/Cannabis.jpg"><br>
                              <h4 class="drugtitle">대마초</h4>
                              <h5 class="drugcontent">현재 대마초 처벌의 수위는 대부분 기소유예 아니면 벌금형 정도고, 
                                상습적 흡연이 아닌 이상 실형이 나오긴 힘들다
                                 공소시효는 5년이나 털로만 검사가 가능한 부분이라 의미는 크지 않다.</h5>
                            </p>
                        </div>
                        <button onclick="closeModal1()" class="btn-close-modul">지식페이지이동</button>
                    </div>
                    
                    <div id="overlay1" class="overlay"></div>
                    
                    <!-- 버튼 클릭 시 모달 열기 -->
                    <button class="btn-open-modal" onclick="openModal1()">설명 더보기</button>
                    
                    <script src="js/modalcontent.js"></script>
                      </div>
                  </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                              <a href=""><img src="images/methamphetamine.jpg" width="100%" alt="Image" class="img-fluid"></a>
                      
                      <div class="category"><h3>메스암페타민</h3></div>  
                      </figure>
                      <div class="course-1-content pb-4">
                      <h2>흥분제, 졸음과 피로감이 사라지고 쾌락과 행복감이 증가한다. 대마와 달리 폭력적인 성향을 띤다.</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close">은어 : 작대기,술,히로뽕 등 </span>
                          <span class="icon-close">가격 : 1온스(약30g)당 560달러</span>
                          <span class="icon-close">복용시 : 식용 상실, 노안등</span>
                          <span class="icon-close">금단 증상 : 입 마름</span>
                          <span class="icon-close">처벌 :징역 3년이상 등</span>
                      </div>
                      <p class="desc mb-4">중독성이 강해 하루에 3번 나눴던 투약량을 나중에 되면 1번에 투약해야 하는 상황이 오게 된다.
                        그렇게 되면 약물 과용으로 호흡곤란 및 심정지로 인해 죽게 되는 게 대부분의 결말이다.</p>
                         <div id="myModal2" class="modal">
                          <div class="modal_body">
                              <img src="images/drugice.jpg" alt="메스암페타민">
                              <h2>메스암페타민</h2>
                              <p>
                                <h4 class="drugtitle">메스암페타민(필로폰,히로뽕)</h4>
                                <h5 class="drugcontent">흥분제, 졸음과 피로감이 사라지고 쾌감과 행복감이 증가한다.
                                  대마초와 달리 폭력적인 성향을 띤다.</h5>
                                <h4 class="drugtitle">은어</h4>
                                <h5 class="drugcontent">작대기, 술, 얼음, 아이스등 술에 타먹으면, 찬술, 아이스술, 시원한술</h5>
                                <h4 class="drugtitle">복용시</h4>
                                <h5 class="drugcontent">성욕증가, 집중력 향상, 인지능력증가, 육체적인 행복감 ,사고가속, 사교성 및 실행 동기 증가 등이 있다.
                                  부작용</h5>
                                 
                                
                                <img src="images/drugice1.jpg"><br>
                                <h4 class="drugtitle">단기 복용</h4>
                                <h5 class="drugcontent">식욕 상실, 배뇨 장애,폭력적 충동 및 분노조절장애가 올 수 있다.
                                  도파민 수용체가 정상적인 작용이 반영구적으로 손상되어 생물학적 본능이 부여하는
                                   일체의 쾌감을 못 느낄 수 있다.</h5>
                                 
                                <h4 class="drugtitle">장기복용</h4>
                                <h5 class="drugcontent"> 단기 복용에서 못 빠져나와 의존도가 높아져서 더 많은 양을 투약하게 되는 효과를 불 수 있다.
                                  이 때문에 문제는 하루에 3번 나눴던 투약량이 몇 달 후 1번에 투약해야 할 지경으로 갈 수도 있어 
                                  그렇게 심신이 망치게 되고 약물 과용으로 호흡곤란 및 심정지로 죽는 게 흔한 결말이다,
                                  또한 약물 사용할 때엔 영양공급이 좋지 않고 살이 빠지며 노안이 오고 빼빼 마를 수도 있다. </h5>
                               
                                <h4 class="drugtitle">금단증상</h4>
                                <h5 class="drugcontent">약물을 끊을시 우울감이 다른 약보다 강도가 높고 오래 지속이 된다.
                                  메스암페타민의 부작용은 입이 마르고 강력한 흥분 효과로 인해 심한 이갈이가 생기며 치아가 손상된다.
                                  침이 줄어들어 입이 자주 마르게 되어 심각한 충치와 잇몸 질환을 유발한다.</h5>
                                
                              </p>
                          </div>
                          <button onclick="closeModal2()" class="btn-close-modul">지식페이지이동</button>
                      </div>
                      
                      <div id="overlay2" class="overlay"></div>
                      
                      <!-- 버튼 클릭 시 모달 열기 -->
                      <button class="btn-open-modal" onclick="openModal2()">설명 더보기</button>
                      
                      <script src="js/modalcontent.js"></script>
                      </div>
                  </div>
              </div>


              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                              <a href=""><img src="images/cocainimg.jpg" width="100%" alt="Image" class="img-fluid"></a>
                      
                      <div class="category"><h3>코카인</h3></div>  
                      </figure>
                      <div class="course-1-content pb-4">
                      <h2>각성제, 코카 나무 잎에서 추출하는 알칼로이드, 현실 감각 저하, 강렬한 행복감, 흥분해서 몸을 가만히 두지 못하는 것 등이 있다.</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close">은어: 크랙(crack) 등</span>
                          <span class="icon-close">가격 : 1온스당 5600달러</span>
                          <span class="icon-close">복용시: 동공확장, 두통 등</span>
                          <span class="icon-close">금단 증상 : 우울, 불면증 등</span>
                          <span class="icon-close">처벌 :10년 이하의 징역형 등</span>
                      </div>
                      <p class="desc mb-4">코카인은 소량 또는 한 번의 복용할새 중독증상이 빠르게 일어날 수 있다 
                        이는 뇌를 자극하는 도파민 경로 중 하나로, 보상 자극에 대한 동기 및 욕구를 조절하여 보상에 관련된 운동 기능 학습을 촉진 시킨다. </p>
                        <div id="myModal3" class="modal">
                          <div class="modal_body">
                              <img src="images/cocaine.jpg" alt="코카인" >
                              <h2>코카인</h2>
                              <p>
                                <h4 class="drugtitle">은어 </h4>  
                                <h5 class="drugcontent">크랙(crack), 고체 덩어리,blow,c,candy
                                  병원 사용 : 안과와 이빈인후과<br></h5>
                                
                                <h4 class="drugtitle">단기 복용시</h4>
                                <h5 class="drugcontent">혈관이 좁아짐, 동공 확장, 두통, 행복감, 체온, 심박동, 혈압 증가, 복통과 메스꺼움,
                                  힘이 솟음, 각성, 불면, 불안, 변덕스럽고 공격적인 행동, 공황장애,
                                  편집증, 정신병, 불규칙한 심장박동,
                                  심장마비, 뇌졸중, 발작, 혼수</h5>
                                
                                <h4 class="drugtitle">장기 복용시</h4>
                                <h5 class="drugcontent">코로 코카인을 흡입한 결과 때문인 후각 상실, 코피, 코 손상과 장애,
                                  혈액 부족으로 인한 장 조직 감염과 괴사,
                                  영양실조/식욕저하,
                                  체중 감소, 편집증, 뇌졸중 및 발작(한번 복용으로도 충분히 가능)
                                  코로 코카인을 흡입한 결과로 인한 후각 상실, 코피, 코 손상과 장애,
                                 혈액 부족으로 인한 장 조직 감염과 괴사,
                                 영양실조/식욕저하,
                                 체중 감소, 편집증, 뇌졸중 및 발작(한번 복용으로도 충분히 가능)<br></h5>
                                
                                <h4 class="drugtitle">금단 현상</h4>
                                <h5 class="drugcontent">우울, 피로감, 식욕 증가, 불면증, 악몽, 느린 행동/움직임, 
                                  불안, 환각, 피부를 찌르거나 벌레가 피부에 기어 다니는 듯한 착각                                    
                                  코카인은 소량 또는 한 번의 복용으로도 중독 증세가 더 심하고 
                                  빠르게 나타날 수 있는데, 
                                  이는 코카인 약제가 직접 뇌의 
                                  보상 회로(Mesolimbic Pathway)에 작용하기 때문이다. 
                                  이는 짜릿함, 황홀감, 기분 좋음과 관련된 물질인 도파민의 경로 중 하나로, 보상 자극에 대한 동기와 욕구를 조절하고 
                                  ＂강화＂와 ＂보상＂에 관련된 운동 기능 학습을 촉진시킨다. 따라서 주관적으로 생각하는 쾌감에 대한 인식도 바꿔버릴 수 있다.
                                   또한, 보상(여기서는 코카인)을 기대하는 동안에는 중뇌-변연계 경로 신경세포의 발화율이 증가하는데, 이는 갈망(carving)이란 현상의 원인이 되며,
                                   마약 특히 코카인의 경우 더 심한 약물을 향한 갈망, 의존을 불러일으킨다.
                                  결론적으로 코카인은 보상 회로에 자극하여 동기와 욕구를 코카인을 향하도록 급진적으로 바꾼다는 뜻</h5>
                              </p>
                          </div>
                          <button onclick="closeModal3()" class="btn-close-modul">지식페이지이동</button>
                      </div>
                      
                      <div id="overlay3" class="overlay"></div>
                      
                      <!-- 버튼 클릭 시 모달 열기 -->
                      <button class="btn-open-modal" onclick="openModal3()">설명 더보기</button>
                      
                      <script src="js/modalcontent.js">
                          
                      </script>
                      </div>
                  </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                              <a href=""><img src="images/heroin.jpg" alt="Image" width="100%" class="img-fluid"></a>
                      
                      <div class="category"><h3>헤로인</h3></div>  
                      </figure>
                      <div class="course-1-content pb-4">
                      <h2> 억제제 ,아편(양귀비)을 정제한 모르핀을 반 합성해 만드는 마약,극단적인 쾌락과 황홀감이 지속되며 의식이 없는 상태에서 자신이 쿠토물과 질식사할수도있다.</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close">은어: 히로인, 정키 등</span>
                          <span class="icon-close">가격 :1온스당 2800달러</span>
                          <span class="icon-close">복용시 : 자율 호흡본능 X 등</span>
                          <span class="icon-close">금단증상 : 불안, 불쾌감 등</span>
                          <span class="icon-close">처벌 :1년이상의 징역형 등</span>
                      </div>
                      <p class="desc mb-4">만약 줄일려고 할때 내성이 강한 헤로인 특성상 살짝만 줄여도 구토,설사 등 엄청난 고통을 한번에 받게된다. 그래서 대부분 어쩔수없이 다시하게된다.</p>
                      <div id="myModal4" class="modal">
                        <div class="modal_body">
                            <img src="images/heroin.jpg" alt="헤로인">
                            <h2>헤로인</h2>
                            <p>
                              <h4 class="drugtitle">헤로인</h4>
                              <h5 class="drugcontent">아편(양귀비)을 정제한 모르핀을 반 합성해 만드는 마약
                                </h5>
                                
                              <img src="images/heroinebu.jpg"><br>
                              <h4 class="drugtitle">복용</h4>
                              <h5 class="drugcontent">극단적인 쾌락과 황홀감이 지속하며 의식이 없는 상태에서 자신이 구토물과 질식사 할 수도 있다.</h5>
                              <h4 class="drugtitle">장기복용시</h4>
                              <h5 class="drugcontent">헤로인은 억제제에 속하는 약물이며, 움직일 마음도 안 들고 숨쉬기도 귀찮아지고 극단적인 도취감을 느끼게 한다.
                                과다 복용으로 인한 자율 호흡 본능이 사라지고 헤로인에 의해 호흡기 통증 또한 없어져 자신이 숨을 안 쉬고 있다는 상황을 인지하지 
                                못하게 되어 질식사할 수도 있다.
                                또한, 해피 드러거들 사이에서 극도의 약효를 귀찮아지고 
                                아예 헤로인을 과잉 투여하거나 헤로인과 코카인 같은 
                                흥분제 계열 마약을 섞은 스피드볼을 사용하는 때도 있다.<br>
                                
                              
                              <img src = "images/heroin withdrawalsymptoms.jpg" style="text-align: center;"><br>
                              만약 줄이려고 할 때 내성이 강한 헤로인 특성 때문에 조금만 줄여도 
                              구토와 설사 등 엄청난 고통을 한 번에 받게 되어 대다수가 
                              어쩔 수 없이 살기 위해 약을 하게 된다.
                              이 약물을 하고서 온전히 살아남은 사례는 거의 없다.
                              비치명적 과다 복용에 대한 몇 가지 이유가 제시되었습니다: 평
                              소보다 높은 복용량(55%), 일반적인 헤로인보다 강한 것(40%),
                              에탄올과 결합한 헤로인(30%), 금주 후 헤로인 사용(28%), 고의
                              적 자해(4%)(53, 56). 치명적이지 않은 헤로인 과다 복용을 경험
                              한 약물 사용자는 약물 사용 이력이 더 길고 헤로인에 더 의존할 가
                              능선이 높으며 중독 치료를 받을 가능성이 낮습니다(55). 그랬던
                              것처럼 헤로인 관련 사망에서 볼 수 있듯이(46), 다른 약물의 동시 사용
                              은 과다복용의 주요 위험 요소입니다.</h5>
                              <h4 class="drugtitle">금단증상</h4>
                              <h5 class="drugcontent">땀, 불안, 불쾌감, 우울증, 재채기, 근육과 뼈통증,
                                메스꺼움, 구토, 설사, 경련, 눈물, 발열, 수면장애, 닭살, 불면증, 설사, 남/여 의지와 상관없이 중요부위 흥분.</h5>
                            </p>
                        </div>
                        <button onclick="closeModal4()" class="btn-close-modul">지식페이지이동</button>
                    </div>
                    
                    <div id="overlay4" class="overlay"></div>
                    
                    <!-- 버튼 클릭 시 모달 열기 -->
                    <button class="btn-open-modal" onclick="openModal4()">설명 더보기</button>
                    
                    <script src="js/modalcontent.js">
                        
                    </script>
                      </div>
                  </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                  <div class="course-1-item">
                      <figure class="thumnail">
                              <a href=""><img src="images/LSDimages.jpg" alt="Image"  width="100%" class="img-fluid" height="600px"></a>
                      
                      <div class="category"><h3>LSD</h3></div>  
                      </figure>
                      <div class="course-1-content pb-4">
                      <h2>맥각균에서 합성한 물질로서 , 자연적으로 형성되는
                        뇌 신경전달물질인 세로토닌과 화학구조가 유사하며,
                        백색 분말로 맛이나 냄새가 없는 것이 특징이다</h2>
                      <div class="rating text-left mb-3">
                          <span class="icon-close ">은어 : Psyche,Delos 등</span>
                          <span class="icon-close ">가격 :  "히트"당 $5-20</span>
                          <span class="icon-close "> 복용시 :신체 경련, 환각 등</span>
                          <span class="icon-close ">금단증상 : X</span> 
                          <span class="icon-close ">처벌:10년 이하의 징역 등</span>
                      </div>
                      <p class="desc mb-4">LSD 환각을 느껴본 동물들은 고양이가 쥐를 무서워할 수도 있고 거미가 거미집을 못 만드는 경우가 생긴다.</p>
                      <div id="myModal5" class="modal">
                        <div class="modal_body">
                            <img src="images/LSDimg.jpg" alt="LSD">
                            <h2>LSD</h2>
                            <p><h4 class="drugtitle">LSD</h4>
                              <h5 class="drugcontent">맥각균에서 합성한 물질로서 , 자연적으로 형성되는
                                뇌 신경전달물질인 세로토닌과 화학구조가 유사하며,
                                백색 분말로 맛이나 냄새가 없는 것이 특징이다.</h5>
                              <h4 class="drugtitle">단기 복용시</h4>
                              <h5 class="drugcontent">강한 환각을 초래하지만, 신체적 의존성은 없는 수준
                                복용량에 따른 치사 위험성 역시 거의 없다, 반수치사량은 카페인보다도 높다.
                                
                                대신 경험의 특성상 정신적인 의존도가 발생할 수도 있다.
                                내성이 빠르게 발달하나 복용을 중단하면 며칠 이내로 사라진다고 알려졌다.
                                독성도 매우 적어 과다 복용으로 중태에 빠진 사례가 거의 없다.
                              
                              <img src="images/LSD3.png">
                              <h4 class="drugtitle">장기 복용시</h4>
                              <h5 class="drugcontent">온몸이 불에 타는듯한 고통이 느껴지며
                                신체 경련과 환각, 극심한 공포, 불안, 두려움이 나타날 수도 있다.
                                뇌와 염색체가 손상되며, 동공확대, 심박동과 혈압 상승, 수전증, 오한
                                등의 증상이 나타난다.
                                동물실험에선
                                고양이가 쥐를 무서워하거나 거미가 거미집을 못 만드는 경우가 생긴다.</h5>
                              <h4 class="drugtitle">처벌</h4>
                              <h5 class="drugcontent">  LSD 마약을 투약한 경우 
                                10년 이하의 징역 또는 
                                1억 원 이하의 벌금을 물리게 됩니다.</h5>
                              
                            </p>
                        </div>
                        <button onclick="closeModal5()" class="btn-close-modul">지식페이지이동</button>
                    </div>
                    
                    <div id="overlay5" class="overlay"></div>
                    
                    <!-- 버튼 클릭 시 모달 열기 -->
                    <button class="btn-open-modal" onclick="openModal5()">설명 더보기</button>
                    
                    
                      </div>
                  </div>
              </div>

          </div>
      </div>
  </div>

  <div class="site-section" id="board">
    <div class="container">
        <div class="board_wrap">
            <div class="board_title">
                <strong>게시판</strong>
                <p>여기서 부터 게시판 입니다!!!!</p>
            </div>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                        <div class="num">번호</div>
                        <div class="title">제목</div>
                        <div class="writer">작성자</div>
                        <div class="date">작성일</div>
                        <div class="count">조회수</div>
                        <div class="likes">likes</div>
                    </div>
                    <div>
                        <div class="num">5</div>
                        <div class="title"><a href="GoboardView.do">글이 얼마나 길게 들어가니느니ㅏ두보여주ㅜㅏㅓ아직더들어가야되네</a></div>
                        <div class="writer">김이름</div>
                        <div class="date">2021.1.15</div>
                        <div class="count">33</div>
                        <div class="likes">0</div>
                    </div>
                    <div>
                        <div class="num">4</div>
                        <div class="title"><a href="GoboardView.do">글 제목이 들어갑니다.</a></div>
                        <div class="writer">김이름</div>
                        <div class="date">2021.1.15</div>
                        <div class="count">33</div>
                        <div class="likes">0</div>
                    </div>
                    <div>
                        <div class="num">3</div>
                        <div class="title"><a href="GoboardView.do">글 제목이 들어갑니다.</a></div>
                        <div class="writer">김이름</div>
                        <div class="date">2021.1.15</div>
                        <div class="count">33</div>
                        <div class="likes">0</div>
                    </div>
                    <div>
                        <div class="num">2</div>
                        <div class="title"><a href="GoboardView.do">글 제목이 들어갑니다.</a></div>
                        <div class="writer">김이름</div>
                        <div class="date">2021.1.15</div>
                        <div class="count">33</div>
                        <div class="likes">0</div>
                    </div>
                    <div>
                        <div class="num">1</div>
                        <div class="title"><a href="GoboardView.do">글 제목이 들어갑니다.</a></div>
                        <div class="writer">김이름</div>
                        <div class="date">2021.1.15</div>
                        <div class="count">33</div>
                        <div class="likes">0</div>
                    </div>
                </div>
                <div class="board_page">
                    <a href="#" class="bt first"><<</a>
                    <a href="#" class="bt prev"><</a>
                    <a href="#" class="num on">1</a>
                    <a href="#" class="num">2</a>
                    <a href="#" class="num">3</a>
                    <a href="#" class="num">4</a>
                    <a href="#" class="num">5</a>
                    <a href="#" class="bt next">></a>
                    <a href="#" class="bt last">>></a>
                </div>
                
                
                  <div id="boardStart" class="board_write_wrap">
                    <div class="board_write">
                        <div class="title">
                            <ul>
                                <dt>제목</dt>
                                <dd><input type="text" placeholder="제목 입력" style="width: 100%;"></dd>
                            </ul>
                        </div>
                        <!-- <div class="info">
                            <dl>
                                <dt>글쓴이</dt>
                                <dd><input type="text" placeholder="글쓴이 입력"></dd>
                            </dl>
                            <dl>
                                <dt>비밀번호</dt>
                                <dd><input type="password" placeholder="비밀번호 입력"></dd>
                            </dl>
                        </div> -->
                        <div class="cont">
                            <textarea placeholder="내용 입력"></textarea>
                        </div>
                    </div>
                    <div class="bt_wrap">
                      <a href="#write" class="on">등록</a>
                      <!--<a href="#">수정</a>-->
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
    

  </div>




  <!-- .site-wrap -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="assets/js/modalcontent.js"></script>
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