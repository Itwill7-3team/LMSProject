<%@page import="com.member.db.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="./css/insert.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<%
 request.setCharacterEncoding("UTF-8");
%>
<jsp:include page="/include/header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
				<h1>회원가입</h1>
			<form class="signup_form" method="post">
				<div class="input_container">
					<label class="input_label"> <span class="label_text">이메일</span>
						<input class="text_input" name="m_email" id="email" type="email">
					</label>
					<p class="error"></p>
				</div>
				<div class="input_container">
					<label class="input_label"> <span class="label_text">이메일
							확인</span> <input class="text_input" name="m_emailCheck" id="email_check"
						type="email">
					</label>
					<p class="error_msg"></p>
				</div>
				<div class="input_container">
					<label class="input_label"> <span class="label_text">비밀번호</span>
						<input class="text_input" type="password" id="password"
						name="m_pw">
					</label>
					<p class="error_msg1"></p>
					<div class="input_container">
						<label class="input_label"> <span class="label_text">비밀번호
								확인</span> <input class="text_input" type="password" id="password_check"
							name="m_pwCheck">
						</label>
						<p class="error_msg2"></p>
					</div>
					<div class="button_wrapper">
						<button type="submit" class="btn_sub">가입하기</button>
					</div>
			</form>
		</div>
	</div>
	</div>
	<script type="text/javascript">
	var idcheck=false;
	var idcheck2=false;
	var pwcheck=false;
	var pwcheck2=false;
		$(".btn_sub").click(function() {
			if(idcheck && idcheck2 && pwcheck && pwcheck2)
			$(".signup_form").attr("action","./MemberJoinAction.me"); //action 생성
			else{
				alert("양식을 맞춰주세요");
			}
		});

		$("#email").blur(function() {
			$.ajax({
				type : "POST",
				url : "./idCheck.me",
				data : {
					m_email : $("#email").val()
				},

				success : function(data) {
					if (data == 0) {
						$(".error").text("사용가능한 이메일입니다.");
						$(".error").css("color", "blue");
						idcheck=true;

					} else if (data == 1) {
						$(".error").text("이미 등록된 이메일입니다.");
						$(".error").css("color", "red");
						idcheck=false;
					}
				},
				error : function(xhr, status, error) {
					alert("error: " + error);
				}

			});
		});

		$("#email_check").blur(function() { // 포커스를 잃었을 때
			if ($("#email").val() == $("#email_check").val()) {
				$(".error_msg").text("이메일 확인");
				$(".error_msg").css("color", "blue");
				idcheck2=true;

			} else {
				$(".error_msg").text("이메일 불일치");
				$(".error_msg").css("color", "red");
				idcheck2=false;
			}
		});

		$("#password").blur(function() {
			if (!/^[a-zA-Z0-9]{10,15}$/.test($("#password").val())) {
				$(".error_msg1").text("숫자와 영문자 조합으로 10~15자리를 사용해야 합니다.");
				$(".error_msg1").css("color", "red");
				pwcheck=false;
				return false;
			} else {
				$(".error_msg1").text("사용가능");
				$(".error_msg1").css("color", "blue");
				pwcheck=true;
			}

		});
		$("#password_check").blur(function() { // 포커스를 잃었을 때
			if ($("#password").val() == $("#password_check").val()) {
				$(".error_msg2").text("비밀번호가 일치합니다.");
				$(".error_msg2").css("color", "blue");
				pwcheck2=true;

			} else {
				$(".error_msg2").text("비밀번호가 일치하지 않습니다.");
				$(".error_msg2").css("color", "red");
				pwcheck2=false;
			}
		});
	</script>
      <jsp:include page="/include/footer.jsp"></jsp:include>
      
      
</body>
</html>