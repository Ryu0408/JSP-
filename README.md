# JSP(SERVLET,모델2) : 설문조사 만들기

# 1. MainPage

![mainPage](https://user-images.githubusercontent.com/57667994/82121311-036d4400-97c7-11ea-92ab-af7c6880ace7.png)

# 2. QuestionPage

![questionPage](https://user-images.githubusercontent.com/57667994/82121903-5d700880-97cb-11ea-869a-5ca33d4ecb7c.png)

# 3. ResultPage

![resultPage1](https://user-images.githubusercontent.com/57667994/82121904-5f39cc00-97cb-11ea-8132-e4b7bfdc945b.png)

![resultPage2](https://user-images.githubusercontent.com/57667994/82121906-606af900-97cb-11ea-99cb-d287de7435f4.png)

# 4. 구축환경
  1) HTML+CSS(부트스트랩)
  2) WAS(JSP+SERVLET, Apache Tomcat)
  3) IDE(Eclipse)
  3) 데이터베이스(OracleDB)
  4) 보완사항
     - 이번 개발을 참고하여 차후 Spring Framework로 개발할 예정
     - Spring Framework에서는 MODEL2에 대한 더 자세하고 깊은 개발을 할 예정
       -> 게시판 구현(로그인(구글, 네이버 로그인 포함) 인증(메일, 휴대폰 인증), 댓글(SQL JOIN 활용) 등)

# 5. 주요기능
  1) MainPage에서 기존에 설문되어 있는 전화번호가 있으면 설문한 인원으로 판단하여 설문조사를 금지시킴
  2) 각 질문에 대한 답변을 select한 후 결과창에서 각 질문에 대한 비율을 그래프로 표시함
