<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">

<title>상세 페이지</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/cocacola/css/detail.css">

</head>
<body>
  <div class="product-detail">

  <!-- IMAGE -->
  <section class="product-hero">
     <img src="${pageContext.request.contextPath}/cocacola/images/op_drpepper_thumb.jpg"
					      alt="다양한 코카콜라 제품이 벽에 걸려있는 사진">
  </section>

  <!-- TITLE -->
  <section class="product-header">
    <h1 class="product-title">
      닥터페퍼 앞에서는 누구나 철학자가 된다
    </h1>
  </section>

  <!-- DATE (본문 기준 왼쪽) -->
  <section class="product-date">
    <p class="meta-date">2025. 08. 07</p>
  </section>

  <!-- HASHTAG (가운데) -->
  <section class="product-hashtag">
    <p class="meta-hashtag">
      #인생에서 가장 새로운 도전 ‘닥터페퍼 제로 스트로베리크림향’을 만나다
    </p>
  </section>

  <!-- BODY -->
  <section class="product-body">
    <p>
      희대의 철학자와 판사도 쉽게 결정을 내리지 못하는 장소가 있다. 바로 편의점 음료 코너다. 그 앞에 서면 누구나 생각에 잠기고 만다. 늘 마시던 것을 집어 들지, 아니면 새로운 것을 도전할지. 입은 말라가고, 날 바라보는 편의점 직원의 눈빛이 느껴지는 순간에 우리는 한 철학자의 말을 깨닫게 된다.
    </p>

    <p>
      그 앞에 서면 누구나 생각에 잠기고 만다.
      늘 마시던 것을 집어 들지, 아니면 새로운 것을 도전할지.
    </p>

    <p class="quote">
      “인생은 B와 D 사이의 C다.”
    </p>

    <p>
      그렇구나. 우리의 인생이란 매일 마시는 베버리지(Beverage)와 닥터페퍼(Dr Pepper) 사이의 초이스(Choice)였던 것이다. 여러분은 어떤 선택을 할 것인가?
    </p>

    <p>
      코카-콜라의 오프너(Opener)* 마시즘은 이것을 선택하고 말았다.
    </p>
  </section>
 
  <!-- BOTTOM INFO -->
  <section class="product-notice">
    <p>
	    ※ 오프너(Opener)는 코카-콜라와 함께 하는 콘텐츠 크리에이터들의 모임입니다.
	    <br>
	    (http://masism.kr)는 국내 유일의 음료 전문 미디어로,
	    전 세계 200여 개의 음료를 소개하고 있는
	    코카-콜라의 다양한 음료 브랜드를 리뷰합니다.
	    코카-콜라 지면에 소정의 원고료로 제작되었습니다.
    </p>
  </section>
  
  <!-- SECOND SECTION -->
<section class="article-section">

  <h2 class="article-title">
    연분홍빛의 새로운 닥터페퍼 제로
  </h2>

  <div class="article-image">
     <img src="${pageContext.request.contextPath}/cocacola/images/op_drpepper_01.jpg"
					      alt="다양한 코카콜라 제품이 벽에 걸려있는 사진">
  </div>

  <div class="article-body">
    <p>
      아마도 이 글을 보는 사람들은 선택의 순간 '닥터페퍼'를 고른 분들일 것이다. 나 또한 닥터페퍼를 고른 덕분에 미각적으로 만족스러운 음료생활을 하고 있다. 이제는 닥터페퍼 제로까지 나왔기에 그 행복은 더해졌다.
    </p>

    <p>
      닥터페퍼를 누가 호불호 음료라고 했어(과거의 나다). 이래서 옛말에 용기 있는 자가 닥터페퍼를 얻는다고 한 것인가(아니다).
    </p>

    <p>
      하지만 닥터페퍼는 나에게 또 다른 도전을 주었다. 닥터페퍼의 새로운 제품이 출시된다는 소식이 들렸기 때문이다. 과연 어떤 맛이 나올까? 체리향을 강화한 닥터페퍼? 아니면 다른 음료들처럼 레몬이나 오렌지 같은 익숙한 과일향의 닥터페퍼가 나올까?
    </p>

    <p>
      그 정체가 밝혀졌다. 바로 닥터페퍼 제로 스트로베리크림향. 그냥 딸기도 아니고 딸기크림향의 닥터페퍼라니. 닥터페퍼를 좋아하는 사람도, 어려워하는 사람도 이구동성 말했다.
    </p>

    <p class="quote">
      "역시 닥터페퍼가 닥터페퍼하고 말았군!"
    </p>
  </div>

</section>
  
  <!-- SECOND SECTION -->
<section class="article-section">

  <h2 class="article-title">
    달콤하고 부드러운 딸기크림향, 그런데 닥터페퍼라니
  </h2>

  <div class="article-image">
     <img src="${pageContext.request.contextPath}/cocacola/images/op_drpepper_02.jpg"
					      alt="다양한 코카콜라 제품이 벽에 걸려있는 사진">
  </div>

  <div class="article-body">
    <p>
      닥터페퍼 제로 스트로베리크림향을 잔에 따랐다. 닥터페퍼의 체리향이 아닌 산뜻한 딸기향이 나서 흠칫 놀랐다. 한 입 마셔보면 새콤한 딸기에 더해 은은하게 퍼지는 달콤한 크림향까지 느껴진다. 마치 '이게 바로 새로운 스트로베리크림향 탄산음료'야 라고 알려주는 듯하다가 끝에서 닥터페퍼 고유의 맛이 탁 하고 살아난다.

    </p>

    <p>
      평소에 아이스크림이나 사탕 등에서 '스트로베리크림' 맛을 좋아했다면 정말 좋아할 맛이다. 부드럽고 달콤한 맛을 잘 살렸기 때문이다. 그렇다면 기존의 닥터페퍼 맛을 좋아했던 사람에게는 어떻냐고?
    </p>

    <p>
      오히려 좋다. 닥터페퍼 제로 스트로베리크림향. 이것은 소위 닥터페퍼 마니아들 사이에서 '해외직구'를 해야만 맛볼 수 있는 특별한 맛이었으니까. 그걸 집 앞 편의점과 마트에서 마실 수 있다니. 대한민국에 닥터페퍼 제로가 정식 출시된 이후로 이런 기적은 없었다.
    </p>

    <p>
      내가 좋아하는 닥터페퍼를 마시면서, 특별한 닥터페퍼 제로 스트로베리크림향까지 즐길 수 있다니. 닥터페퍼의 선택지가 늘어날수록 닥터페퍼 러버들의 평화는 더욱 커진다.
    </p>

  </div>

</section>


<!-- SECOND SECTION -->
<section class="article-section">

  <h2 class="article-title">
    달콤하고 부드러운 딸기크림향, 그런데 닥터페퍼라니
  </h2>

  <div class="article-image">
     <img src="${pageContext.request.contextPath}/cocacola/images/op_drpepper_03.jpg"
					      alt="다양한 코카콜라 제품이 벽에 걸려있는 사진">
  </div>

  <div class="article-body">
    <p>
      다른 평범한 음료들과 다르게 뭔가 독특해 보였던 음료. 모두가 마시지는 않지만 마시는 사람은 언제나 이것만을 찾는 그 탄산음료. 한국에서 닥터페퍼가 이 정도의 인기를 가지게 될 줄은 꿈에도 몰랐다. 이미 미국에서는 코카-콜라 다음으로 인기 있는 음료가 닥터페퍼가 되었다는 소식을 들으면 흠칫 놀라게 된다.
    </p>

    <p>
      그것은 아마 평소에 마시던 음료가 아닌 '새로움'을 선택한 사람들이 늘어났기 때문일 것이다. 이들에게 닥터페퍼는 그냥 탄산음료가 아니다. 남들과 다른 나만의 취향이자, 특별한 하루다. 그 맛이 나의 취향이건, 아니었건 이 도전 자체는 우리의 갈증 난 일상에 새로운 활력을 준다.
    </p>

    <p>
      그래서 우리는 편의점 음료코너 앞에서 항상 고민을 한다. 평소에 마신 음료를 마실 것인가, 오늘 처음 보는 닥터페퍼 제로의 새로운 신상을 마실 것인가. 결정의 순간, 당신은 무엇을 선택할 것인가?
    </p>

  
  </div>

</section>

<!-- CHANNEL BANNER -->
<section class="channel-banner">
  <img src="${pageContext.request.contextPath}/cocacola/logo/images/2023_kakao-plus-short-2.png" alt="코크 크리에이터 채널 추가">
</section>


</div>

</body>

</html>
