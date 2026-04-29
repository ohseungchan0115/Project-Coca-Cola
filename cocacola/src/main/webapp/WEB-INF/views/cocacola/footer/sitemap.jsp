<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>사이트 맵</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI",
                   "Apple SD Gothic Neo", "Noto Sans KR", Arial, sans-serif;
    }

    body {
      margin: 0;
      background: #f7f7f7;
      color: #000;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 40px 24px 80px;
    }

    h1 {
      font-size: 20px;
      margin-bottom: 24px;
    }

    h2 {
      font-size: 18px;
      margin: 48px 0 16px;
    }

    hr {
      border: none;
      border-top: 1px solid #ddd;
      margin: 16px 0 24px;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 24px 40px;
    }

    ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    li {
      margin-bottom: 8px;
    }

    a {
      text-decoration: none;
      color: #000;
      font-size: 14px;
    }

    a:hover {
      text-decoration: underline;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 40px;
    }

    @media (max-width: 768px) {
      .grid,
      .footer-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>
<%@ include file="../nav.jsp" %>
  <div class="container">
    <h1>사이트 맵</h1>
    <hr />

    <!-- Brands -->
    <h2>Brands</h2>
    <a href="${pageContext.request.contextPath}/cocacola/brands"><strong>브랜드 전체 보기</strong></a>
    <hr />

    <div class="grid">
      <ul>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=1">코카-콜라</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=2">스프라이트</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=3">환타</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=4">닥터페퍼</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=16">캐나다 드라이</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=17">써니텐</a></li>
      </ul>

      <ul>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=18">갈배사이다</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=5">파워에이드</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=6">토레타!</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=7">씨그램</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=10">글라소비타민워터</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=13">강원평창수</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=14">휘오</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=15">울림워터</a></li>
      </ul>

      <ul>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=8">조지아</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=9">미닛메이드</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=20">코코팜</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=18">갈아만든 배</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=19">과일촌</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=11">태양의 식후비법</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=12">태양의 마테차</a></li>
        <li><a href="${pageContext.request.contextPath}/cocacola/brands/brandDetail?brandId=21">일로하스</a></li>
      </ul>
    </div>

    <!-- Our Company -->
    <h2>Our Company</h2>
    <hr />
    <ul>
      <li><a href="${pageContext.request.contextPath}/cocacola/OurCompany?page=company"><strong>Coca-Cola Company (회사 소개)</strong></a></li>
      <li><a href="${pageContext.request.contextPath}/cocacola/OurCompany?page=since"><strong>Since 1886 (히스토리)</strong></a></li>
    </ul>

    <!-- Discover -->
    <h2>Discover</h2>
    <hr />
    <ul>
      <li><a href="${pageContext.request.contextPath}/cocacola/Discover1/brandstory"><strong>Brand Story (브랜드 스토리)</strong></a></li>
      <li><a href="${pageContext.request.contextPath}/cocacola/Discover1/coke_meal"><strong>Coke & Meal (코크앤밀)</strong></a></li>
      <li><a href="${pageContext.request.contextPath}/cocacola/Discover1/originals"><strong>Originals (오리지널 콘텐츠)</strong></a></li>
      <li><a href="#"><strong>Opener (크리에이터 오프너)</strong></a></li>
      <li><a href="#"><strong>Creation (코카-콜라 크리에션)</strong></a></li>
    </ul>

    <!-- Sustainability -->
    <h2>Sustainability</h2>
    <hr />
    <ul>
      <li><a href="#"><strong>Sustainability (지속가능성)</strong></a></li>
    </ul>
  </div>
  <%@ include file="../Footer.jsp" %>
</body>
</html>
