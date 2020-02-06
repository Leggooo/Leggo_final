<%@page import="com.iot.member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8' />
	<title>회원정보 : LEGGO</title>
<!--   	<link rel="stylesheet" href="/leggo/css/member/login.css" />
	<link rel="stylesheet" href="/leggo/css/member/login1.css" />  -->
</head>
<body>
	<% memberVO user = (memberVO)session.getAttribute("user"); %>
	<div class="container-flex">
		<div class="row">
			<div class="align-center">
				<div class="text-center">
					<div class="auth-form-wrap" style="top: 50%">
						<form name="sign_up" action="/leggo/modifyMyInfo.do" method="post" class="auth-form">
							<h1>회원정보수정</h1>
							<div class="row">
        					<div class="col-xs-6">
							<div class="field">
								<label for="user_id" title="아이디"> 아이디</label>
								<input type="text" id="user_id"
									name="user_id" disabled="disabled"
									value="<%= user.getUser_id() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="password" id="pass"
									name="pass" disabled="disabled"
									value="<%= user.getPass() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="password" id="pass_second"
									disabled="disabled"
									value="<%= user.getPass() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="pass_hint"
									name="pass_hint" required="required"
									value="<%= user.getPass_hint() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="pass_ans"
									name="pass_ans" required="required"
									value="<%= user.getPass_ans() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="user_name"
									name="user_name" disabled="disabled"
									value="<%= user.getUser_name() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="birth"
									name="birth" disabled="disabled"
									value="<%= user.getBirth() %>" class="form-control" />
							</div>
							</div>
                       		<div class="col-xs-6">
							<div class="field">
	                            <select id="gender" name="gender" class="form-control" aria-label="성별" disabled="disabled">
	                            	<% if(user.getGender().equals("M")){ %>
                                        <option value="M" selected="selected">남자</option>
	                                <%}else{ %>
                                        <option value="F" selected="selected">여자</option>
                                    <%} %>
	                            </select>
                       		</div>
							<div class="field">
								<input type="text" id="tel"
									name="tel" value="<%= user.getTel() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="tel" id="mobile"
									name="mobile" required="required"
									value="<%= user.getMobile() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="postcode"
									name="postcode" value="<%= user.getPostcode() %>" class="form-control" />
								<button type="button" class="blue-btn half-width mb15" onclick="execDaumPostcode()">우편번호 찾기</button>
							</div>
							<div class="field">
								<input type="text" id="addr"
									name="addr" value="<%= user.getAddr() %>" class="form-control" />
							</div>
							<div class="field">
								<input type="text" id="email"
									name="email" required="required"
									value="<%= user.getEmail() %>" class="form-control" />
							</div>
							<div class="field">
								<label for="recv_email">이메일 수신 여부</label>
								<% if(user.getRecv_email().equals("Y")){ %>
								<input type="radio" name="recv_email" value="Y" checked="checked"/> 수신
								<input type="radio" name="recv_email" value="N" /> 비수신
								<%}else{ %>
								<input type="radio" name="recv_email" value="Y" /> 수신
								<input type="radio" name="recv_email" value="N" checked="checked"/> 비수신
								<%} %>
							</div>
							<div class="field">
								<label for="recv_text">문자 수신 여부</label>
								<% if(user.getRecv_text().equals("Y")){ %>
								<input type="radio" name="recv_text" value="Y" checked="checked"/> 수신
								<input type="radio" name="recv_text" value="N" /> 비수신
								<%}else{ %>
								<input type="radio" name="recv_text" value="Y" /> 수신
								<input type="radio" name="recv_text" value="N" checked="checked"/> 비수신
								<%} %>
							</div>
							</div>
								<input type="submit" id="submitBtn" value="수정하기">
							</div>
							<a href="/leggo/withdrawal.do" style="font-size: 0.5em;">탈퇴하기</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("addr").value = roadAddr;
            }
        }).open();
    }
</script>
</body>
</html>
