<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이토록 짜릿한 만남! 뷔, 코카-콜라 앰버서더 발탁 | Brand Story | 한국 코카-콜라</title>
<style>
*{
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

.image1 {
    display: block;       /* 마진 자동 계산을 위해 블록 요소로 변경 */
    width: 100%;          /* 기본적으로 너비 100% */
    width: 1120px;    /* ⭐ 이미지의 실제 최대 너비 혹은 원하는 너비로 제한 */
    height: auto;
    margin: 0 auto;       /* ⭐ 좌우 마진을 auto로 설정하여 가운데 정렬 */
}

/* 본문 컨테이너: 이미지처럼 중앙 집중형 레이아웃 */
    .content {
        max-width: 850px;
        margin: 60px auto;
        padding: 0 50px;
    }

    .top-title {
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 10px;
        color: #333;
    }

    .bottom-title {
        text-align: center;
        font-size: 38px;
        font-weight: 900;
        margin-bottom: 20px;
        letter-spacing: -1px;
    }

    .date {
        text-align: left; /* 이미지처럼 가운데 정렬 */
        font-size: 16px;
        margin-bottom: 10px;
    }

    .basic {
        font-size: 16px;
        margin-bottom: 30px;
        word-break: keep-all; /* 한글 가독성 향상 */
    }

    .subtitle {
    	margin-top: 50px;
    	margin-bottom: 20px;
        font-size: 32px;
        font-weight: bold;
        line-height: 1.3;
    }

    /* 이미지 스타일 */
    .image2, .image3 {
        width: 100%;
    }
    
    .it_content{
    	width: 400px;
    	margin:0 auto ;
    }

    /* 인용구 스타일: 이탈릭 및 중앙 정렬 */
    .italic_font {
        font-style: italic;
        text-align: center;
        font-size: 16px;
        padding: 20px;
        margin: 20px 0;
    }

    .bold_highlight {
        font-weight: bold;
        font-size: 16px;
        text-align: center;
        margin: 30px 0;
    }

    /* 하단 캡션 */
    .caption {
        text-align: center;
        font-size: 16px;
        margin-top: -30px;
        margin-bottom: 40px;
    }

    /* 카카오 배너 */
    .image4 {
        display: block;
        max-width: 210px;
        margin: 0 auto;
    }

    /* 강조 텍스트 */
    .bold1 {
        font-weight: bold;
        font-size: 16px;
        text-align: left;
        margin: 20px 0;
    }
    
    /* 동영상 컨테이너 스타일 */
.video-container {
    position: relative;
    width: 100%;
    max-width: 1120px; /* 배너 이미지 너비와 동일하게 설정 */
    margin: 40px auto; /* 좌우 중앙 정렬 */
    aspect-ratio: 16 / 9; /* 16:9 비율 유지 */
    overflow: hidden;
    border-radius: 20px; /* 둥근 모서리 적용 */
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
}

</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
<img class="image1" alt="뷔 코카콜라 제로 배너" src="${pageContext.request.contextPath}/brandstory/coca-cola_v_thumbnail_pc.png">

<div class="content">
    <h3 class="top-title">뷔, 코카-콜라 앰배서더 발탁</h3>
    <h2 class="bottom-title">코카-콜라와 뷔, 이토록 짜릿한 만남!</h2>
    <h3 class="date">2025. 08. 06</h3>

    <p class="basic">
        전 세계가 사랑하는 짜릿한 즐거움과 글로벌 스타의 만남. 세계적인 그룹 방탄소년단(BTS)의 멤버 ‘뷔’가 코카-콜라의 새로운 앰배서더로 선정됐다. 뷔는 ‘21세기 글로벌 팝 아이콘’으로 자리매김한 방탄소년단의 멤버로, 음악은 물론 패션과 예술 전반에서 자신만의 감성과 스타일을 드러내며 전 세계인의 깊은 사랑을 받고 있다. 또한 코카-콜라는 고유의 맛과 짜릿한 즐거움으로 오랜 시간, 전 세계인들의 일상 속 다양한 순간에 함께해온 브랜드다. 그리고 이제, 뷔와 함께 새로워진 코카-콜라 제로를 들고 함께 질문을 던진다. </p>

    <h2 class="subtitle">BEST COKE EVER?<br>짜릿한 첫 만남을 담은 티저 영상 공개</h2>

<div class="video-container">
    <iframe 
        src="https://www.youtube.com/embed/GLhEbiRRK-Y" 
        title="코카-콜라 X 뷔(V) 티저 영상" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
        allowfullscreen>
    </iframe>
</div>

    <p class="basic">
        스크린 속 ‘BEST COKE EVER?’ 광고를 바라보던 뷔. 새로워진 코카-콜라 제로를 손에 든 그는 코카-콜라에 대한 깊은 애정과 확신을 담아 짧고 강렬한 한 마디를 건넨다.
    </p>
    
    <p class="bold1">“예스! 마셔봐야겠죠?”</p>

    <p class="basic">
        코카-콜라와 뷔의 짜릿한 첫 만남을 담은 이번 티저 영상은 짧지만 강렬한 인상을 남기며, 곧 공개될 본 캠페인 광고에 대한 기대감을 한껏 끌어올린다.
<br><br>
특히 이번에 리뉴얼된 코카-콜라 제로는 한층 더 짜릿해진 상쾌함과 밸런스를 구현해냈다는 평가를 받으며, 이미 마셔본 소비자들 사이에서는 “오리지널 코카-콜라에 훨씬 더 가까워졌다”는 반응이 이어지고 있다. 그 변화는 마치 뷔의 한마디처럼 강렬하고 직관적이다.</p>

    <h2 class="subtitle">뷔가 건넨 한 마디에 대답할 차례!<br>“예스, 마셔봐야죠!”</h2>

    <img class="image2" alt="뷔 인터뷰 이미지" src="${pageContext.request.contextPath}/brandstory/coca-cola_v_01.jpg">
<div class="it_content">
    <div class="italic_font">
        “코카-콜라는 늘 제 일상 속에 함께해온 음료이자, 제가 정말 사랑하는 브랜드예요. 
        <br>
        그래서 이번에 앰배서더로 함께하게 되어 더 기쁘고, 특별한 감정이 듭니다.<br><br>
        새로워진 코카-콜라 제로를 처음 마주했을 때, 저도 궁금했어요. 
        <br>
        ‘얼마나 더 맛있어진 걸까?’ 
        <br>
        여러분도 그 짜릿함을 직접 느껴보시길 바랍니다.”
        <br><br>
        - 코카-콜라 앰배서더, 뷔 -
    </div>
</div>

    <p class="bold_highlight">뷔가 전하는 새로워진 코카-콜라 제로, 이제 직접 마셔보고 당신의 대답을 들려주세요! “Yes!”</p>

    <img class="image3" alt="코카콜라 제로 패키지" src="${pageContext.request.contextPath}/brandstory/coca-cola_v_02.png">
    <p class="caption">[새로워진 코카-콜라 제로 패키지]</p>

    <a href="https://pf.kakao.com/_gxdxjrK?utm_source=coca-cola-journey&utm_medium=banner&utm_campaign=coca-cola-journey&utm_term=add-friend&utm_content=link">
        <img class="image4" alt="카카오 플러스 친구" src="${pageContext.request.contextPath}/cocacola/images/2023_kakao-plus-short-2.png">
    </a>
</div>
<%@ include file="../Footer.jsp" %>

</body>
</html>