<%@ page pageEncoding="UTF-8" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
/* 1. 네비게이션 기본 구조 */
.main-nav {
    width: 100%;
    background-color: #fff;
    position: relative;
    z-index: 1000;
    
}

.nav-container {
    max-width: 1200px; 
    margin: 0 auto;
    display: flex;
    align-items: center;
    height: 80px;
    
    padding: 0 40px;
}

/* 2. 로고 및 대메뉴 */
.nav-logo img {
    height: 28px;
    display: block;
}

.nav-menu {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
    height: 100%;
    align-items: center;
    margin-right: auto;
}

.nav-auth a {
    text-decoration: none;
    color: #000;
    font-size: 14px;
    font-weight: 600;
    padding: 8px 16px;
    border: 1px solid #000;
    border-radius: 20px;
    transition: all 0.2s ease;
}

/* Login hover */
.nav-auth a:hover {
    background-color: #000;
    color: #fff;
}

.nav-menu > li {
    position: relative;
    height: 100%;
    display: flex;
    align-items: center;
}

.nav-menu > li > a {
    text-decoration: none;
    color: #000;
    font-size: 15px;
    font-weight: 700;
    padding: 0 20px;
    height: 100%;
    display: flex; 
    align-items: center;
    white-space: nowrap;
}

/* 대메뉴 화살표 */
.nav-menu > li > a.has-arrow::after {
    content: '';
    display: inline-block;
    width: 6px;
    height: 6px;
    border-top: 2px solid #000;
    border-right: 2px solid #000;
    margin-left: 10px;
    transform: rotate(45deg); 
    transition: transform 0.3s ease;
}

.dropdown:hover > a.has-arrow::after {
    transform: rotate(135deg);
    margin-top: -4px;
    
}
.nav-menu > li > a::before {
    content: '';
    position: absolute;
    bottom: 0;
    left: 20px;
    right: 20px;
    height: 4px;
    background-color: #000;
    opacity: 0;
    transition: opacity 0.2s ease;
}
.nav-menu > li > a:hover::before {
    opacity: 1;
}


/* 활성화 메뉴 밑줄 */
.nav-menu > li > a.active::before {
    content: '';
    position: absolute;
    bottom: 0;
    left: 20px;
    right: 20px;
    height: 4px;
    background-color: #000;
    opacity: 1;
}

/* 4. 드롭다운 하위 메뉴 */
.dropdown-content {
    display: none;
    position: absolute;
    top: 80px;
    left: 0;
    background-color: #fff;
    width: 220px; 
    border: 1px solid #ddd;
    border-top: none;
    list-style: none;
    padding: 20px 0;
    margin: 0;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.dropdown:hover > a::before {
    opacity: 1;
}
.dropdown-content li a {
    text-decoration: none;
    color: black;
    /* 좌우 여백 */
    padding: 12px 30px; 
    display: flex;
    align-items: center;
    font-size: 0.9rem; 
    font-weight: 400;
    line-height: 1.4;
    white-space: nowrap;
    background-color: transparent;
    transition: color 0.2s;
}

/* 하위 메뉴 호버 시: 박스 크기 변하지 않음 */
.dropdown-content li a:hover {
    color: black;
    font-weight: 800;
}

/* 하위 메뉴 화살표: 텍스트 바로 옆에 일관되게 배치 */
.dropdown-content li a::after {
    content: '>';
    font-size: 0.85rem;
    font-weight: bold;
    visibility: hidden;
    opacity: 0;
    margin-left: 10px;
    transition: opacity 0.2s;
}

.dropdown-content li a:hover::after {
    visibility: visible;
    opacity: 1;
}

/* 드롭다운 표시 */
.dropdown:hover .dropdown-content {
    display: block;
}

/* 로그인/로그아웃 버튼 그룹 컨테이너 */
.nav-auth {
  display: flex !important;
  align-items: center !important;
  gap: 15px !important; 
  margin-left: auto !important; 
}

/* "OOO님" 텍스트 스타일 */
.user-info {
  font-size: 14px;
  font-weight: 700;
  color: #F40009; /* 코카콜라 레드 */
  white-space: nowrap; /* 줄바꿈 방지 */
}

/* 버튼 기본 스타일 (Login/Logout 공통) */
.auth-btn {
  text-decoration: none;
  color: #000;
  font-size: 14px;
  font-weight: 700;
  padding: 8px 20px !important;;
  border: 1px solid #000;
  border-radius: 20px !important;;
  transition: all 0.3s ease;
  white-space: nowrap !important;;
  display: inline-block !important;;
  background-color: #fff;
}

.auth-btn:hover {
  background: #000;
  color: #fff;
}

/* nav.jsp 내의 스타일 수정 */
.main-nav .nav-container .nav-auth {
  display: flex !important;
  align-items: center !important;
  gap: 10px !important;
  margin-left: auto !important;
  position: relative !important;
  top: 0 !important; /* 겹침 방지 */
}

</style>


<nav class="main-nav">
    <div class="nav-container">

        <!-- 로고 (메인으로) -->
       <a href="${pageContext.request.contextPath}/cocacola/ourcompany?page=main">
            <img src="${pageContext.request.contextPath}/cocacola/logo/Coke-company-logo-black.png"
                 alt="Coca-Cola Logo"
                 style="display: block; width: 120px; height: auto; margin-right: 50px;">
        </a>

        <ul class="nav-menu">

            <!-- Brands -->
             <li>
              <a href="${pageContext.request.contextPath}/cocacola/brands">
                Brands
            </a>
         </li>

            <%
                String pageParam = request.getParameter("page");
                boolean isCompanyActive =
                        "company".equals(pageParam) || "since".equals(pageParam);
            %>

            <!-- Our Company -->
            <li class="dropdown">
                <a href="#"
                   class="has-arrow <%= isCompanyActive ? "active" : "" %>">
                   Our Company
                </a>
                <ul class="dropdown-content">
                    <li>
                        <a href="${pageContext.request.contextPath}/cocacola/ourcompany?page=company">
                          Coca-Cola Company
                       </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/cocacola/ourcompany?page=since">
                           Since 1886
                      </a></li>
                </ul>
            </li>

            <!-- Discover -->
            <li class="dropdown">
                <a href="#"
                   class="has-arrow <%= request.getRequestURI().contains("/Discover1") ? "active" : "" %>">
                   Discover
                </a>
                <ul class="dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/cocacola/brandstory">Brand Story</a></li>
               <li><a href="${pageContext.request.contextPath}/cocacola/cokemeal">Coke & Meal</a></li>
                    <li><a href="${pageContext.request.contextPath}/cocacola/originals">Originals</a></li>
              <li>
		            <a href="${pageContext.request.contextPath}/Discover2/opener">
		                Opener
		            </a>
              </li>
              <li>
		            <a href="${pageContext.request.contextPath}/Discover2/creation">
		                Creations
		            </a>
              </li>
              <li>
		            <a href="${pageContext.request.contextPath}/Discover2/cokeplay">
		                CokePLAY App
		            </a>
              </li>
                </ul>
            </li>

            <!-- Sustainability -->
            <li>
                <a href="${pageContext.request.contextPath}/sustainability">Sustainability</a>
            </li>
        </ul>
        <div class="nav-auth">
  <c:choose>
    <%-- 1. 세션에 member가 아예 없는 경우: Login만 표시 --%>
    <c:when test="${empty sessionScope.member}">
      <a href="${pageContext.request.contextPath}/cocacola/login" class="auth-btn">Login</a>
    </c:when>
    
    <%-- 2. 세션에 member가 있는 경우: 사용자 이름 + Logout만 표시 --%>
    <c:otherwise>
      <span class="user-info">${sessionScope.member.username}님</span>
      <a href="${pageContext.request.contextPath}/cocacola/logout.do" class="auth-btn">Logout</a>
    </c:otherwise>
  </c:choose>
</div>
    </div>
</nav>

