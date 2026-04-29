<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
.footer-wrapper {
    background-color: #000;
    color: #fff;
    padding: 80px 0 60px;
    font-family: 'Noto Sans KR', sans-serif;
    margin-top: 100px;
}

.footer-inner {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* 상단 로고 및 국가 선택 영역 */
.footer-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 30px;
    border-bottom: 2px solid #fff;
}

.footer-logo img {
    height: 40px;
}

.footer-lang-btn {
    border: 2px solid #fff;
    border-radius: 50px;
    padding: 8px 20px;
    background: transparent;
    color: #fff;
    font-size: 14px;
    display: flex;
    align-items: center;
    gap: 8px;
    cursor: pointer;
}

/* 중간 메뉴 영역 */
.footer-middle {
    display: flex;
    justify-content: space-between;
    padding: 50px 0;
    border-bottom: 2px solid #fff;
}

.footer-links-group {
    display: flex;
    gap: 120px; /* 열 사이 간격 */
}

.footer-col h5 {
    font-size: 10px;
    color: #fff;
    margin-bottom: 30px;
    font-weight: 500;
}

.footer-col ul {
    list-style: none;
    padding: 0;
}

.footer-col ul li {
    margin-bottom: 20px;
}

.footer-col ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 14px;
    font-weight: 700;
}

/* SNS 아이콘 */
.footer-social {
    display: flex;
    gap: 15px;
}

.footer-social a {
    width: 36px;
    height: 36px;
    border: 1px solid #fff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    text-decoration: none;
    font-size: 16px;
}

/* 하단 저작권 영역 */
.footer-bottom {
    padding-top: 40px;
    text-align: right;
}

.copyright {
    font-size: 12px;
    color: #fff;
    font-weight: 700;
}
</style>
<footer class="footer-wrapper">
    <div class="footer-inner">
        <div class="footer-top">
            <div class="footer-logo">
                <img src="/cocacola/logo/logo-white-large.png">
            </div>
            <button class="footer-lang-btn">
                <i class="fas fa-map-marker-alt"></i> 한국
            </button>
        </div>

        <div class="footer-middle">
            <div class="footer-links-group">
                <div class="footer-col">
                    <h5>소개</h5>
                    <ul>
                        <li><a href="#">기업 소개</a></li>
                        <li><a href="#">히스토리</a></li>
                        <li><a href="#">채용</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>도움이 필요하세요?</h5>
                    <ul>
                        <li><a href="#">사이트 맵</a></li>
                        <li><a href="#">고객 안내</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>법적고지</h5>
                    <ul>
                        <li><a href="#">이용 약관</a></li>
                        <li><a href="#">쿠키 정책</a></li>
                        <li><a href="#">쿠키 설정</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-social">
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
            </div>
        </div>

        <div class="footer-bottom">
            <p class="copyright">© 2024 The Coca-Cola Company. 판권 소유</p>
        </div>
    </div>
</footer>