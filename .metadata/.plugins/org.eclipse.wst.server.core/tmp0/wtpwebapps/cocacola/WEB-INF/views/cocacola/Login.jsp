<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 한국 코카-콜라</title>
<style>
    /* 로그인 페이지 전용 스타일 */
    .login-container {
        max-width: 400px;
        margin: 80px auto;
        padding: 40px 20px;
        text-align: center;
    }

    .login-header h2 {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 10px;
        color: #000;
    }

    .login-header p {
        color: #666;
        margin-bottom: 30px;
        font-size: 14px;
    }

    .login-form input {
        width: 100%;
        height: 50px;
        padding: 0 15px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 15px;
    }

    .login-form input:focus {
        border-color: #F40009; /* 코카콜라 레드 */
        outline: none;
    }

    .login-btn {
        width: 100%;
        height: 55px;
        background-color: #F40009;
        color: #fff;
        border: none;
        border-radius: 30px;
        font-size: 16px;
        font-weight: 700;
        cursor: pointer;
        transition: background-color 0.2s;
        margin-top: 10px;
    }

    .login-btn:hover {
        background-color: #d30008;
    }

    .error-msg {
        color: #F40009;
        font-size: 13px;
        margin-bottom: 15px;
        text-align: left;
    }

    .login-footer {
        margin-top: 25px;
        border-top: 1px solid #eee;
        padding-top: 20px;
    }

    .login-footer a {
        color: #666;
        text-decoration: none;
        font-size: 14px;
        margin: 0 10px;
    }

    .login-footer a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <%@ include file="nav.jsp" %>

    <div class="login-container">
        <div class="login-header">
            <h2>로그인</h2>
            <p>코카-콜라와 함께하는 짜릿한 순간!</p>
        </div>

        <form action="${pageContext.request.contextPath}/cocacola/login.do" method="post" class="login-form">
            <c:if test="${param.error == 'true'}">
                <div class="error-msg">
                    아이디 또는 비밀번호가 일치하지 않습니다.
                </div>
            </c:if>

            <input type="text" name="userid" placeholder="아이디" required autofocus>
            <input type="password" name="userpw" placeholder="비밀번호" required>
            
            <button type="submit" class="login-btn">로그인</button>
        </form>

        <div class="login-footer">
            <a href="${pageContext.request.contextPath}/cocacola/FindId">아이디 찾기</a>
           <a href="${pageContext.request.contextPath}/cocacola/findPass">비밀번호 찾기</a>

            <a href="${pageContext.request.contextPath}/cocacola/join">회원가입</a>
        </div>
    </div>

    <%@ include file="Footer.jsp" %>
<script>
    const userName = "${userName}";
    if (userName !== "") {
        alert(userName + "님, 회원가입이 완료되었습니다!");
    }
</script>
</body>
</html>