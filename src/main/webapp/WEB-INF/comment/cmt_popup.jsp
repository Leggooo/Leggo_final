<!DOCTYPE html>

<html lang="en">
<head>
	<title>LEGGO</title>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../css/popup.css">
</head> 

<body onload="window.resizeTo(500,600)"> 
	<div class="popup">
		<table>
			<tr>
				<th>댓글쓰기</th>
			</tr>
			<tr>
				<td>
					<textarea class="writecontent" rows="20" cols="37" placeholder="내용을 입력하세요"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="닫기" onclick="self.close()">
					<input type="button" value="완료" onclick="">
				</td>
			</tr>
		</table>
	</div>
</body> 
</html>


