<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코카-콜라 Our-Company</title>
<style>
/* [기존 스타일 유지 영역] */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


body {
    background-color: #eeeeee;
    margin: 0;
    overflow-y: scroll;
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
    margin: 20px 0 40px; 
    font-size: 2rem;
    font-weight: 700;
    clear: both;
}
.card-container {
    display: flex;
    justify-content: center;
    gap: 40px;
    max-width: 1200px;
    margin: 0 auto 100px;
    padding: 0 20px;
    box-sizing: border-box;
}
.card-item {
    flex: 0 1 500px;
    background: #fff;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    display: flex;
    flex-direction: column;
}
.card-item img {
    width: 100%;
    height: 350px;
    object-fit: cover;
}
.card-body {
    padding: 30px;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
}
.card-body h3 {
    font-size: 1.4rem;
    font-weight: 700;
    margin-bottom: 15px;
    color: #222;
}
.card-body p {
    font-size: 0.95rem;
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

/* [메인 배너 및 텍스트 스타일 - 가로 너비 수정] */
#top-banner-area {
    /* 하단 실측 콘텐츠 너비인 1050px에 맞춰 조정 */
    width: 1200px; 
    height: 680px;
    background: url('${pageContext.request.contextPath}/cocacola/OurCompany_images/company_01.png') no-repeat center center;
    background-size: cover;
    margin: -50px auto 0; 
    box-sizing: border-box;
}
            
#company-description-box {
    display: block;
    max-width: 1050px; 
    /* 하단 마진을 80px에서 150px로 늘려 겹침 현상 해결 */
    margin: 40px auto 150px; 
    padding: 0 10px; 
    font-size: 1.1rem;
    line-height: 1.8;
    color: #333;
    word-break: keep-all;
    box-sizing: border-box;
    text-align: left;
}

/* [모바일 반응형 유지] */
@media (max-width: 900px) {
    .intro-block {
        flex-direction: column-reverse !important; 
        padding: 0 15px; 
        margin: 0 auto 0px;
    }
    .image-content {
        width: 100%; 
        height: 350px;
        border-radius: 15px; 
        margin-top: 0;
    }
    .text-content {
        width: calc(100% - 30px);
        margin: 0 auto;
        top: -80px;
        padding: 30px 25px;
        height: auto;
        min-height: unset;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        text-align: left;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        background-color: #fff;
        z-index: 20;
    }
    .text-content h2 { 
        font-size: 1.6rem; 
        margin: 0 0 15px 0;
    }
    .text-content p { 
        font-size: 0.95rem; 
        margin-bottom: 25px; 
        line-height: 1.5;
    }
    .intro-button { 
        width: 100%; 
        min-width: unset; 
        margin-bottom: 0 !important;
        margin-top: auto;
        padding: 12px 0;
        box-sizing: border-box;
    }
    .card-container {
        flex-direction: column; 
        align-items: center; 
        gap: 40px; 
        padding: 0 15px;
    }
    .card-item {
        width: 100%; 
        border-radius: 20px;
        background-color: #fff;
    }
    .card-item img { 
        height: 250px; 
    }
    .card-body { 
        padding: 20px; 
        text-align: left;
        align-items: flex-start;
    }
    .intro-block.default-order .text-content, 
    .intro-block.reverse-order .text-content { 
        margin: 0 auto !important; 
    }
}

</style>
</head>
<body>
<%@ include file="../nav.jsp" %>

<div id="top-banner-area">
</div>

<div id="company-description-box">
    1886년 5월 8일, 존 펨버턴(John Pemberton) 박사가 미국 조지아주 애틀랜타에 있는 제이콥스 약국(Jacobs’ Pharmacy)에서 코카-콜라를 처음으로 발명했다. 130여 년이 지난 지금, 코카-콜라 컴퍼니(The Coca‑Cola Company)는 전 세계 200여 개국 이상에 진출한 글로벌 종합음료회사로 성장했다. 스파클링, 주스, 차, 커피, 스포츠 음료 등 총 200여 개의 브랜드를 보유하고 있다.<br><br>

    한국에서는 1968년부터 코카-콜라가 정식으로 생산 및 판매되기 시작했다. 대표 브랜드인 코카-콜라를 비롯해 스프라이트, 환타, 미닛메이드, 조지아, 토레타!, 파워에이드 등 20여 개 음료 브랜드를 국내에서 생산 및 판매하고 있다.<br><br>

    코카-콜라 시스템은 크게 두 가지로 구성된다. 원액 생산 및 상표 관리와 브랜드 마케팅을 담당하는 ‘코카-콜라사’와 완제품을 생산, 유통, 판매하는 ‘보틀링 파트너(Bottling Partners)’로 운영된다. 현재 한국에서 생산되는 코카-콜라 제품의 원액 생산과 마케팅은 한국 코카-콜라 유한회사가 담당하고 있으며, 국내 보틀링 파트너는 LG생활건강의 자회사인 코카-콜라 음료 주식회사가 맡고 있다. 
</div>

<%-- [해결 코드 핵심] COMPANY 데이터만 순서대로 카운트하기 위한 변수 --%>
<c:set var="compIdx" value="0" />

<%-- 1. 상단 지그재그 입체 카드 (COMPANY 섹션 중 첫 2개) --%>
<c:forEach var="dto" items="${items}">
    <c:if test="${dto.sectionCode == 'COMPANY'}">
        <c:if test="${compIdx < 2}">
            <div class="intro-block ${compIdx % 2 == 0 ? 'default-order' : 'reverse-order'}">
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
        <c:set var="compIdx" value="${compIdx + 1}" />
    </c:if>
</c:forEach>

<%-- 2. 하단 스페셜 기획 카드 (COMPANY 섹션 중 3번째부터 끝까지) --%>
<h2 class="special-title">스페셜 기획 : 오피스 투어</h2>
<div class="card-container">
    <c:set var="cardIdx" value="0" />
    <c:forEach var="dto" items="${items}">
        <c:if test="${dto.sectionCode == 'COMPANY'}">
            <c:set var="cardIdx" value="${cardIdx + 1}" />
            <%-- 1, 2번은 위에서 출력했으니 3번부터 출력 --%>
            <c:if test="${cardIdx > 2}">
                <div class="card-item">
                    <img src="${pageContext.request.contextPath}/cocacola/OurCompany_images/${dto.imageFilename}" alt="${dto.title}">
                    <div class="card-body">
                        <h3>${dto.title}</h3>
                        <p>${dto.summary}</p>
                        <a href="${dto.buttonLink}" class="card-more">더 보기 &rarr;</a>
                    </div>
                </div>
            </c:if>
        </c:if>
    </c:forEach>
</div>
<%@ include file="../Footer.jsp" %>
</body>
</html>