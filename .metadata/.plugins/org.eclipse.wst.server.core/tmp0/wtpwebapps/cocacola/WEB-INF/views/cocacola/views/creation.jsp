<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>creation</title>

<!-- CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/cocacola/css/creation.css">
</head>
<body>

 <%@ include file="nav.jsp" %> 

 <!-- HERO -->
    <main class="container responsivegrid">
    
        <div class="cmp-container">
            <div class="container responsivegrid container_content-start">
                <div class="cmp-container">

                     <!-- HERO -->
	                <div class="adaptiveImage image image--full-bleed opener-hero">
					  <picture class="loaded visible">
					    <img
					      src="${pageContext.request.contextPath}/cocacola/images/creation_hero.jpg"
					      alt="다양한 코카콜라 제품이 벽에 걸려있는 사진">
					  </picture>
					</div>
                </div>
            </div>
			
			<!-- INTRO -->
            <div class="container responsivegrid container_content">
			    <section class="opener-intro">
				  <div class="opener-intro__inner">
				    <p>
				     한정판으로 진행되는 코카-콜라 크리에이션 (Coca-Cola® Creations) 프로젝트! 지금까지 출시된 다양한 크리에이션을 만나보세요.
				    </p>
				  </div>
				</section>
			</div>
        </div>
        <c:forEach var="p" items="${postList}">
		  ${p.storyId}<br>
		</c:forEach>
        
         <!-- ===============================
		     CREATION CARD AREA
		================================ -->
		
        <c:forEach var="p" items="${creationList}" begin="0" end="6">

		  <!-- RIGHT CARD : 홀수 (1,3,5,7) -->
		  <c:if test="${p.storyId % 2 == 1}">
		    <div class="teaser campaign-card content-on-bottom content-on-right">
		      <div class="cmp-teaser">
		
		        <div class="cmp-teaser__content">
		          <div class="cmp-teaser__description">
		            <h3>${p.title}</h3>
		            <p>${p.summary}</p>
		          </div>
		
		          <div class="cmp-teaser__action-container">
		            <a class="cmp-teaser__action-link" href="${p.externalUrl}">더 보기</a>
		          </div>
		        </div>
		
		        <div class="cmp-teaser__image">
		          <picture>
		            <img src="${pageContext.request.contextPath}${p.thumbnailUrl}"
		                 alt="${p.title}"
		                 class="cmp-image__image">
		          </picture>
		        </div>
		
		      </div>
		    </div>
		  </c:if>
		
		  <!-- LEFT CARD : 짝수 (2,4,6) -->
		  <c:if test="${p.storyId % 2 == 0}">
		    <div class="teaser campaign-card content-on-bottom content-on-left">
		      <div class="cmp-teaser">
		
		        <div class="cmp-teaser__content">
		          <div class="cmp-teaser__description">
		            <h3>${p.title}</h3>
		            <p>${p.summary}</p>
		          </div>
		
		          <div class="cmp-teaser__action-container">
		            <a class="cmp-teaser__action-link" href="${p.externalUrl}">더 보기</a>
		          </div>
		        </div>
		
		        <div class="cmp-teaser__image">
		          <picture>
		            <img src="${pageContext.request.contextPath}${p.thumbnailUrl}"
		                 alt="${p.title}"
		                 class="cmp-image__image">
		          </picture>
		        </div>
		
		      </div>
		    </div>
		  </c:if>
		
		</c:forEach>
		
		<!-- ===============================
		     CREATION TITLE AREA
		================================ -->
		<div class="title">
		  <div id="a" class="cmp-title">
		    <h2 class="cmp-title__text">추천 콘텐츠</h2>
		  </div>
		</div>

		<section class="creation-recommend">
		
		  <div class="creation-slider">
		    <div class="creation-viewport">
		      <div class="creation-track" id="creationTrack">
		
		        <c:forEach var="p" items="${postList2}">
		          <div class="creation-card">
		
		            <div class="creation-card__image">
		              <img
		                src="${pageContext.request.contextPath}${p.thumbnailUrl}"
		                alt=""
		                draggable="false">
		            </div>
		
		            <div class="creation-card__body">
		              <h3 class="creation-card__title">${p.title}</h3>
		              <p class="creation-card__desc">${p.summary}</p>
		              <c:if test="${not empty p.externalUrl}">
						  <a
						    href="${p.externalUrl}"
						    class="creation-card__more">
						    더 보기 →
						  </a>
						</c:if>

		            </div>
		
		          </div>
		        </c:forEach>
		
		      </div>
		    </div>
		  </div>
		
		  <div class="creation-dots" id="creationDots"></div>
		
		</section>





		
		
		<!-- ===============================
		     CREATION TITLE AREA
		================================ -->
		<div class="title">
		  <div id="a" class="cmp-title">
		    <h2 class="cmp-title__text">더 많은 콘텐츠</h2>
		  </div>
		</div>
		
		<!-- ===============================
		     OPENER LIST-ITEM AREA
		================================ -->
		<c:forEach var="p" items="${postList3}">
		  <div class="teaser list-item">		
		
		    <!-- 텍스트 영역 -->
		    <div class="list-item__content">
		      <h3 class="list-item__title">
		        ${p.title}
		      </h3>
		
		      <p class="list-item__description">
		        ${p.summary}
		      </p>
		
		      <div class="cmp-teaser__action-container">
		        <a class="cmp-teaser__action-link"
		           href="${p.externalUrl}">
		          더 보기
		        </a>
		      </div>
		    </div>
		
		    <!-- 이미지 영역 -->
		    <div class="list-item__image">
		      <img
		        src="${pageContext.request.contextPath}${p.thumbnailUrl}"
		        alt="${p.title}">
		    </div>
		
		  </div>
		</c:forEach>
			
	</main>
	<%@ include file="Footer.jsp" %> 
	
<script>
(function () {
  const track = document.getElementById('creationTrack');
  const cards = track.querySelectorAll('.creation-card');
  const dotsWrap = document.getElementById('creationDots');
  const links = document.querySelectorAll('.creation-card__more');

  if (!track || cards.length === 0) return;

  const gap = 24;
  const step = cards[0].offsetWidth + gap;
  const visible = 3;
  const maxIndex = cards.length - visible;

  let index = 0;
  let startX = 0;
  let baseX = 0;
  let dragging = false;
  let isDragging = false;

  /* =====================
     DOT 생성
  ===================== */
  dotsWrap.innerHTML = '';
  for (let i = 0; i <= maxIndex; i++) {
    const dot = document.createElement('span');
    if (i === 0) dot.classList.add('active');
    dot.addEventListener('click', () => moveTo(i));
    dotsWrap.appendChild(dot);
  }

  const dots = dotsWrap.children;

  function updateDots() {
    [...dots].forEach(d => d.classList.remove('active'));
    dots[index]?.classList.add('active');
  }

  /* =====================
     이동 (스무스)
  ===================== */
  function moveTo(i) {
    index = Math.max(0, Math.min(i, maxIndex));
    baseX = -step * index;

    // 놓을 때만 스무스
    track.style.transition = 'margin-left 0.45s cubic-bezier(.22,.61,.36,1)';
    track.style.marginLeft = baseX + 'px';

    updateDots();

    // 다음 드래그 대비
    setTimeout(() => {
      track.style.transition = 'none';
    }, 450);
  }

  /* =====================
     Drag 시작
  ===================== */
  track.addEventListener('mousedown', e => {
    dragging = true;
    isDragging = false;
    startX = e.clientX;
    track.classList.add('dragging');
  });

  /* =====================
     Drag 중
  ===================== */
  window.addEventListener('mousemove', e => {
    if (!dragging) return;

    const diff = e.clientX - startX;

    if (Math.abs(diff) > 5) {
      isDragging = true; // ⭐ 실제 드래그 판정
    }

    track.style.marginLeft = baseX + diff + 'px';
  });

  /* =====================
     Drag 종료
  ===================== */
  window.addEventListener('mouseup', e => {
    if (!dragging) return;

    dragging = false;
    track.classList.remove('dragging');

    const diff = e.clientX - startX;
    if (Math.abs(diff) > step / 3) {
      index += diff < 0 ? 1 : -1;
    }

    moveTo(index);
  });

  /* =====================
     더 보기 클릭 제어 (⭐⭐ 핵심)
  ===================== */
  links.forEach(link => {
    link.addEventListener('click', e => {
      if (isDragging) {
        e.preventDefault(); // 드래그 중이면 이동 ❌
      }
    });
  });

  /* 최초 위치 */
  moveTo(0);
})();
</script>

</body>
</html>