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

.top-tab {
  position: sticky;
  top: 30px;
  z-index: 100;

  width: 180px;
  margin: 30px auto;          /* ⭐ 위아래 여백 */

  background: rgba(90, 90, 90, 0.85);
  border-radius: 15px;

  display: flex;
  justify-content: space-around;
  align-items: center;

  padding: 6px 0;             /* ⭐ 버튼 높이 줄이기 */
  backdrop-filter: blur(6px);
}

.top-tab .tab {
  position: relative;
  color: #fff;
  text-decoration: none;

  font-size: 16px;            /* ⭐ 글씨 크기 줄임 */
  font-weight: 600;

  padding: 16px 14px;          /* ⭐ 좌우·상하 여백 축소 */
}

/* active 밑줄 유지 */
.top-tab .tab.active::after {
  content: "";
  position: absolute;
  bottom: -4px;               /* 살짝 위로 */
  left: 50%;
  transform: translateX(-50%);

  width: 60%;
  height: 3px;                /* 밑줄도 조금 얇게 */
  background: #fff;
  border-radius: 10px;
}



.mainphoto {
    width: 100%;
    height: 610px;
    margin-top: 55px;
    margin-bottom: 130px;
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
  width: 1150px;
  height: 550px;
  margin-left: 60px;
  background: #fff;
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center; 
  box-shadow: 
  0 8px 20px rgba(0, 0, 0, 0.06),
  0 2px 6px rgba(0, 0, 0, 0.04);
}

.product-img img {
  width: 100%;
  height: 100%;
  object-fit: fit;
  border-radius: 15px; 
}

.product-desc h2 {
  font-size: 35px;
  margin-top: 180px;
  margin-bottom: 16px;
}

.product-desc p {
  font-size: 20px;
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

.productvideodesc {
  text-align: center;
}

/* 비디오 영역 */
.productvideo {
  position: relative;
  width: 100%;
  max-width: 1100px;
  aspect-ratio: 16 / 9;
  margin: 40px auto 120px;
  border-radius: 15px;
  overflow: hidden;
  background: #000;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
}

/* 썸네일 이미지 */
.video-thumb {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* 재생 버튼 */
.play-btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  
  width: 80px;
  height: 80px;
  border-radius: 50%;
  border: none;
  cursor: pointer;

  background: rgba(255,255,255,0.9);
  font-size: 28px;
  box-shadow: 0 6px 20px rgba(0,0,0,0.2);
}

.play-btn:hover {
  transform: translate(-50%, -50%) scale(1.05);
}
.productvideo iframe {
  width: 100%;
  height: 100%;
  border: 0;
}

.coke-banner {
  max-width: 1100px;
  margin: 0 auto 120px;
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

.overlap-row {
  position: relative;
  max-width: 1100px;
  height: 260px;          /* ⭐ 줄여야 겹친다 */
  margin-top: 60px;
  margin-bottom: 400px; 
  margin-left: auto;
  margin-right: auto;
}

/* 공통 카드 */
.overlap-row .card {
  position: absolute;
  border-radius: 20px;
  box-shadow: 0 8px 24px rgba(0,0,0,0.1);
}

.overlap-row .text-card {
  width: 520px;
  height: 520px;
  padding: 36px;

  background: #fff;

  left: 0;
  top: -30px;             /* ⭐ 이게 핵심 */
  z-index: 2;
}

.overlap-row .image-card {
  width: 640px;
  height: 510px;

  right: 0;
  top: 40px;              /* ⭐ 기준 카드 */
  z-index: 1;
}

.image-card img {
  width: 100%;
  height: 100%;
  object-fit: fit;
  border-radius: 15px; 
}
.card text-card h3{
 font-size: 36px;
 
}
/* 레드 카드 */
.coca-red {
  background: #e60023;
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 26px;
  font-weight: bold;
}

.overlap-row.reverse .text-card {
  right: 0;
  left: auto;
  top: -30px;
}

.overlap-row.reverse .image-card {
  left: 0;
  right: auto;
}

.title {
font-size: 27px;
margin-top: 30px;
margin-left: 30px;
font-weight: bold;
}

.desc {
  margin-left: 30px;
  margin-top: 5px;
 }
 
 .outline-btn {
   padding: 5px 100px;
   font-size: 17px;
   font-weight:bold;
   border: 2px solid black;
   border-radius: 40px;
   background-color: white;
   margin-left: 30px;
   margin-top: 180px;
   
 }
  .outline-btn2 {
   padding: 5px 100px;
   font-size: 17px;
   font-weight:bold;
   border: 2px solid black;
   border-radius: 40px;
   background-color: rgb(229, 229, 229);
   margin-left: 0px;
   margin-top: 40px;
   
 }
</style>
</head>

<body>
<%@ include file="../nav.jsp" %>
<div class="logo">
<img alt="" src="${pageContext.request.contextPath}/cocacola/images/coca_cola_original_logo.png">
</div>

<div class="top-tab">
  <a href="${pageContext.request.contextPath}/cocacola/brandDetail?brandId=${param.brandId}&tab=home"
     class="tab ${param.tab == null || param.tab == 'home' ? 'active' : ''}">
     홈
  </a>

  <a href="${pageContext.request.contextPath}/cocacola/brandDetail?brandId=${param.brandId}&tab=products"
     class="tab ${param.tab == 'products' ? 'active' : ''}">
     제품 정보
  </a>
</div>



<div class="mainphoto">
<img alt="" src="${pageContext.request.contextPath}/cocacola/images/brands-home-full-hero_1440x810.jpg" class="mphoto">
</div>

<div class="overlap-row">
  <div class="card text-card">
    <h3 class ="title">Real Magic
    <br>#함께라는 마법</h3>
    <p class="desc">
	소중한 사람들과 보내는 즐거운 시간!<br>
	일상이 마법같이 행복해지는 순간,<br>
	짜릿한 Real Magic이 펼쳐진다!<br>
	함께라는 마법, 코카-콜라와 함께.
    </p>
  </div>

  <div class="card image-card coca-red">
    <img alt="" src="${pageContext.request.contextPath}/cocacola/images/campaign_card_01_1280_1024.png" class="mphoto">
  </div>
</div>


<div class="overlap-row reverse">
  <div class="card image-card photo">
  <img alt="" src="${pageContext.request.contextPath}/cocacola/images/campaign_card_02_1280_1024.png" class="mphoto">
  </div>

  <div class="card text-card">
    <h3 class ="title">레드리본 맛집,<br>코카-콜라와 즐겨보세요!</h3>
    <p class="desc">
      작지만 큰 행복을 완성하는 두 가지 조건.<br>
	맛있는 음식, 그리고 코카-콜라!<br>
	코카-콜라와 블루리본 서베이의 컬래버레이션으로 탄생한 새로<br>
	운 맛집의 상징, ‘레드리본’을 만나보세요.
    </p>
    <a href="${pageContext.request.contextPath}/cocacola/cokemeal">
  <button class="outline-btn">자세히 알아보기</button>
    </a>
  </div>
</div>

<div class="product-list">

  <div class="product-item">
      <div class="product-desc">
      <h2>제품 정보</h2>
      <p>일상 속 마법 같은 짜릿한 순간을 함께 해온 코카-콜라! 130여 년
         넘게 전 세계 200여 개국에서 사랑받는 브랜드로 자리매김하고 있습니다.</p>
         
         <button class="outline-btn2">자세히 알아보기</button>
    </div>
    <div class="product-img">
    
      <img src="${pageContext.request.contextPath}/cocacola/images/campaign-card_03_updated.png" alt="">
    </div>
  </div>

</div>
<div class="productvideodesc">
<h1>비디오</h1>
<p>식사를 더욱 즐겁게 만들어주는 <br> ​
나의 미식 파트너, 코카-콜라
</p>
  <div class="productvideo" id="videoBox">
    <!-- 썸네일 -->
    <img src="${pageContext.request.contextPath}/cocacola/images/cok.jpg" class="video-thumb" alt="video thumbnail">

    <!-- 재생 버튼 -->
    <button class="play-btn" onclick="playVideo()">▶</button>
  </div>
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

<script>
function playVideo() {
  const box = document.getElementById("videoBox");
  box.innerHTML = `
    <iframe
      src="https://www.youtube.com/embed/Ni4E5DBWrv8?autoplay=1&mute=1&rel=0"
      frameborder="0"
      allow="autoplay; encrypted-media"
      allowfullscreen>
    </iframe>
  `;
}
</script>


</body>
</html>
