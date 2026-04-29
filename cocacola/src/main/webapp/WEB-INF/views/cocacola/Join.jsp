<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | 한국 코카-콜라</title>
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

    /* 코카콜라 레드 포인트 */
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

    /* 입력창 스타일 고도화 */
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

    /* 중복 확인 버튼 */
    #checkBtn {
        width: 120px;
        height: 54px;
        border-radius: 12px !important;
        border: 1.5px solid #212529 !important;
        background: #fff !important;
        color: #212529;
        font-weight: 700;
        transition: all 0.2s;
    }

    #checkBtn:hover {
        background: #212529 !important;
        color: #fff !important;
    }

    /* 가입 완료 버튼 */
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

    /* 하단 안내 메시지 */
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

    /* placeholder 스타일 */
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
			<h2>회원가입</h2>
			<p>코카-콜라 멤버십에 가입하고 다양한 혜택을 누리세요.</p>
		</div>

		<form id="joinForm"
			action="${pageContext.request.contextPath}/cocacola/join.do"
			method="post">
			<div class="form-group">
				<label>아이디</label>
				<div style="display: flex; gap: 10px;">
					<input type="text" id="userid" name="userid"
						placeholder="사용할 아이디를 입력하세요" required>
					<button type="button" id="checkBtn"
						style="width: 120px; border-radius: 4px; border: 1px solid #000; background: #fff; cursor: pointer; font-weight: 700;">중복
						확인</button>
				</div>
				<span id="idMsg"></span>
			</div>

			<div class="form-group">
				<label>비밀번호</label> <input type="password" name="userpw"
					placeholder="비밀번호를 입력하세요" required>
			</div>

			<div class="form-group">
				<label>이름</label> <input type="text" name="username"
					placeholder="이름을 입력하세요" required>
			</div>

			<div class="form-group">
				<label>이메일</label> <input type="email" name="email"
					placeholder="example@coca-cola.com" required>
			</div>

			<div class="form-group">
				<label>전화번호</label> <input type="text" name="phone"
					placeholder="010-0000-0000" required>
			</div>

			<button type="submit" class="join-btn">가입 완료</button>
		</form>

		<div class="join-footer">
			이미 계정이 있으신가요? <a
				href="${pageContext.request.contextPath}/cocacola/login">로그인하기</a>
		</div>
	</div>

	<%@ include file="Footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
$(document).ready(function() {
    let isIdChecked = false; // 중복 체크 여부 확인용 플래그

    $("#checkBtn").click(function() {
        var userid = $("#userid").val();
        
        if(userid == "") {
            alert("아이디를 입력해주세요.");
            return;
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/cocacola/idCheck",
            type: "POST",
            data: { "userid": userid },
            success: function(data) {
                if(data == "0") {
                    $("#idMsg").text("사용 가능한 아이디입니다.").css("color", "blue");
                    isIdChecked = true;
                } else {
                    $("#idMsg").text("이미 사용 중인 아이디입니다.").css("color", "red");
                    $("#userid").val("");
                    isIdChecked = false;
                }
            }
        });
    });

    // 아이디 입력값이 바뀌면 중복체크 다시 하도록 초기화
    $("#userid").on("input", function() {
        isIdChecked = false;
        $("#idMsg").text("");
    });

    // 폼 제출 전 체크
    $("#joinForm").submit(function() {
        if(!isIdChecked) {
            alert("아이디 중복 확인을 해주세요.");
            return false;
        }
    });
});

const userName = "${userName}";
if (userName !== "") {
    alert(userName + "님, 회원가입이 완료되었습니다!");
}
</script>
</body>
</html>