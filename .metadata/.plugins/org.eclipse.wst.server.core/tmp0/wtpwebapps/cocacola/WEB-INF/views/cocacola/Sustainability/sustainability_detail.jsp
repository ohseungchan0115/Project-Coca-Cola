<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>


<head>   
 <meta charset="UTF-8">
    <title>친구야, 페트병은 원래 다시 돌아오는거야! 원더플 전도사가 된 마시즘</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/sustainability_detail.css">

   
    
    
</head>
<body class="page">
<%@ include file="../nav.jsp" %>
<c:if test="${content.content_id == 8}">
<div class="root">
  <div class="cmp-container sustainability-container">

    <main class="container">

   <!-- HERO (full width) -->
<section class="sustainability-hero">
    <div class="hero-inner">

        <c:forEach var="media" items="${content.mediaList}">
            <c:if test="${media.media_file_type eq 'IMAGE'}">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </c:if>
        </c:forEach>

    </div>
</section>
<div class="sustainability-section-container">
  <!-- 1. INTRO 섹션 -->
  <section class="sustainability-intro">
  
    <div class="intro-inner">
      <h2>친구야! ‘페트병’은 원래 다시 돌아오는 거야!</h2>
      <p>
        2025. 07. 25
      </p>
     <b>#나눌수록 원더플! 사람들에게 원더플 캠페인을 참가시켰다</b>
     <p id="s1">"자 이게 분리고, 이게 배출이야"</p> 
    </div>
  </section>
  
<div class="global-sustainability">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id eq 9}">
            <div class="global-card__image">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>



<p id="s2">사무실 안의 남자는 다 마신 페트병을 두고 씨름한다. 페트병을 씻고, 말리고, 라벨을 제거하는 과정은 하나의 신성한 의식처럼 보인다. 기이한 점이 하나 있다면 이곳은 그 남자의 사무실이 아니라는 점이다. <b>코카-콜라 오프너(Opener)* </b>마시즘. 그는 왜 남의 사무실에서 열변을 토하는가.<br>
<b><br>
"자 이렇게 깨끗하게 버리면, 다시 병으로 만들어진다니까"<br>
<br>
</b>그렇다. 이것은 페트병의 부활의식... 아니 잘 분리배출한 페트병을 다시 페트병으로 만드는 <b>원더플(ONETHEPL)</b> 캠페인이다.
</p>
<h2 style="font-size: 30px">이 구역의 원더플 전도사</h2>

<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 10}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p id="s2">사정은 이러하다. ‘한 번(ONE) 더(THE) 사용되는 플라스틱(PL)’이라는 뜻의 '원더플 캠페인'이 여섯 번째 시즌을 맞이했다. 첫 번째 시즌만 해도 어떻게 다 마신 페트병을 처리해야 할지 몰랐었는데, 이제는 분리배출이 일상이 되었다. 이렇게 잘 분리배출 된 페트병들은 다른 리사이클링 제품으로 재탄생되기도 했다. 하지만 요즘 시대의 페트병들은 “난 다시 태어나도 내가 될래!”라며 페트병으로 다시 태어나길 원하고 있다. 그야말로 태평성대, 아니 '페트병 자원 순환’의 시대가 온 것이다.<br>
<br>
그런데 옆 사무실의 친구가 다 마신 페트병을 아무렇게나 버리는 비극을 보게 되었다. 나는 말했다. “그렇게 버리면 그냥 쓰레기가 되고 만다고! 당신은 방금 한 페트병의 꿈을 무너뜨린거야.”<br>
<br>
그래서 이번 시즌에서는 참가하는 방식에 변화를 주기로 했다. 옆 사무실로 원더플의 분리배출 박스를 옮긴 뒤, 다 마신 페트병을 앞에 두고는 수능 강사처럼 분리배출 과외를 시작한 것이다.<br>
<b><br>
"세상에! 페트병은 씻고 말리는 거예요. 이건 원더플 하지 않잖아!"<br>
<br>
</b>많은 숙제를 내고 사무실을 떠났다. 아직 원더플을 알릴 친구들이 남았거든.&nbsp;
</p>

<h2 style="font-size: 30px">캠퍼스 어택! 학생들의 원더플 챌린지</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 11}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>

<p id="s2">원더플 시즌6의 차별화 포인트는 일반인들만의 리그가 아니라는 점이다. 이번에는 캠퍼스 챌린지(대학생 5인 이상 단체)가 참여가 가능하다. 마침 마시즘의 후학양성소(라고 쓰고 대학교 후배들이라고 읽는다)에게도 캠퍼스 챌린지 박스를 가져다주고 대화를 나눴다.<br>
<br>
"그래도 전에 사무실에 있던 원더플 박스보다는 작네요."<br>
"그게 더 어려운 거야."<br>
"네?"<br>
<br>
전국의 30개 캠퍼스에서 참가하는 이번 원더플 챌린지는 이 작은 박스 안에 얼마나 많은 페트병을 담느냐, 얼마나 많은 박스를 모으느냐의 대결이다. 그리고 최종적으로 수거된 페트병의 무게가 많은 5개 학교에 코카-콜라 음료 트럭 방문 등 혜택이 제공된다. 다시 태어난 페트병들의 은혜 갚기라고 할까?<br>
<br>
아마 이 캠퍼스 챌린지가 끝이 나면 수많은 대학생의 페트병 구기기의 악력이 강해졌을 것이라 믿는다. 자원순환에도 참여하고, 몸도 강해지고.. 파이팅!
</p>
<h2 style="font-size: 30px">나눌수록 원더플! 분리배출의 달인들</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 12}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p id="s2">무더운 날씨에 음료를 마실 때마다 옆 사무실에 놀러가 상태를 확인해 본다. 처음에는 뭔가 어설펐던 옆 사무실 친구의 페트병의 분리배출이 이제는 제법이다. 페트병 속을 씻은 뒤 말리고, 페트병을 구긴 후에 뚜껑을 닫아 쌓는다. 이건 나보다 잘하는데?<br>
<br>
그렇게 다 쌓은 원더플 박스 한쪽에 있는 QR코드를 찍어 '수거 접수'를 했다. 이제 다시 태어날 페트병의 제2의 인생을 응원해주면 되는 것이다.&nbsp;
</p>
<h2 style="font-size: 30px">올바른 자원순환을 위한 실천</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 13}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p id="s2">일상 속의 분리배출은 타인에게 베푸는 선행이나 기부만큼이나 기분 좋은 일이다. 잘 분리배출한 페트병은 쓰레기가 되지 않고 다시 페트병으로 태어날 수 있기 때문이다. “난 다시 태어나도 나로 태어날래” 6개의 시즌 동안 원더플 캠페인이 많은 사람들의 분리배출 습관을 바꾸면서 수많은 페트병들의 소망을 이뤄주었을 것이라 믿는다.<br>
<br>
그렇게 이번 시즌 6의 미션을 완료하니, 재활용 나일론 소재로 만든 '코카-콜라 원더플 우산 텐트'가 선물로 주어졌다. 화창한 여름날, 잔디 위에 우산 텐트를 펼치고 그 속에서 마시는 코카-콜라 제로는 얼마나 맛있는지!<br>
<br>
맛있는 음료도 마시고, 자원 순환 실천까지 하는 개념찬 하루하루. 아직 늦지 않았다. 여러분도 원더플 피플이 되어 보는 것은 어떨까?
</p>

<a href="https://www.terracycle-kr.com/programs/onethepl6/modu?&utm_source=cckcpacs&utm_medium=homepage&utm_campaign=article">
<b id="s3">
<br>
 코카-콜라 원더플 시즌6 신청하러 가기&gt;</b></a>
 
 <div class="detail-cta">
    <img src="${pageContext.request.contextPath}/sustainability_images/kakao.png"
         alt="카카오 채널 추가">
</div>
 
</div><!-- sustainability-section-container -->





    </main>
  </div>
</div>
</c:if>

<!-- 세번째 상세  -->
<c:if test="${content.content_id == 10}">
<div class="root">
  <div class="cmp-container sustainability-container">

    <main class="container">

   <!-- HERO (full width) -->
<section class="sustainability-hero">
    <div class="hero-inner2">

        <c:forEach var="media" items="${content.mediaList}">
            <c:if test="${media.media_file_type eq 'IMAGE'}">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </c:if>
        </c:forEach>

    </div>
</section>
<div class="sustainability-section-container2">
  <!-- 1. INTRO 섹션 -->
  <section class="sustainability-intro">
  
    <div class="intro-inner">
      <h2>플라스틱 VS 플라스틱! 왜 투명 음료 페트병은 따로 모아야 할까?</h2>
      <p>
        2021. 8. 19
      </p>
      </div>
   <p>고독한 거실 안을 혼자 걷는다. 텔레비전을 보지도, 무언가를 마시지도 않는다. 그가 하는 일은 분리배출뿐이다. 빈 페트병의 라벨을 벗기고, 물로 내부를 씻어 말리고, 구겨서 뚜껑을 닫다 보면 기분이 좋거든. 곧 있으면 저 제로 웨이스트 박스를 한가득 채울 수 있겠군. 적금 만기를 기다리는 사람처럼 마음이 뿌듯해진다.<br>
</p>
<p>분리 배출은 페트병뿐만이 아니다. 다른 플라스틱 포장재도 분리배출하여 다른 분리수거함에 모은다. 하지만 제로 웨이스트 박스에 들어가지 못한 플라스틱들이 외치는 듯하다. “왜 페트병만 따로 모으는데! 이거 완전 플라스틱 차별 아니냐!”</p>
   <p>아니다. 같은 플라스틱이라도 페트병은 다르다고.&nbsp;<b>원더플(ONETHEPL)*</b>&nbsp;피플 마시즘. 오늘은 왜 투명 음료 페트병을 따로 분리 배출해야 하는지에 대한 이야기다.</p>
   <h2>왜 플라스틱과 페트병을 따로 구분할까?</h2>
  </section>
 
<div class="global-sustainability">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id eq 22}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                      <p>(같은 플라스틱이지만 재활용의 수준이 다르다고!)</p>
                      
            </div>
        </c:if>
    </c:forEach>
</div>
<p id="s2">
플라스틱에는 출생의 비밀이 있다. 비록 우리가 ‘플라스틱’이라고 부르고 있지만, 이름과 재질이 다른 것이다. 그럼 왜 따로 이름을 알려주지 않고 플라스틱이라고만 알려줬냐고? 이들의 이름을 살펴보면 알 수 있다.
<br>
<b>"PE(폴리에틸렌), PP(폴리프로필렌), PS(폴리스티렌), PET, PVC... "</b>
<br>
그렇다. 이름부터 수능시험 같지 않은가(아니다). 재활용 과정에서는 같은 재질의 플라스틱끼리 분류가 되어야 재생원료 활용도가 높아진다.
<br>
이때 돋보이는 녀석이 있다. 포장재로 쓰이는 플라스틱 중 가장 많은 양이 사용되며, 제대로만 분리배출 된다면 재활용을 하기에도 협조적인(?) 녀석. 바로 ‘페트병’이다.
<br>
그래서 페트병은 다른 플라스틱과 따로 분류되어 버려지는 것이다. 물론 여기에서도 한 가지 조건이 있다. 투명한 음료 페트병만 따로 모은다는 것이다.
</p>
<h2 style="font-size: 30px">플라스틱계의 숨은 원석,<br>
투명 음료 페트병을 찾아서</h2>

<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 23}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
               <p>(깨끗하게 수거된 투명 음료 페트병은 다시 한번 태어날 수 있다!)
               </p>
            </div>
        </c:if>
    </c:forEach>
</div>
<p>코카-콜라의 친환경 캠페인 ‘원더플’에서 지난 시즌과 달리 투명 음료 페트병만 모으는 이유가 있다. 색깔이 들어가지 않은 페트병은 다시 한번 사용되는 과정에서 무궁무진한 가능성을 갖고 있기 때문이다.</p><br>
<p>이는 재활용 과정을 돌아보면 알 수 있다. 선별된 페트병은 재활용 과정에서 잘게 부서지고 세척되며 재생원료가 된다. 이 녀석들로 다른 플라스틱 포장 용기를 만들거나, 녹여서 폴리에스터 섬유를 만든다. 이때 페트병 품질에 따라 섬유가 길게 뽑히거나, 짧게 뽑히게 된다.</p>


<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 24}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                     <p>(이걸 분리배출 된 페트병으로 만들었다고?)</p>
            </div>
        </c:if>
    </c:forEach>
</div>
<p>짧게 뽑힌 섬유는 대부분 '재생 솜'으로 활용이 된다. 하지만 이것이 길게 뽑힌다면? 멋진 옷이 되기도 하고, 신발이 되기도 하고, 원더플 굿즈 '알비백' 같은 가방이 되기도 하는 것이다. 이것이 굉장히 중요하다. 그동안 섬유업체들은 원료를 구하기 위해 고품질의 투명 음료 페트병을 수입해오고 있었으니까.</p>
<br>
<p>최근에는 원더플 피플을 비롯한 많은 분들이 투명한 음료 페트병을 분리배출하는데 앞장서고 있다. 환경부에 따르면 이런 분리 배출 문화가 정착된다면 10만 톤 이상의 페트병을 재활용할 수 있을 것이라고 한다.</p>

<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 25}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                     <p>(장기적으로 간다면 페트병에서 페트병으로 활용이 될 수도 있다)</p>
 
            </div>
        </c:if>
    </c:forEach>
</div>
<p>이미 투명 음료 페트병 분리배출이 정착된 나라에서는 사용한 페트병을 가지고 다시 페트병을 만들고 있다. 그야말로 더 이상의 플라스틱을 생산하지 않고, 있는 플라스틱을 계속 사용하는 방식으로 변해가는 것이다.
</p>
<h2 style="font-size: 30px" id="s7">지속 가능한 플라스틱, 원더플한 미래를 위해</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 26}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                     <p>(미래를 위해 저축하는 기분으로 분리배출을 하면 어떨까?)</p>
            </div>
        </c:if>
    </c:forEach>
</div>
<p>우리의 분리배출은 환경은 물론 경제에도 큰 도움을 줄 수 있다. 투명 음료 페트병을 비롯하여, 많은 재활용 쓰레기를 재질별로 구분하고, 내용물과 이물질을 한 번 세척하는 것만으로도 재활용 과정에 큰 도움을 줄 수 있다. 분명 조금은 번거로울 수 있지만, 지키기에 따라 미래는 달라질 수 있으니까.</p>
<br>
<p>우리의 작은 행동이 만들어낼 원더플 한 미래를 기대해본다.</p>

 <div class="detail-cta">
    <img src="${pageContext.request.contextPath}/sustainability_images/kakao.png"
         alt="카카오 채널 추가">
</div>
 
</div><!-- sustainability-section-container -->
    </main>
  </div>
</div>
</c:if>
<!-- 두번째 상세  -->
<c:if test="${content.content_id == 9}">
<div class="root">
  <div class="cmp-container sustainability-container">

    <main class="container">

   <!-- HERO (full width) -->
<section class="sustainability-hero">
    <div class="hero-inner2">

        <c:forEach var="media" items="${content.mediaList}">
            <c:if test="${media.media_file_type eq 'IMAGE'}">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </c:if>
        </c:forEach>

    </div>
</section>
<div class="sustainability-section-container2">
  <!-- 1. INTRO 섹션 -->
  <section class="sustainability-intro">
  
    <div class="intro-inner">
      <h2>코카-콜라 rPET 프로젝트 현장 탐방! 버려진 페트병의 놀라운 재탄생</h2>
      <p>
        2023. 6. 9
      </p>
      </div>
     <h2 id="s4">페트병은 돌아오는 거야!<br>
     PET to rPET</h2>
     <p id="s5">코카-콜라는 페트병 재활용에 한결같이 진심이다. 페트병을 재활용해서 다양한 굿즈를 만들었던 <a href="https://www.coca-cola.co.kr/sustainable-business/ONETHEPL/onethepl-infographic" target="_blank" rel="noopener noreferrer"><b>원더플 캠페인</b>
     </a>부터 <a href="https://www.coca-cola.co.kr/sustainable-business/sustainable-packaging/onethepl-rpet-case" target="_blank" rel="noopener noreferrer"><b>다양한 브랜드와의 컬래버레이션</b>
     </a>을 통한 가구, 패션 아이템으로의 변신까지. 하지만 항상 아쉬웠던 점이 하나 있었다. 
     페트병을 다양한 형태로 생산하는 데 그칠 게 아니라, 새로운 페트병으로 만들어 자원을 순환시키는 것이 가장 이상적인 형태가 아닐까?&nbsp;
     </p> 
     <p id="s5">병이 다시 병으로 태어나는, ‘보틀투보틀(bottle to bottle)’을 오랫동안 준비해 온 코카-콜라에서 마침내 전하게 된 반가운 뉴스. 이제 국내에서 소비된 페트병을 재활용한 rPET병이 출시된다는 사실! 치킨, 피자 등 배달음식을 시킬때 함께 오는 업소용 코카-콜라가 rPET 병이 되어 여러분 곁을 찾아왔다.&nbsp;</p>
     <p>자원의 순환을 한 코카-콜라의 새로운 출발, rPET은 어떻게 만들어질까? 페트병 수집부터 rPET병 제품 생산까지의 모든 여정을 이미지와 영상으로 꼼꼼히 살펴보자.</p>
   <h2>페트병이 재탄생되는 모험</h2>
  </section>
 
<div class="global-sustainability">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id eq 14}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                      <p>(코카-콜라 rPET 과정 인포그래픽)</p>
                      <a href="/content/dam/onexp/kr/ko/sustainable-business/onethepl/2023-rpet-project/230425_v2.jpg" target="_blank" rel="noopener noreferrer">
                      ▶ 인포그래픽 더 크게 보기</a>
            </div>
        </c:if>
    </c:forEach>
</div>

<h2 style="font-size: 36px">01. 라벨 제거 및 분리배출</h2>

<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 15}">
            <div class="global-card__image3">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
               
            </div>
        </c:if>
    </c:forEach>
</div>
<p id="s6">코카-콜라를 맛있게 마셨다면 이제 깨끗하게 버리는 일만 남았다. 여기서 ‘깨끗하게’란 말은 겉도, 속도 말끔한 투명 페트병이 되어야 한다는 의미다.&nbsp;</p>
<p>우선 라벨 제거부터 해볼까? 라벨 끝을 잡고 쭉 뜯어내고 페트병을 깨끗하게 헹군 후 찌그러뜨려 뚜껑을 닫아 분리배출하면 우리의 역할은 끝난다.&nbsp;</p>

<h2 style="font-size: 36px" id="s7">02. 투명 페트병 분류</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 16}">
            <div class="global-card__image4">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>깨끗하게 분리배출된 투명 페트병은 재활용 선별장으로 이동해 오염물질 없이 깨끗한지, 재활용이 가능한지 등을 확인하는 검수 과정을 거친다. 평소 분리수거를 할 때 조금만 신경 써준다면, 보다 많은 페트병이 재활용을 위한 다음 단계로 넘어가게 될 것이다.</p>
<h2 style="font-size: 36px" id="s7">03. 세척 후 분쇄 및 재가공</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 17}">
            <div class="global-card__image4">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>‘재활용 가능’으로 최종 분류된 투명 페트병들은 잘게 파쇄된 후 여러 단계의 세척을 거쳐 깨끗한 상태의 rPET 플레이크가 된다. 이후 자동 검사기를 거치면서 이물들이 제거되고, 한 번 더 재가공하면 동글동글한 rPET 칩이 탄생한다. 여기까지가 본격적인 가공 전, 재료 손질 및 밑 작업 단계라 할 수 있다.</p>
<h2 style="font-size: 36px" id="s7">04. rPET 프리폼 생산</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 18}">
            <div class="global-card__image4">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>동글동글한 rPET 칩을 모아 압착하여 프리폼으로 만든다. 이제 병의 형태가 잡히기 시작했지만, 우리가 아는 페트병의 형태와는 아직 거리가 있다. 언뜻 봐서는 페트병과 연관이 없어 보이는 이 작은 rPET 프리폼이 어떻게 코카-콜라병으로 재탄생하는 걸까?&nbsp;</p>
 <h2 style="font-size: 36px" id="s7">05. 프리폼 가열 후 제품 생산</h2>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 19}">
            <div class="global-card__image4">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>
이제 rPET의 여정도 마무리되어간다. rPET 프리폼에 열을 가하며 성형하자 부피가 늘어나고 길쭉해지더니… 우리가 알고 있는 코카-콜라 페트병 모양이 되었다! 여기에 음료를 주입하고 라벨을 붙인 후 뚜껑을 꼭 닫으면 여러분 곁으로 돌아갈 rPET 코카-콜라 제품이 완성된다. 
<br>
자원의 낭비와 탄소 배출량을 줄이려면 자원의 선순환이 일어나야 한다. 내가 이미 한 번 사용한 자원을 재활용하여 새로운 자원으로 만들 수 있다면 두 마리 토끼를 다 잡을 수 있다. 그런 점에서 내가 마신 페트병을 내가 마실 페트병으로 재탄생시키는 rPET 제품은우리에게 많은 것을 말해준다. 
<br>
특히 국내에서 발생한 페트병을 다시 재활용하는 건 우리나라 자원의 선순환의 첫 걸음일 것이다. 
<br>
마지막으로, 이 모든 공정을 지켜본 관계자의 말을 전한다.
<br>
“역시 페트병은 페트병으로 돌아갈 때 가장 아름답지 않나요?”
</p>
 <div class="detail-cta">
    <img src="${pageContext.request.contextPath}/sustainability_images/kakao.png"
         alt="카카오 채널 추가">
</div>
 
</div><!-- sustainability-section-container -->
    </main>
  </div>
</div>
</c:if>
<!-- 네번째 상세 -->
<c:if test="${content.content_id == 11}">
<div class="root">
  <div class="cmp-container sustainability-container">

    <main class="container">

   <!-- HERO (full width) -->
<section class="sustainability-hero">
    <div class="hero-inner">

        <c:forEach var="media" items="${content.mediaList}">
            <c:if test="${media.media_file_type eq 'IMAGE'}">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </c:if>
        </c:forEach>

    </div>
</section>
<div class="sustainability-section-container">
  <!-- 1. INTRO 섹션 -->
  <section class="sustainability-intro">
  
    <div class="intro-inner">
      <h2>부산 광안리에서 함께한<br>
해양 정화 활동 ‘바다쓰담’</h2>
      <p>
        2024.09.30
      </p>
    </div>
         <p><br>
지난 28일, 한국 코카-콜라는 국제 연안 정화의 날을 기념하여 환경재단과 함께 부산 광안리 해수욕장 일대에서 시민들과 함께 하는 ‘바다쓰담 캠페인’을 펼쳤다. '바다쓰담'은 ‘바다의 쓰레기를 담다’와 ‘바다를 쓰담쓰담 어루만진다’는 의미를 담고 있으며, 해양 쓰레기 문제의 심각성을 알리고 다양한 해양 보호 활동을 지원하기 위해 환경재단과 함께 2020년부터 진행하고 있는 캠페인이다.<br>
&nbsp;</p>
<p>광안리 ‘바다쓰담’ 활동은 코카-콜라와 환경재단이 함께 진행하는 ‘2024 바다쓰담 캠페인’의 일환으로 진행됐다. 이번 활동은 보다 더 많은 사람들과 해양 보호의 중요성에 대한 공감대를 형성하기 위해 마련됐으며, 사전 등록 참가자를 포함해 해양 보호 활동을 이어오고 있는 비영리단체, 한국 코카-콜라 임직원, 부산시 학교, 부산 시민 및 관광객 등 총 322명이 함께했다.<br>
&nbsp;</p>
<p>쓰레기 줍기 외에도 보물 찾기와 플로깅 인증 등 다양한 이벤트를 통해 참가자들이 보다 즐겁게 바다쓰담 활동에 참여할 수 있도록 했다.</p>
  </section>
  
<div class="global-sustainability3">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id eq 28}">
            <div class="global-card__image">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
                     <i id="s8">부산 광안리에서 진행된 ‘바다쓰담’ 해양 정화 활동에 진행 중인 참가자들의 모습</i>
            </div>
        </c:if>
    </c:forEach>
    
</div>



<p>특히 광안리는 부산의 대표적인 관광지로, 매년 수백만 명의 관광객이 방문하는 곳이다. 매일 15명 이상의 청소 인력이 투입되고 있음에도 불구하고, 여전히 쓰레기로 몸살을 앓고 있다. 이번 활동을 통해 참가자들은 총 490리터의 쓰레기를 수거하며, 광안리 해수욕장 정화 활동에 힘을 보탤 수 있었다.</p>

<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 29}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>부산 수영구 시민 박시은님은 “수거한 쓰레기를 재질에 따라 분류해 본 적은 처음이다. 직접 분류해보니 모래사장 속에 파묻힌 담배꽁초와 플라스틱 파편이 많이 발견되었는데 이는 크기도 작고 줍기가 힘들었다.”며 “이렇게 작은 쓰레기들이 쌓여서 해변을 더럽히고, 결국 바다로 흘러간다는 사실을 눈으로 확인하며 큰 책임감을 느꼈다. 개인이 조금만 더 신경 쓰면 큰 변화를 가져올 수 있음을 체감하게 되었다”고 소감을 전했다.<br>
&nbsp;</p>
<p>또 다른 참여자인 문현여자중학교 성소연 선생님은 “그동안 학생들과 해왔던 플로깅은 단순히 학교 근처 쓰레기를 줍는 것이 다였다”며 “이번 바다쓰담 캠페인에서는 학생들과 플로깅하는 모습을 사진으로 남기며, 곳곳에 숨겨져 있는 조개껍질을 찾는 이벤트를 함께해 시간 가는 줄 몰랐다. 학생들과 의미 있는 추억이 생겨 기쁘다”고 말했다.</p>


<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 30}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>
<p>코카-콜라는 환경재단과 긴밀한 협력을 통해 계속해서 지역사회를 위한 환경적 노력을 이어나갈 것이다.</p><br>
<p>한편, 코카-콜라와 환경재단이 2020년부터 진행해온 바다쓰담 캠페인은 지난해까지 총 44개 팀(단체)을 지원해왔고, 268개 협력기관(학교, 지자체, 공공기관, 비영리조직 등)이 388회의 정화 활동을 통해 약 104톤의 쓰레기를 수거했다. 5년 차를 맞이한 올해는 전국 각지에 기반을 둔 13개 팀이 참여 중이다.<br>
<br>
&nbsp;</p>
<u>코카-콜라 X 환경재단 ‘바다쓰담’ 캠페인으로 지원해온 다양한 해양 정화 활동 사진들 </u>
<div class="global-sustainability2">
    <c:forEach var="media" items="${content.mediaList}">
        <c:if test="${media.media_file_type eq 'CARD' and media.media_id == 31}">
            <div class="global-card__image2">
                <img src="${pageContext.request.contextPath}${media.media_file}"
                     alt="${media.media_description}">
            </div>
        </c:if>
    </c:forEach>
</div>

 <div class="detail-cta">
    <img src="${pageContext.request.contextPath}/sustainability_images/kakao.png"
         alt="카카오 채널 추가">
</div>
 
</div><!-- sustainability-section-container -->





    </main>
  </div>
</div>
</c:if>
 <%@ include file="../Footer.jsp" %> 

</body>
</html>
