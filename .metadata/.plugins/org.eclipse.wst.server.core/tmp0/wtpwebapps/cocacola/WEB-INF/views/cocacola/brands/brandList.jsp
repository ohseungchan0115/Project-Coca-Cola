<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2025. 12. 23. 오전 11:30:43</title>
<link rel="shortcut icon" type="image/x-icon"
   href="http://localhost/webPro/images/SiSt.ico">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


body {
   font-family: Arial, sans-serif;
   background-color: #EFEFEF;
       overflow-y: scroll;
}



.brand-top {
   text-align: center;
   margin-left:auto;
   flex:1;
   align-items: center; 
}


.brand-top h2 {
   text-align: center;
   margin-bottom: 0px;
   font-size: 40px;
}

.brand-top p {
   font-size: 16px;
   margin-top: 0px;
}

.brand-page {
   max-width: 800px;
   margin: 0 auto;
   padding: 60px 20px;
    text-align: center;
    
}

.brands-filter {
   max-width: 1200px;
   margin: 60px auto;
   font-family: Arial, sans-serif;
   text-align: center;
}

.title {
   font-size: 40px;
   font-weight: 700;
   margin-bottom: 10px;
}

.subtitle {
   font-size: 14px;
   color: #666;
   margin-bottom: 30px;
}

/* 토글 버튼 */
.toggle-btn {
   background: none;
   border: none;
   font-size: 20px;
   font-weight: 600;
   cursor: pointer;
    display: inline-flex;
   align-items: center;
   gap: 6px;
   text-align: center;

   margin-top: 30px;
   margin-left: auto;
}


.chevron {
    margin-left: 6px;
    transition: transform 0.25s ease;
    transform: rotate(0deg);          /* 닫힘 */
    transform-origin: center center;  /* ⭐ 중요 */
}

.chevron.open {
    transform: rotate(180deg);        /* 열림 */
}

/* 필터 박스 */
.filter-box {
   margin-top: 30px;
   margin-bottom: 10px;
   padding-top: 50px;
   padding-bottom: 30px;
   padding-left: 50px;
   padding-right: 0;
   border-top: 1px solid #000;
   border-bottom: 1px solid #000;
   display: none;
}

.filter-row {
   display: grid;
   grid-template-columns: repeat(3, 1fr);
   margin-bottom: 24px;
   text-align: left;
}

/* 라디오 커스텀 */
label {
   display: flex;
   align-items: center;
   gap: 10px;
   font-size: 20px;
   cursor: pointer;
}

input[type="radio"] {
   display: none;
}

.custom-radio {
   width: 16px;
   height: 16px;
   border: 2px solid #000;
   border-radius: 50%;
   position: relative;
}

input[type="radio"]:checked+.custom-radio::after {
   content: "";
   width: 8px;
   height: 8px;
   background: #000;
   border-radius: 50%;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
}
/* 기본(선택 안 됨) */
.label-text {
    color: #888;          /* 연한 회색 */
    transition: color 0.2s ease;
    font-weight: 400;
    
}


/* 선택됨 */
input[type="radio"]:checked + .custom-radio + .label-text {
    color: #000;          /* 검정 */
}

/* 라디오 테두리도 연동 */
.custom-radio {
    border: 1px solid #bbb;
}

input[type="radio"]:checked + .custom-radio {
    border-color: #000;
}

input[type="radio"]:checked + .custom-radio::after {
    background: #000;
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
#brandList {
    margin: 40px auto;
    max-width: 780px;

    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* ⭐ 핵심 */

    gap: 20px;
}

.brand-link:hover .brand-item {
    transform: scale(1.07);
    cursor: pointer;
}

.brand-link {
    flex: 0 0 240px;  /* 한 줄에 3개 */
    display: flex;
    justify-content: center;
}



</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
   <!-- brands.html (헤더/푸터 제외) -->
   
   <section class="brand-page">
      <div class="brand-top">
         <h2>Brands</h2>
         <p>분류 기준을 선택하세요</p>
      </div>
      <button class="toggle-btn" id="toggleBtn">
         모든 브랜드
         <svg class="chevron" width="12" height="8" viewBox="0 0 12 8">
        <path d="M1 1l5 5 5-5" fill="none" stroke="#000"
               stroke-width="1.5" />
    </svg>
      </button>


<div class="filter-box" id="filterBox">

    <div class="filter-row">
        <label>
            <input type="radio" name="brand" checked data-category="all">
            <span class="custom-radio"></span>
            <span class="label-text">모든 브랜드</span>
        </label>

        <label>
            <input type="radio" name="brand" data-category="Sparkling Soft Drinks">
            <span class="custom-radio"></span>
            <span class="label-text">Sparkling Soft Drinks</span>
        </label>

        <label>
            <input type="radio" name="brand" data-category="Sports Drinks ">
            <span class="custom-radio"></span>
            <span class="label-text">Sports Drinks & Hydration</span>
        </label>
    </div>

    <div class="filter-row">
        <label>
            <input type="radio" name="brand" data-category="Coffee">
            <span class="custom-radio"></span>
            <span class="label-text">Coffees</span>
        </label>

        <label>
            <input type="radio" name="brand" data-category="Juices">
            <span class="custom-radio"></span>
            <span class="label-text">Juices</span>
        </label>

        <label>
            <input type="radio" name="brand" data-category="Teas">
            <span class="custom-radio"></span>
            <span class="label-text">Teas</span>
        </label>
    </div>
    
</div>

<div id="brandList">
    <c:forEach var="b" items="${mainBrands}">
        <a href="${pageContext.request.contextPath}/cocacola/brandDetail?brandId=${b.brandId}"
   class="brand-link">


            <div class="brand-item" data-category="${b.brandCategories}">
                <img src="${pageContext.request.contextPath}/cocacola/images/${b.brandLogoUrl}"
                     alt="${b.brandName}" />
            </div>

        </a>
    </c:forEach>
</div>





   </section>

<%@ include file="../Footer.jsp" %>
<script>
const toggleBtn = document.getElementById('toggleBtn');
const filterBox = document.getElementById('filterBox');
const chevron = document.querySelector('.chevron');
const radios = document.querySelectorAll('input[name="brand"]');
const brandLinks = document.querySelectorAll('.brand-link');
const brandList = document.getElementById('brandList');

/* 필터 열기 / 닫기 */
toggleBtn.addEventListener('click', () => {
    const isOpen = filterBox.style.display === 'block';

    filterBox.style.display = isOpen ? 'none' : 'block';
    chevron.style.transform = isOpen
        ? 'rotate(360deg)'
        : 'rotate(180deg)';
});

/* 라디오 선택 */
radios.forEach(radio => {
    radio.addEventListener('change', () => {

        // ✅ 선택한 카테고리 (소문자 + trim)
        const category = radio.dataset.category
            .toLowerCase()
            .trim();

        const labelText = radio
            .closest('label')
            .querySelector('.label-text')
            .innerText;

        let visibleCount = 0;

        brandLinks.forEach(link => {
            const item = link.querySelector('.brand-item');

            // ✅ DB에서 온 카테고리들 정규화
            const categories = item.dataset.category
                .toLowerCase()
                .split(',')
                .map(c => c.trim());

            const match =
                category === 'all' ||
                categories.includes(category);

            link.style.display = match ? 'block' : 'none';
            if (match) visibleCount++;
        });

        brandList.classList.toggle('single', visibleCount === 1);
        brandList.classList.toggle('double', visibleCount === 2);

        toggleBtn.childNodes[0].nodeValue = labelText + ' ';
        filterBox.style.display = 'none';
        chevron.style.transform = 'rotate(360deg)';
    });
});
</script>



</body>
</html>






