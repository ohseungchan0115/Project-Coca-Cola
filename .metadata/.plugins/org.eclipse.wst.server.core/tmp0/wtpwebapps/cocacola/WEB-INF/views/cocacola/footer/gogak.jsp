<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>고객 안내</title>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


  body {
    background-color: #eee;
    font-family: "Noto Sans KR", "Malgun Gothic", "Apple SD Gothic Neo", sans-serif;
    margin: 0;
    
    color: #222;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    background-color: #eee;
  }
  h2 {
    text-align: center;
    font-weight: 700;
    margin-top: 50px;
    margin-bottom: 40px;
    font-size: 32px;
    
  }
  .section h3 {
    font-size: 1.4rem;
    font-weight: 900;
    margin-bottom: 12px;
  }
  .section p {
  
    font-size: 0.9rem;
    color: #222;
    margin-bottom: 70px;
    line-height: 1.4;
  }
  .bold-text {
    font-weight: 900;
  }
</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
  <div class="container">
    <h2>고객 안내</h2>

    <div class="section">
      <h3>주소</h3>
      <p>서울시 종로구 새문안로 68 흥국생명빌딩 18층 한국 코카-콜라 (<span class="bold-text">03184</span>)</p>
    </div>

    <div class="section">
      <h3>코카-콜라 음료(주) 고객상담실</h3>
      <p>080-024-5999 <small>(상담 시간: 월 ~ 금 09:00 ~ 17:30)</small></p>
    </div>
  </div>
    <%@ include file="../Footer.jsp" %>
</body>
</html>
