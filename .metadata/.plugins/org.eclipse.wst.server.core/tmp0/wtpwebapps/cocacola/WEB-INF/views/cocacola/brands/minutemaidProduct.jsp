<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${brand.brandName} | Coca-Cola</title>

<style>

html {
  scroll-behavior: smooth;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: rgb(229, 229, 229);
    color: #000;
    overflow-y: scroll;
}

.logo {
    background-color: white;
    width: 100%;
    text-align: center;
    height: 100px;
    margin: auto;
    overflow: hidden;
    
}

.logo img{
    text-align: center;
    object-fit: fit;
    height: 50%;
    margin-top: 25px;

}

.mainphoto {
    width: 100%;
    height: 610px;
    margin-top: 55px;
    margin-bottom: 45px;
   text-align: center;
   overflow: hidden;
}
.mphoto {
     border-radius: 15px;
     width: 1280px;
     height: 610px;
     object-fit: cover;
}

.product-top {
     text-align: center;
     margin-bottom: 10px;
}

.product-top h1{
  margin-bottom: 15px;
}

.product-top p{
  margin-bottom: 50px;
}

.product-list {
  width: 100%;
  max-width: 1100px;
  margin: 0 auto;
}

.product-item {
  display: flex;
  gap: 60px;
  margin-bottom: 120px;
}

/* 이미지 영역 */
.product-img {
  width: 550px;
  height: 550px;
  background: #fff;
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 60px; 
  box-shadow: 
  0 8px 20px rgba(0, 0, 0, 0.06),
  0 2px 6px rgba(0, 0, 0, 0.04);
}

.product-img img {
  width: 80%;
  height: 80%;
  object-fit: fit;
  border-radius: 15px; 
}

/* 설명 영역 */
.product-desc {
  flex: 1;
}

.product-desc h2 {
  font-size: 35px;
  margin-bottom: 16px;
}

.product-desc p {
  font-size: 16px;
  font-weight: border;
  line-height: 1.6;
  color: black;
}

/* 🔥 짝수번째는 좌우 반전 */
.product-item:nth-child(even) {
  flex-direction: row-reverse;
}

.product-item:last-child {
  margin-bottom: 60px;
}

.coke-banner {
  max-width: 1100px;
  margin: 90px auto 120px;
  padding: 26px 40px;

  background: #000;
  color: #fff;
  border-radius: 18px;

  display: flex;
  align-items: center;
  justify-content: space-between;
}

.banner-text {
  font-size: 26px;
  font-weight: 700;
}

/* 오른쪽 아이콘 */
.banner-icons {
  display: flex;
  gap: 14px;
}

.banner-icons a {
  width: 38px;
  height: 38px;
  border-radius: 50%;
  border: 1px solid #fff;

  display: flex;
  align-items: center;
  justify-content: center;

  color: #fff;
  text-decoration: none;
  font-size: 16px;

  transition: background 0.3s, color 0.3s;
}

.banner-icons a:hover {
  background: #fff;
  color: #000;
}

/* 1개일 때 가운데 */
.brand-list.single {
    grid-template-columns: 1fr;
}

/* 브랜드 카드 */
.brand-item {
    width: 240px;
    height: 240px;
    background-color: white;
    border-radius: 30px;
    display: flex;                 /* ⭐ 핵심 */
    align-items: center;           /* 세로 중앙 */
    justify-content: center; 
    margin-bottom: 15px;      /* 가로 중앙 */
    transition: transform 0.25s ease;
}


#brandList.single {
    grid-template-columns: 1fr;
    justify-items: center;
}

#brandList.double {
    grid-template-columns: repeat(2, 240px);
    justify-content: center;
}
/* 이미지 */
.brand-item img {
    width: 200px;
    height: auto;
    align-items: center;
    display: block;
}
.brand-item.hidden {
    display: none;
}
/* 브랜드 리스트 */
#brandList {
        margin: 40px auto;          /* 가운데 정렬 */
    max-width: 780px;          /* ← 이게 핵심 */
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    justify-items: center;
    grid-auto-flow: dense;
    text-align: center;
}

.brand-link:hover .brand-item {
    transform: scale(1.07);
    cursor: pointer;
}

.brand-link {
    text-decoration: none;
    color: inherit;
    display: block;
}

.back-button-wrapper {
  display: flex;
  justify-content: center;
  margin: 20px 0 40px;
}

.back-button {
  width: 280px;
  height: 35px;
  background: #000;
  color: #fff;
  font-size: 16px;
  font-weight: 600;
  border: none;
  border-radius: 26px;
  cursor: pointer;
  transition: background 0.2s ease;
}

.back-button:hover {
  background: #222;
}


</style>
</head>

<body>
<%@ include file="../nav.jsp" %>
<div class="logo">
  <img alt="${brand.brandName} 로고" 
       src="${pageContext.request.contextPath}/cocacola/images/${brand.brandLogoUrl}" />
</div>


<div class="mainphoto">
  <img alt="${brand.brandName} 메인 이미지" 
       src="${pageContext.request.contextPath}/cocacola/images/${brand.brandMainphotoUrl}" 
       class="mphoto" />
</div>

<div class="product-top">
  <h1>제품</h1>
  <p>${brand.brandDescription}</p>
</div>

<!-- 제품 목록 출력 -->
<div class="product-list">
  <c:forEach var="product" items="${brand.products}">
    <c:if test="${product.productId >= param.start && product.productId <= param.end}">
      <div class="product-item" id="product-${product.productId}">
        
        <div class="product-img">
          <img src="${pageContext.request.contextPath}/cocacola/images/${product.productImageUrl}">
        </div>

        <div class="product-desc">
          <h2>${product.productName}</h2>
          <p>${product.productDescription}</p>
        </div>

      </div>
    </c:if>
  </c:forEach>
</div>
<div class="back-button-wrapper">
  <button class="back-button" onclick="history.back()">뒤로가기</button>
</div>

<div class="coke-banner">
  <div class="banner-text">
    다양한 곳에서 코카-콜라를 만나보세요
  </div>

  <div class="banner-icons">
    <a href="#">▶</a>
    <a href="#">X</a>
    <a href="#">◎</a>
    <a href="#">f</a>
  </div>
</div>
<%@ include file="../Footer.jsp" %>

</body>
</html>
