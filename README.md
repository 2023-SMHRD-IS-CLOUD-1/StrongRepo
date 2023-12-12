# Drug is Death (팀명: 강력 1팀)
![image](https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/assets/142488262/921c791e-0e8f-4e35-8c21-e23a3cdbf3f3)



## 서비스 소개
* 서비스명: openCV기반 10대 청소년 대상 마약 예방 교육 자료 및 체험 서비스
<br>

* 서비스 목표
  - 마약범죄 예방을 위한 서비스를 개발, 마약 관련 범죄 발생 하락을 기대
  - 마약사범의 저연령화 현상의 심각성에 초점을 두어 청소년을 위한 교육용 콘텐츠 개발
  - 마약 관련 통계를 제공
  - 마약 투약 후 변화된 사용자의 얼굴 이미지를 보여주는 참여 형식의 필터 서비스를 제공함으로써 경각심과 흥미를 유발
  - 수집, 분석한 데이터를 다른 기관과 공유
<br>

## 프로젝트 기간
2023.11.22 ~ 2023.12.07 (3주)
<br>

## 주요 기능
* 마약 필터
  <details>
    
  - upload_and_receive 함수:
  
    - 역할: 클라이언트로부터 이미지를 업로드 받고, 해당 이미지를 변형한 후 변형된 이미지를 응답으로 전송합니다.
    - 동작 순서:
      - 클라이언트에서 POST 요청으로 이미지를 전송합니다.
      - 전송된 이미지를 받아 transform_image 함수를 호출하여 이미지를 변형합니다.
      - 변형된 이미지를 저장하고 클라이언트에게 응답으로 전송합니다.
      - https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/blob/6653d60388746d631272d773d24645387017eda9/Strong1team2/drug_filter/face_distort%20-%20%EC%B5%9C%EC%A2%85%EB%B3%B8.ipynb#L141
  - transform_image 함수:
  
    - 역할: 이미지를 얼굴 변형 함수를 통해 변형하고, 변형된 이미지를 반환합니다.
    - 동작 순서:
      - 클라이언트로부터 받은 이미지를 face_thin 함수를 사용하여 얼굴을 얇게 만듭니다.
      - face_morph 함수를 사용하여 얼굴을 변형하고, 최종적으로 merge_img 함수를 사용하여 이미지를 합성합니다.
      - 합성된 이미지를 반환합니다.
      - https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/blob/6653d60388746d631272d773d24645387017eda9/Strong1team2/drug_filter/face_distort%20-%20%EC%B5%9C%EC%A2%85%EB%B3%B8.ipynb#L166
  - face_thin 함수:
  
    - 역할: 얼굴을 얇게 만드는 함수입니다.
    - 동작 순서:
      - get_face_68_landmarks 함수를 사용하여 이미지의 얼굴 Landmark를 얻습니다.
      - local_translation_warp 함수를 사용하여 지역적으로 이미지를 변형합니다.
      - https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/blob/6653d60388746d631272d773d24645387017eda9/Strong1team2/drug_filter/face_distort%20-%20%EC%B5%9C%EC%A2%85%EB%B3%B8.ipynb#L312
  - face_morph 함수:
  
    - 역할: 두 이미지의 얼굴을 혼합하는 함수입니다.
    - 동작 순서:
      - affine_transform_and_change_shape 함수를 사용하여 두 얼굴의 형태를 일치시킵니다.
      - triangle_face_morph 함수를 사용하여 삼각형 단위로 얼굴을 혼합합니다.
      - merge_img 함수를 사용하여 최종 이미지를 생성합니다.
      - https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/blob/6653d60388746d631272d773d24645387017eda9/Strong1team2/drug_filter/face_distort%20-%20%EC%B5%9C%EC%A2%85%EB%B3%B8.ipynb#L545
  - 기타 함수들 (local_translation_warp, BilinearInsert, detect_face_and_cut 등):
  
      - 다양한 기능을 수행하는 보조 함수들입니다. 주로 이미지 변형에 사용됩니다.
  - Flask 관련 설정:
  
      - app.run을 통해 Flask 애플리케이션을 실행합니다.
      - 서버는 127.0.0.1 주소와 9000 포트에서 실행되며, 디버그 모드를 사용하고 자동 리로딩을 비활성화합니다.
  </details>
* 대시보드
* 사례 퀴즈
* 현상 체험
* 지식 채널
* 게시판
<br>

## 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white"/>
            <img src="https://img.shields.io/badge/OpenCV-5C3EE8?style=for-the-badge&logo=OpenCV&logoColor=white"/>
            <img src="https://img.shields.io/badge/dlib-008000?style=for-the-badge&logo=Dlib&logoColor=white"/>
            <img src="https://img.shields.io/badge/flask-000000?style=for-the-badge&logo=Flask&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=Jupyter&logoColor=white"/>
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/Oracle 11g-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>


<br>

## 사전 작업

- 이 링크(http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2 )를 통해 받은 압축파일을 풀어 shape_predictor_68_face_landmarks.dat을 model 폴더에 설치하세요.

- 다음과 같은 프로그램의 설치가 필요합니다.

  - Microsoft Visual C++ Build Tools(https://visualstudio.microsoft.com/ko/downloads/)

  - CMake(https://cmake.org/download/)

<br>

## 시스템 아키텍처(구조) 
![image](https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/assets/142488262/f334cf23-22f0-481e-9894-9811c1af3715)
<br>

## 서비스 흐름도
![image](https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/assets/142488262/a4a7a8d8-7052-47eb-8d43-72e7079cc20a)
<br>

## ER다이어그램
![image](https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/assets/142488262/7a109e35-a5b8-4cb1-b73b-f17f5521b1ed)


## 화면 구성

### 로그인/회원가입/회원괸리/회원수정/회원탈퇴
![image](https://user-images.githubusercontent.com/25995055/178401098-95f15a0e-a2de-415e-83d5-883bb4cb0656.png)
<br>

### 옷 정보/코디 추천(날씨, 팁, 오늘의 코디, 참고할 수 있는 코디)
![image](https://user-images.githubusercontent.com/25995055/178401127-287e6de2-4396-49fc-a107-59c4d5cd55c7.png)
<br>

### 일정/고객센터
![image](https://user-images.githubusercontent.com/25995055/178401150-861f0e93-0f40-4fae-98c1-2099bf513c8d.png)
<br>

##  팀원 역할
<table>
  <tr>
    <td align="center"><img src="https://item.kakaocdn.net/do/fd49574de6581aa2a91d82ff6adb6c0115b3f4e3c2033bfd702a321ec6eda72c" width="100" height="100"/></td>
    <td align="center"><img src="https://mb.ntdtv.kr/assets/uploads/2019/01/Screen-Shot-2019-01-08-at-4.31.55-PM-e1546932545978.png" width="100" height="100"/></td>
    <td align="center"><img src="https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2" width="100" height="100"/></td>
    <td align="center"><img src="https://i.pinimg.com/236x/ed/bb/53/edbb53d4f6dd710431c1140551404af9.jpg" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
  </tr>
  <tr>
    <td align="center"><strong>박범석</strong></td>
    <td align="center"><strong>조원제</strong></td>
    <td align="center"><strong>함수연</strong></td>
    <td align="center"><strong>한명훈</strong></td>
    <td align="center"><strong>임혜지</strong></td>
    <td align="center"><strong>하동철</strong></td>
  </tr>
  <tr>
    <td align="center"><b>Project Manager</b></td>
    <td align="center"><b>Backend</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>Backend</b></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/bumseokk/sample" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/jaewon07/sample" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/ahhasueyon/sample" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/hanmyeonghun/sample" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/Limmaji/sample" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/hadongcher/sample" target='_blank'>github</a></td>
  </tr>
</table>

## 트러블슈팅
* 문제1<br>
  - 문제: jupyter notebook과 jsp를 flask로 연결하려 했으나, 404 오류 메시지만 계속 화면에 나타남.
  - 연구:  jupyter notebook 커널 문제로 오류 메시지가 제대로 뜨지 않아 원인을 flask로 여겼으나, 컴퓨터를 재부팅 해 커널 문제를 해결하고 오류 메시지를 확인한 결과, OpenCV 함수에 전달되는 이미지가 NumPy 배열이 아니었다는 간단한 문제였음.
  - 해결: 이미지를 다음과 같이 Numpy 배열로 고침.
https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/blob/f51b476fa0b838710623dbf5f160b2de8e93e859/Strong1team2/drug_filter/face_distort%20-%20%EC%B5%9C%EC%A2%85%EB%B3%B8.ipynb#L177
* 문제2<br>
  - 문제: 댓글 삭제 버튼 클릭 시 DropComment.do가 실행되어서 댓글 삭제 후 페이지로 돌아와서 자동으로 댓글이 삭제된 상태로 보여야 하는데 댓글이 DB에서는 삭제되었으나 화면에서는 F5로 새로고침 하지 않으면 그대로 보이는 문제가 나타남.
  - 연구: 성공 시든 실패 시든 return ＂redirect:/GoboardView.do?id=＂+ 해당 게시글 번호; 로 되돌아가서 다시 해당 페이지가 새로 고침 되는 줄 알았으나 새로고침 되지 않았고, 비동기 통신인 $.ajax를 활용하여서 따로 redirect 주소를 잡아주는 건 상관이 없었음.
  - 해결: 비동기 통신 정보 전송 성공 시 실행되는 success: 문 안쪽에 window.location.reload(); 해당 실행되어서 창을 새로고침 해주는 코드를 넣어줌으로써 삭제 버튼 클릭 시 삭제 된 후 새로고침 되어 화면에 나오도록 해결함.
## 참고문헌

![image](https://github.com/2023-SMHRD-IS-CLOUD-1/StrongRepo/assets/142488262/aee16021-513d-46ad-97db-7c3dcc0f27d1)

