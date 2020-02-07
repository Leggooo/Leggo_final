<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8' />
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<title>로그인 : LEGGO</title>
<!-- 	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" /> -->
</head>
<body id="login" class="main_frame">
<%  %>
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
							<a id="kakao-login-btn"></a>
							<a href="http://developers.kakao.com/logout">로그아웃</a>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="text" id="kakaoInfo" value="">
</body>
<script type='text/javascript'>
    Kakao.init('058c8dd884377b38875fd39e9587e919');
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      size: 'small',
      success: function(authObj) {
    	  Kakao.API.request({ 
              url: '/v1/user/me',
              success: function(res) {
                    var info = [ 
                        JSON.stringify(res.id), 
                        JSON.stringify(res.kaccount_email), 
                        JSON.stringify(res.properties.nickname), 
                        JSON.stringify(res.properties.profile_image), 
                        JSON.stringify(res.properties.thumbnail_image) 
                    ]; 
                    document.getElementById("kakaoInfo").setAttribute("value", info.toString())
                    console.log(info);
              }, 
              fail: function(error) { 
                   console.log(JSON.stringify(error)); 
            }
     	});
    	  
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
</script>
</html>