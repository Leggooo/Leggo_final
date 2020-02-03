<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>가입완료 : LEGGO</title>
	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" />
	<meta charset="UTF-8">
</head>
<body>
	<div class="container-flex">
		<div id="page-wrap">
			<a href="#" class="logo-center"><img src="/leggo/images/LeggoLogo.png" alt=""></a>
			<div id="page-content">
				<div class="text-center">
					<div class="auth-form-wrap" style="top: 45%">
						<br>
						<form action="/member/join" method="post" class="auth-form">
							<h1>가입 완료!</h1>
							<div class="field">
								<input class="form-control" type="text" id="user_id" name="user_id" value="" placeholder='가입자 아이디' disabled="disabled"/>
							</div>
							<div class="field">
								<input class="form-control" type="text" id="sign_up_name" name="sign_up[name]" placeholder="가입자 이름"  disabled="disabled"/>
							</div>
							<div class="field">
								<input class="form-control" type="text" id="sign_up_email" name="sign_up[email]" placeholder="가입자 이메일" disabled="disabled"/>
							</div>
							<button href="#" class="submit blue-btn full-width" >로그인</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>