<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코카-콜라 Since 1886</title>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
    background-color: #eeeeee;
    margin: 0;
}
.intro-block {
    display: flex;
    align-items: center;
    max-width: 1400px;
    margin: 40px auto;
    padding: 0 40px;
    flex-direction: row;
    justify-content: center;
}
.text-content {
    flex: none;
    width: 550px;
    padding: 140px 60px;
    height: 550px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
    z-index: 10;
    position: relative;
    top: -80px;
}
.text-content h2 {
    font-size: 2.2rem;
    font-weight: 700;
    margin-top: -50px;
    margin-bottom: 20px;
    color: #222;
}
.text-content p {
    font-size: 1rem;
    line-height: 1.6;
    color: #555;
    margin-bottom: auto;
}
.intro-button {
    display: inline-block;
    min-width: 300px;
    text-align: center;
    padding: 7px 30px;
    border: 2px solid #000;
    border-radius: 50px;
    text-decoration: none;
    color: #000;
    font-weight: bold;
    transition: all 0.3s;
    margin-bottom: -50px;
}
.intro-button:hover { background-color: #f0f0f0; }
.image-content {
    flex: none;
    width: 600px;
    height: 550px;
    overflow: hidden;
    border-radius: 10px;
}
.image-content img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}
.intro-block.default-order .text-content { margin-right: -100px; }
.intro-block.reverse-order { flex-direction: row-reverse; }
.intro-block.reverse-order .text-content { margin-left: -100px; }

.special-title {
    text-align: center;
    margin: 10px 0 40px; 
    font-size: 2rem;
    font-weight: 700;
    clear: both;
}
.slider-viewport {
    max-width: 1050px; 
    margin: 0 auto;
    overflow: hidden;
    padding: 10px 0;
}
.slider-track {
    display: flex;
    gap: 20px; 
    transition: transform 0.5s ease-in-out;
}
.card-item {
    flex: 0 0 calc((100% - 40px) / 3); 
    background: #fff;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    display: flex;
    flex-direction: column;
}
.card-item img {
    width: 100%;
    height: 280px;
    object-fit: cover;
}
.card-body {
    padding: 25px;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
}
.card-body h3 {
    font-size: 1.2rem;
    font-weight: 700;
    margin-bottom: 15px;
    color: #222;
}
.card-body p {
    font-size: 0.9rem;
    color: #555;
    line-height: 1.6;
    margin-bottom: 25px;
    flex-grow: 1;
}
.card-more {
    text-decoration: none;
    color: #000;
    font-weight: bold;
    align-self: flex-start;
}
.slider-dots {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin: 30px 0 100px;
}
.dot {
    width: 8px;
    height: 8px;
    background: #ccc;
    border-radius: 50%;
    cursor: pointer;
    transition: 0.3s;
}
.dot.active {
    background: #000;
    width: 25px; 
    border-radius: 10px;
}

#top-banner-area {
    width: 1200px; 
    height: 800px;
    background: url('${pageContext.request.contextPath}/cocacola/OurCompany_images/since_01.png') no-repeat center center;
    background-size: cover;
    margin: 240px auto 0; 
    box-sizing: border-box;
}
#company-description-box {
    display: block;
    max-width: 1050px; 
    margin: 40px auto 150px; 
    padding: 0 10px; 
    font-size: 1.1rem;
    line-height: 1.8;
    color: #333;
    word-break: keep-all;
    box-sizing: border-box;
    text-align: left;
}

/* [기사(News) 섹션 스타일] */
.news-container {
    max-width: 1050px;
    margin: 0 auto 150px;
    padding: 0;
}
.news-item {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 30px 0;
    border-bottom: 1px solid #ddd;
    text-decoration: none;
}
.news-info-box {
    flex: 1;
    margin-right: 50px;
    display: flex;
    flex-direction: column;
}
.news-title {
    color: #000;
    font-size: 1.5rem;
    font-weight: 750;
    margin: 0 0 5px 0;
}
.news-summary {
    color: #000;
    font-size: 1rem;
    line-height: 1.7;
    margin: 0 0 25px 0;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}
.news-more-btn {
    align-self: flex-start;
    padding: 8px 30px;
    border: 2px solid #000;
    border-radius: 50px;
    color: #000;
    font-size: 0.9rem;
    font-weight: bold;
    text-decoration: none;
    transition: 0.3s;
}
.news-more-btn:hover {
    background-color: #000;
    color: #fff;
}
.news-img-box {
    width: 180px;
    height: 140px;
    border-radius: 10px;
    overflow: hidden;
    flex-shrink: 0;
}
.news-img-box img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>
</head>
<body>
<%@ include file="../nav.jsp" %>

<div id="top-banner-area"></div>
<div id="company-description-box">
    <h2 style="text-align:center; color:black;">130여 년간 사람들의 일상 속에서 짜릿함과 행복을 나눠온 코카-콜라! 1886년 탄생부터 오늘이 있기까지 흥미롭고 다양한 이야기들을 만나보세요.</h2>
</div>

<%-- 1. 지그재그 카드 --%>
<c:set var="sinceIdx" value="0" />
<c:forEach var="dto" items="${items}">
    <c:if test="${dto.sectionCode == 'SINCE'}">
        <c:if test="${sinceIdx < 7}">
            <div class="intro-block ${sinceIdx % 2 == 0 ? 'default-order' : 'reverse-order'}">
                <div class="text-content">
                    <h2>${dto.title}</h2>
                    <p>${dto.summary}</p>
                    <a href="${dto.buttonLink}" class="intro-button">더 보기</a>
                </div>
                <div class="image-content">
                    <img src="${pageContext.request.contextPath}/cocacola/OurCompany_images/${dto.imageFilename}" alt="${dto.title}">
                </div>
            </div>
            <br><br><br>
        </c:if>
        <c:set var="sinceIdx" value="${sinceIdx + 1}" />
    </c:if>
</c:forEach>

<%-- 2. 히스토리 슬라이더 --%>
<h2 class="special-title">더 많은 역사 이야기</h2>
<div class="slider-viewport">
    <div class="slider-track" id="sliderTrack">
        <c:forEach var="loop" begin="1" end="2">
            <c:set var="totalIdx" value="0" />
            <c:set var="sliderCount" value="0" />
            <c:forEach var="dto" items="${items}">
                <c:if test="${dto.sectionCode == 'SINCE'}">
                    <c:set var="totalIdx" value="${totalIdx + 1}" />
                    <c:if test="${totalIdx > 7 && sliderCount < 6}">
                        <div class="card-item">
                            <img src="${pageContext.request.contextPath}/cocacola/OurCompany_images/${dto.imageFilename}" alt="${dto.title}">
                            <div class="card-body">
                                <h3>${dto.title}</h3>
                                <p>${dto.summary}</p>
                                <a href="${dto.buttonLink}" class="card-more">더 보기 &rarr;</a>
                            </div>
                        </div>
                        <c:set var="sliderCount" value="${sliderCount + 1}" />
                    </c:if>
                </c:if>
            </c:forEach>
        </c:forEach>
    </div>
</div>
<div class="slider-dots">
    <div class="dot active" onclick="moveSlide(0)"></div>
    <div class="dot" onclick="moveSlide(1)"></div>
    <div class="dot" onclick="moveSlide(2)"></div>
    <div class="dot" onclick="moveSlide(3)"></div>
    <div class="dot" onclick="moveSlide(4)"></div>
    <div class="dot" onclick="moveSlide(5)"></div>
</div>

<%-- 3. 뉴스 섹션 --%>
<div class="news-container">
    <c:forEach var="dto" items="${items}">
        <c:if test="${dto.sectionCode == 'SINCE'}">
            <c:set var="fName" value="${dto.imageFilename}" />
            <c:set var="num" value="${fn:substringAfter(fn:substringBefore(fName, '.'), 'since_')}" />
            <c:if test="${not empty num && num >= 15 && num <= 22}">
                <div class="news-item">
                    <div class="news-info-box">
                        <h3 class="news-title">${dto.title}</h3>
                        <p class="news-summary">${dto.summary}</p>
                        <a href="${dto.buttonLink}" class="news-more-btn">더 보기</a>
                    </div>
                    <div class="news-img-box">
                        <img src="${pageContext.request.contextPath}/cocacola/OurCompany_images/${dto.imageFilename}" alt="${dto.title}">
                    </div>
                </div>
            </c:if>
        </c:if>
    </c:forEach>
</div>
<%@ include file="../Footer.jsp" %>
</body>
<script>
    function moveSlide(index) {
        const track = document.getElementById('sliderTrack');
        const dots = document.querySelectorAll('.dot');
        const cardItem = document.querySelector('.card-item');
        if(!cardItem) return;
        const moveDistance = (cardItem.offsetWidth + 20) * index;
        track.style.transform = "translateX(-" + moveDistance + "px)";
        dots.forEach(dot => dot.classList.remove('active'));
        dots[index].classList.add('active');
    }
</script>
</html>