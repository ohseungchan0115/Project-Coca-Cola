<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가볍고 산뜻하게! 파워에이드 제로 라임향 출시 | Brand Story | 한국
	코카-콜라</title>
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

.image1 {
	display: block; /* 마진 자동 계산을 위해 블록 요소로 변경 */
	width: 100%; /* 기본적으로 너비 100% */
	width: 1120px; /* ⭐ 이미지의 실제 최대 너비 혹은 원하는 너비로 제한 */
	height: auto;
	margin: 0 auto; /* ⭐ 좌우 마진을 auto로 설정하여 가운데 정렬 */
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
	margin-bottom: 50px;
}

.small {
margin-top:-20px;
	font-size: 12px;
}

.kakao {
	display: block;
	max-width: 210px;
	margin: 0 auto;
}

</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
	<img class="image1" alt=""
		src="${pageContext.request.contextPath}/brandstory/page3_1.png">

	<div class="content">
		<h3 class="top-title">파워풀한 수분 충전에 상쾌함까지!</h3>
		<h2 class="bottom-title">파워에이드 제로 라임향</h2>
		<h3 class="date">2025. 04. 29</h3>

		<p class="basic">갈증이 밀려올 때, 상큼하면서도 시원한 무언가가 당기는 순간이 있다. 그럴 때 딱 맞는
			새로운 맛의 파워에이드가 우리 곁을 찾아왔다. 운동 후 갈증 해소는 물론, 상쾌한 하루의 시작까지 책임질 ‘파워에이드 제로
			라임향’이 그 주인공이다.</p>

		<h2 class="subtitle">
			상쾌한 라임향을 더한 <br> 새로운 맛의 파워에이드 제로
		</h2>

		<img class="image2" alt=""
			src="${pageContext.request.contextPath}/brandstory/page3_2.jpg">

		<p class="basic">
			‘파워에이드 제로 라임향’은 체내 에너지 생성에 필요한 나이아신(비타민B3)을 함유해 파워풀한 수분 보충은 물론, 가볍고
			산뜻한 맛이 특징이다. 라임향 특유의 상쾌함은 단순한 갈증 해소를 넘어, 기분까지 리프레시 해주는 느낌을 전한다. 무엇보다
			반가운 점은 제로 칼로리라는 사실. 맛있게 마시면서도 칼로리 부담 없이, 운동 중에도, 일상 속에서도 언제든 가볍게 수분을
			보충할 수 있다. 또한 눈길을 사로잡는 형광 그린 컬러는 보는 것만으로도 활력을 전해준다. <br>
			<br> 파워에이드 제로 라임향은 전국 편의점과 대형마트, 코카-콜라 공식 앱 ‘코-크플레이(CokePLAY)’를
			비롯한 온라인 채널 등에서 순차적으로 만나볼 수 있다.
		</p>

		<p class="small">※ 참고: 식품등의 표시기준에 따라 100mL당 4Kcal 미만일 경우 무열량(제로
			칼로리)으로 표시할 수 있으며, ‘파워에이드 제로 라임향’의 경우 600mL 기준 7kcal이다.</p>

		<h2 class="subtitle">
			새로워진 비주얼, <br>
			파워에이드 패키지 리뉴얼
		</h2>

		<img class="image3" alt=""
			src="${pageContext.request.contextPath}/brandstory/page3_3.jpg">

		<p class="basic">
			파워에이드 패키지 또한 모두 새롭게 리뉴얼됐다. 이번 리뉴얼은 파워에이드 특유의 역동적이고 파워풀한 이미지를 보다 직관적으로
			전달하기 위해 진행됐다. 파워에이드의 제품별 고유의 맛은 그대로 유지하면서, ‘파워풀한 수분 충전, 몸과 마인드까지’라는
			슬로건을 패키지 전면에 배치해 브랜드 아이덴티티를 명확히 드러냈다. <br>
			<br> 대표 제품인 ‘파워에이드 마운틴 블라스트’, 깔끔한 포도향의 ‘파워에이드 퍼플 스톰’, 상큼한 복숭아향이
			더해진 ‘파워에이드 스칼렛 스톰’은 블랙 라벨에 각 제품별 대표 컬러를 적용해 더욱 직관적으로 음료별 개성을 표현했다.
			‘파워에이드 제로’와 ‘파워에이드 제로 라임향’은 화이트 라벨에 각각 블루와 형광 그린 포인트를 활용해 제로 칼로리 특유의
			가볍고 시원한 이미지를 시각적으로 강조했다. <br>
			<br> 파워풀한 수분 충전이 필요한 순간, 더 다양해진 파워에이드 라인업 중 오늘의 기분에 맞는 제품을
			선택해보자. 어떤 맛을 고르든 우리의 일상에 활력을 더해줄 것이다.
		</p>

		<a
			href="https://pf.kakao.com/_gxdxjrK?utm_source=coca-cola-journey&utm_medium=banner&utm_campaign=coca-cola-journey&utm_term=add-friend&utm_content=link">
			<img class="kakao" alt="카카오 플러스 친구"
			src="${pageContext.request.contextPath}/cocacola/images/2023_kakao-plus-short-2.png">
		</a>
	</div>

<%@ include file="../Footer.jsp" %>

</body>
</html>