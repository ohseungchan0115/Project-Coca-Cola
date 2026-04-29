<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기 | 한국 코카-콜라</title>
<style>
    /* 배경 및 기본 폰트 설정 */
    body {
        background-color: #f8f9fa;
        font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, system-ui, Roboto, sans-serif;
    }

    .join-container {
        max-width: 480px;
        margin: 80px auto;
        padding: 50px 40px;
        background: #fff;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
    }

    .join-header {
        text-align: center;
        margin-bottom: 45px;
    }

    .join-header h2 {
        font-size: 34px;
        font-weight: 800;
        color: #F40009;
        margin-bottom: 12px;
        letter-spacing: -1px;
    }

    .join-header p {
        color: #6c757d;
        font-size: 15px;
        line-height: 1.5;
    }

    .form-group {
        margin-bottom: 24px;
    }

    .form-group label {
        display: block;
        font-size: 14px;
        font-weight: 700;
        margin-bottom: 10px;
        color: #212529;
    }

    .form-group input {
        width: 100%;
        height: 54px;
        padding: 0 18px;
        border: 1.5px solid #e9ecef;
        border-radius: 12px;
        box-sizing: border-box;
        font-size: 15px;
        background-color: #fdfdfd;
        transition: all 0.2s ease;
    }

    .form-group input:focus {
        border-color: #F40009;
        background-color: #fff;
        box-shadow: 0 0 0 4px rgba(244, 0, 9, 0.1);
        outline: none;
    }

    .join-btn {
        width: 100%;
        height: 60px;
        background-color: #F40009;
        color: #fff;
        border: none;
        border-radius: 16px;
        font-size: 18px;
        font-weight: 700;
        cursor: pointer;
        margin-top: 15px;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        box-shadow: 0 4px 15px rgba(244, 0, 9, 0.3);
    }

    .join-btn:hover {
        background-color: #000;
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
    }

    #idMsg {
        font-size: 13px;
        margin-top: 8px;
        font-weight: 500;
    }

    .join-footer {
        text-align: center;
        margin-top: 35px;
        padding-top: 25px;
        border-top: 1px solid #eee;
        font-size: 14px;
        color: #6c757d;
    }

    .join-footer a {
        color: #F40009;
        text-decoration: none;
        font-weight: 700;
        margin-left: 5px;
    }

    .join-footer a:hover {
        text-decoration: underline;
    }

    input::placeholder {
        color: #adb5bd;
        font-size: 14px;
    }
</style>
</head>
<body>

<%@ include file="nav.jsp"%>

<div class="join-container">
    <div class="join-header">
        <h2>아이디 찾기</h2>
        <p>
            가입 시 등록한 전화번호를 입력해주세요.<br>
            아이디를 알려드릴게요.
        </p>
    </div>

    <form action="${pageContext.request.contextPath}/cocacola/FindId" method="post">
<div class="form-group">
    <label for="phone">전화번호</label>
    <input type="text" id="phone" name="phone"
           placeholder="01012345678" required>
</div>

        <!-- 결과 메시지 -->
        <c:if test="${not empty msg}">
            <p id="idMsg" style="color:${success ? '#28a745' : '#F40009'}">
                ${msg}
            </p>
        </c:if>

        <button type="submit" class="join-btn">
            아이디 찾기
        </button>
    </form>

    <div class="join-footer">
        기억나셨나요?
        <a href="login">로그인</a>
    </div>
</div>

<%@ include file="Footer.jsp"%>


</body>
</html>
