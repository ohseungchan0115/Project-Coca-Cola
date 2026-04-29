<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link rel="stylesheet" href="nav.css">
<style>
.nav-gnb {
  position: relative;
  background: #fff;
  z-index: 1000;
}

.nav-gnb-inner {
  max-width: 1400px;
  margin: 0 auto;
  height: 80px;
  display: flex;
  align-items: center;
}

/* 로고 */
.nav-logo img {
  height: 20px;
  margin-right: 60px;
  margin-left: 65px;
}

/* 메뉴 */
.nav-menu ul {
  display: flex;
  list-style: none;
  gap: 40px;
}

.nav-item {
  position: relative;
  padding: 30px 0;
  cursor: pointer;
  font-weight: bolder;
  font-size: 15px;
  display: flex;
  align-items: center;
  gap: 6px;
}

/* underline */
.nav-item::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 15px;
  width: 0;
  height: 3px;
  background: #000;
  transition: 0.3s;
}

.nav-item:hover::after {
  width: 100%;
}

/* dropdown */
.nav-dropdown {
  position: absolute;
  top: 100%;
  left: -20px;
  width: 260px;
  background: #fff;
  display: none;
  padding: 40px 0px 40px 20px;
  z-index: 2000;
  box-shadow: 0 10px 30px rgba(0,0,0,0.12);
}

.nav-item:hover .nav-dropdown {
  display: block;
}

.nav-dropdown ul {
  list-style: none;
  display: flex;
  flex-direction: column;
}

.nav-dropdown li {
  padding: 0px 20px 0px 0px;
  margin: 0;
  font-size: 14px;
  font-weight: 400;
}

.nav-dropdown li:hover {
  font-weight: 700;
}

/* chevron */
.nav-chevron {
  transition: transform 0.3s ease;
  transform: rotate(-90deg);
}

.nav-item:hover .nav-chevron {
  transform: rotate(0deg);
}

</style>
<header class="nav-gnb">
  <div class="nav-gnb-inner">

    <!-- 로고 -->
    <div class="nav-logo">
      <img src="${pageContext.request.contextPath}/cocacola/logo/Coke-company-logo-black.png">
    </div>

    <!-- 메뉴 -->
    <nav class="nav-menu">
      <ul>
        <li class="nav-item">
          Brands
        </li>

        <li class="nav-item">
          Our Company
          <svg class="nav-chevron" width="12" height="8" viewBox="0 0 12 8">
            <path d="M1 1l5 5 5-5" fill="none" stroke="#000" stroke-width="1.5" />
          </svg>

          <div class="nav-dropdown">
            <ul>
              <li>Coca-Cola Company</li>
              <li>Since 1886</li>
            </ul>
          </div>
        </li>

        <li class="nav-item">
          Discover
          <svg class="nav-chevron" width="12" height="8" viewBox="0 0 12 8">
            <path d="M1 1l5 5 5-5" fill="none" stroke="#000" stroke-width="1.5" />
          </svg>

          <div class="nav-dropdown">
            <ul>
              <li>Brand Story</li>
              <li>Coke & Meal</li>
              <li>Originals</li>
              <li>Opener</li>
              <li>Creations</li>
              <li>CokePLAY App</li>
            </ul>
          </div>
        </li>

        <li class="nav-item">
          Sustainability
        </li>
      </ul>
    </nav>

  </div>
</header>
