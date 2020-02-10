<%@page import="com.iot.member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
#accnthead {
	font-size: 20px;
	font-weight: bold;
	background-color: #2f5597;
	color: white;
	text-align: center;
	width: 10%;
}

table {
	border: 3px;
	width: 100%;
}

.ans {
	width: 40%;
}

.q {
	width: 10%;
}
</style>
</head>
<body>
	<%
		memberVO user = (memberVO) session.getAttribute("user");
	%>
	<
	<div class="container">
		<h2>회원정보</h2>
		<form name="sign_up" action="/leggo/modifyMyInfo.do" method="post"
			class="auth-form">
			<table border="2" class="table table-bordered">
				<tr>
					<td id="accnthead" rowspan="7"><br /> <br /> <br /> <br />내
						정보</td>
					<td class="q">아이디:</td>
					<td class="ans"><input type="text" id="user_id" name="user_id"
						disabled="disabled" value="<%=user.getUser_id()%>"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">비밀번호:</td>
					<td class="ans"><input type="password" id="pass" name="pass"
						disabled="disabled" value="<%=user.getPass()%>"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">질문:</td>
					<td class="ans"><input type="text" id="pass_hint"
						name="pass_hint" required="required"
						value="<%=user.getPass_hint()%>" class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">답변:</td>
					<td class="ans"><input type="text" id="pass_ans"
						name="pass_ans" required="required"
						value="<%=user.getPass_ans()%>" class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">이름:</td>
					<td class="ans"><input type="text" id="user_name"
						name="user_name" disabled="disabled"
						value="<%=user.getUser_name()%>" class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">생년월일:</td>
					<td class="ans"><input type="text" id="birth" name="birth"
						disabled="disabled" value="<%=user.getBirth()%>"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">성별:</td>
					<td class="ans">
						<%
							if (user.getGender().equals("M")) {
						%>
						<option value="M" selected="selected">남자</option> <%
 	} else {
 %>
						<option value="F" selected="selected">여자</option> <%
 	}
 %>
					</td>
				</tr>
				<tr>
					<td id="accnthead" rowspan="4"><br /> <br />내 연락처</td>
					<td class="q">집 전화번호:</td>
					<td class="ans"><input type="text" id="tel" name="tel"
						value="<%=user.getTel()%>" class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">휴대폰 번호:</td>
					<td class="ans"><input type="tel" id="mobile" name="mobile"
						required="required" value="<%=user.getMobile()%>"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">이메일</td>
					<td class="ans"><input type="text" id="email" name="email"
						required="required" value="<%=user.getEmail()%>"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">이메일 수신 <br />여부 문자 수신 여부
					</td>
					<td class="ans">
						<%
							if (user.getRecv_email().equals("Y")) {
						%> <input type="radio"
						name="recv_email" value="Y" checked="checked" /> 수신 <input
						type="radio" name="recv_email" value="N" /> 비수신 <%
 	} else {
 %> <input
						type="radio" name="recv_email" value="Y" /> 수신 <input
						type="radio" name="recv_email" value="N" checked="checked" /> 비수신
						<%
 	}
 %><br /> <%
 	if (user.getRecv_text().equals("Y")) {
 %> <input
						type="radio" name="recv_text" value="Y" checked="checked" /> 수신 <input
						type="radio" name="recv_text" value="N" /> 비수신 <%
 	} else {
 %> <input
						type="radio" name="recv_text" value="Y" /> 수신 <input type="radio"
						name="recv_text" value="N" checked="checked" /> 비수신 <%
 	}
 %>
					</td>
				</tr>
				<tr>
					<td id="accnthead" rowspan="3"><br />주소</td>
					<td class="q">우편번호 찾기:</td>
					<td class="ans">
						<button type="button" class="blue-btn half-width mb15"
							onclick="execDaumPostcode()">우편번호 찾기</button></td>
				</tr>
				<tr>
					<td class="q">주소:</td>
					<td class="ans"><input type="text" id="addr" name="addr"
						value="<%=user.getAddr()%>" class="form-control" /></td>
				</tr>
				<tr>
					<td class="q">우편번호:</td>
					<td class="ans"><input type="text" id="postcode"
						name="postcode" value="<%=user.getPostcode()%>"
						class="form-control" /></td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
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
