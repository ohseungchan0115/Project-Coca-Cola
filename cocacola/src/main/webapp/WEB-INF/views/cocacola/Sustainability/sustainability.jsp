<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>


<head>	
 <meta charset="UTF-8">
    <title>코카콜라 지속 가능성</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sustainability.css">

   
    
    
</head>

<body class="page">
<%@ include file="../nav.jsp" %>
<div class="root">
  <div class="cmp-container sustainability-container">

    <main class="container">

      <!-- HERO (full width) -->
<section class="sustainability-hero">
    <div class="hero-inner">

        <c:forEach var="section" items="${sections}">
            <c:if test="${section.section_id == 1}">
                <img src="${pageContext.request.contextPath}${section.section_image}">
            </c:if>
        </c:forEach>

        <h1 class="hero-title">SUSTAINABILITY</h1>
    </div>
</section>


<!-- 전체 컨테이너 -->
<div class="sustainability-section-container">

  <!-- 1. INTRO 섹션 -->
  <section class="sustainability-intro">
    <div class="intro-inner">
      <h2>지속 가능한 미래</h2>
      <p>
        코카-콜라는 지속 가능한 미래를 위해 노력하고 있습니다. 지속 가능한 방식의 비즈니스를 통해 우리의 삶과 지역 사회에 긍정적인 변화를 만들어가고자 합니다.
      </p>
    </div>
  </section>

  <!-- 2. 버튼 그리드 -->
  <div class="container responsivegrid grid three-columns">
    <div class="cmp-container">

      <div class="button button--secondary">
        <a id="button-drink" class="cmp-button" data-cmp-clickable="" href="#a">
          <span class="cmp-button__text">자원순환</span>
        </a>
      </div>

      <div class="button button--secondary">
        <a id="button-life" class="cmp-button" data-cmp-clickable="" href="#b">
          <span class="cmp-button__text">물 환원</span>
        </a>
      </div>

      <div class="button button--secondary">
        <a id="button-recipe" class="cmp-button" data-cmp-clickable="" href="#c">
          <span class="cmp-button__text">커뮤니티</span>
        </a>
      </div>

    </div>
  </div>

  <!-- 3. 타이틀 -->
  <div class="title">
    <div id="a" class="cmp-title">
      <h2 class="cmp-title__text">자원 순환을 통한 지속 가능성</h2>
    </div>
  </div>

  <!-- 4. 캠페인 카드 -->
  <div class="teaser campaign-card">
    <div class="cmp-teaser">

  <div class="cmp-teaser__image">
  <c:forEach var="section" items="${sections}">
    <c:if test="${section.section_id == 2}">
      <img src="${pageContext.request.contextPath}${section.section_image}"
           alt="원더플 캠페인">
    </c:if>
  </c:forEach>
</div>

      <div class="cmp-teaser__content">
        <div class="cmp-teaser__description">
          <h2>한 번 더 사용되는 플라스틱,<br>원더플 캠페인</h2>
          <p>
            2020년부터 진행하고 있는 원더플(ONETHEPL) 캠페인은 
            ‘한 번(ONE) 더(THE) 사용되는 플라스틱(PL)’과 
            ‘원더풀(Wonderful)’이라는 중의적 의미를 가진 소비자 동참형 자원순환 캠페인이다. 
            매년 캠페인 취지에 공감하는 다양한 기업들과 파트너십을 맺고, 
            투명 페트병이 올바른 분리배출을 거쳐 유용한 자원으로 재탄생되는 자원순환을 
            소비자들이 일상 속에서 재미있고 쉽게 경험하도록 돕고 있다.
          </p>
        </div>

        <div class="cmp-teaser__action-container">
          <a class="cmp-teaser__action-link" href="https://www.coca-cola.com/kr/ko/sustainability/ONETHEPL/onethepl-campaign6">
            시즌 6 알아보기
          </a> <!-- 추후 -->
        </div>
      </div>

    </div>
  </div>
<div class="community-slider">
  <div class="community-track">

    <c:set var="cardIndex" value="0" />

    <c:forEach var="section" items="${sections}">
      <c:if test="${section.section_id == 2}">

        <c:forEach var="content" items="${section.contents}">
          <c:if test="${content.content_category eq 'CARD'}">

            <div class="community-card">

  <c:forEach var="media" items="${content.mediaList}">
<a href="${pageContext.request.contextPath}/cocacola/Sustainability/detail?content_id=${content.detail_content_id}">

    <img src="${pageContext.request.contextPath}${media.media_file}">
</a>
  </c:forEach>

  <p>${content.content_body}</p>

</div>
            

          </c:if>
        </c:forEach>

      </c:if>
    </c:forEach>

  </div>

  <!-- 도트 (기존 그대로) -->
  <div class="community-dots">
    <span class="dot active"></span>
    <span class="dot"></span>
    <span class="dot"></span>
  </div>
</div>

<h2 class="cmp-title__text" style="text-align: center;" id="b">코카-콜라 물 환원 프로젝트</h2>

<div class="content-card2">
    <div class="cmp-teaser__content2">
<p class="cmp-teaser__description2">
코카-콜라는 2007년부터 전 세계에서 생산하는 모든 제품과
제조 과정에서 사용한 물의 총량을 각 지역사회의 필요에 맞게
다양한 방법으로 환원하고 있다.
</p>
    </div>
</div><!-- 나중에 -->

<c:forEach var="section" items="${sections}">
    <c:if test="${section.section_id == 3}">

        <div class="water-section">
            <div class="water-card">
                
                <!-- 왼쪽 텍스트 (기존 그대로) -->
                <div class="water-card__text">
                    <h2 class="water-card__title">
                        물 순환을 위해 ‘숲 가꾸기’가 중요한 이유
                    </h2>

                    <p class="water-card__description">
                        한국 코카-콜라는 ‘숲 가꾸기를 통한 물 순환 확대 파트너십’을 체결하고,
                        여주 지역 숲을 대상으로 물 순환 강화와 탄소흡수 확대를 위한 활동을
                        진행해오고 있다. 환경에 진심인 ‘쓰레기 아저씨’ 배우 김석훈 또한
                        코카-콜라와 숲 가꾸기 체험에 나섰다.
                        “잠깐, 도대체 물과 숲이 어떤 관계인 거죠?”
                    </p>

                    <a href="#" class="water-card__button">자세히 알아보기</a>
                </div>

                <!-- 오른쪽 이미지 (DB에서만 변경) -->
                <div class="water-card__image">
                    <img src="${pageContext.request.contextPath}${section.section_image}"
                         alt="숲 가꾸기 활동 이미지">
                </div>

            </div>
        </div>

    </c:if>
</c:forEach>


<section class="community-section">

    <!-- AWS 카드 -->
    <div class="info-card">
        <h3 class="info-card__title">국제수자원관리동맹(AWS) 인증</h3>

        <p class="info-card__desc">
            코카-콜라는 국제수자원관리 동맹(AWS: Alliance for Water Stewardship)을 통해
            지역 수자원 지속가능성 향상에 기여하고자 노력하고 있습니다.
        </p>

        <p class="info-card__note">
            * 국제수자원관리 동맹(AWS: Alliance for Water Stewardship)은 책임 있는 물 사용을 위한
            국제 표준이자 다자 이해관계자 협력체로 전 세계 200여 개 기업, 시민사회, 공공 부문을
            연결하여 지속가능한 수자원 관리 활동을 추진합니다.
        </p>

        <c:if test="${not empty waterDocs}">
    <c:forEach var="doc" items="${waterDocs}">
        <a href="${pageContext.request.contextPath}${doc.document_file}"
           class="info-card__button"
           target="_blank">
            ${doc.document_title}
        </a>
    </c:forEach>
</c:if>

    </div>

    <!-- 커뮤니티 타이틀 -->
    <h2 class="community-title" id="c">커뮤니티 활동</h2>

    <!-- 커뮤니티 카드 -->
    <div class="info-card">
        <p class="info-card__desc center">
            코카-콜라는 지역사회와 함께 성장하기 위한 발판을 마련하고,
            지역사회 구성원들이 건강하고 행복한 삶을 살 수 있도록
            다양한 프로그램을 제공하고 있다.
        </p>
    </div>

</section>
<div class="community-slider">

    <div class="community-track">

        <c:forEach var="section" items="${sections}">
            <c:if test="${section.section_id == 2}">

                <c:forEach var="content" items="${section.contents}">
                    <c:if test="${content.content_category eq 'SLIDE'}">

                        <div class="community-card">

                            <!-- SLIDE 이미지 -->
                            <c:forEach var="media" items="${content.mediaList}">
                            <a href="${pageContext.request.contextPath}/cocacola/Sustainability/detail?content_id=${content.detail_content_id}">
                                <img src="${pageContext.request.contextPath}${media.media_file}"
                                     alt="${media.media_description}">
                                     </a>
                            </c:forEach>

                            <!-- SLIDE 문구 -->
                            <p>${content.content_body}</p>

                        </div>

                    </c:if>
                </c:forEach>

            </c:if>
        </c:forEach>

    </div>

    <!-- 도트 -->
    <div class="community-dots">
        <span class="dot active"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

</div>


<section class="global-sustainability">
    <h2 class="global-title">글로벌 지속가능성</h2>

    <div class="global-card">
        <!-- 왼쪽 이미지 -->
        <div class="global-card__image">
          <c:forEach var="section" items="${sections}">
    <c:if test="${section.section_id == 4}">

        <img src="${pageContext.request.contextPath}${section.section_image}"
             alt="글로벌 프로젝트 이미지">

    </c:if>
</c:forEach>
          
        </div>

        <!-- 오른쪽 텍스트 -->
        <div class="global-card__content">
            <h3>Our Sustainability Progress</h3>
            <p>
                수자원, 패키지, 기후, 농업 등 지속가능성 분야의 최신 업데이트를 제공합니다.
            </p>
            <a href="#" class="global-button">더 알아보기</a>
        </div>
    </div>
</section>

</div> <!-- .sustainability-section-container -->

    </main>
  </div>
</div>
 <%@ include file="../Footer.jsp" %> 

<script>
const sliders = document.querySelectorAll('.community-slider');

sliders.forEach(slider => {
    const track = slider.querySelector('.community-track');
    const dots = slider.querySelectorAll('.dot');
    const cardCount = track.children.length;
    const visibleCount = 3;
    const maxIndex = Math.ceil(cardCount / visibleCount) - 1;

    let index = 0;

    dots.forEach((dot, i) => {
        dot.addEventListener('click', () => {
            index = Math.min(i, maxIndex);

            const movePercent = index * 100;
            track.style.transform = `translateX(-${movePercent}%)`;

            dots.forEach(d => d.classList.remove('active'));
            dot.classList.add('active');
        });
    });
});
</script>



</body>
</html>
