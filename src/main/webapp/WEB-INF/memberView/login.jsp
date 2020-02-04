<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8' />
	<title>로그인 : LEGGO</title>
<!-- 	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" /> -->
</head>
<body id="login" class="main_frame">
	<div class="container-flex">
		<div id="page-wrap">
			<div id="page-content">
				<div class="text-center">
					<div class="auth-form-wrap" style="top: 45%">
						<br>
						<form action="/leggo/login.do" method="post" class="auth-form">
							<h1>로그인</h1>
							<div class="field">
								<input class="form-control" type="text" id="user_id" name="user_id" value="" placeholder='아이디' />
							</div>
							<div class="field">
								<input class="form-control" type="password" id="pass" name="pass" placeholder="비밀번호" />
							</div>
							<input type="submit" class="submit blue-btn full-width"	value="로그인">
							<div class="text-center mt15">
								<a href="/leggo/resetPwd.do" class="recover"> 비밀번호 찾기 </a>
							</div>
							<div class="text-center mt15">
								계정이 없으신가요?
								<a class="recover" href="/leggo/signUp.do">회원가입</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
