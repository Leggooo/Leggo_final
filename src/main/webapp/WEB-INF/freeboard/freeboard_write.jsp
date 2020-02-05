<!DOCTYPE html>

<html lang="en">
<head>
	<title>LEGGO</title>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
	<script src="http://code.jquery.com/jquery-latest.js"></script> 
	<!-- jQuery받아오기 위해서 --> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<!-- 합쳐지고 최소화된 최신 CSS -->  
	<meta name="viewport">
	<style type="text/css">
		
		
	</style>
</head> 
<body> 
	<div class="outer">
		<div class="top">
		
		</div>
		<div class="container"> 
			<table class="table"> 
			<!-- table-hover클래스는 마우스를 올리면 회색이 생기게
			table-striped클래스는 홀수번째 테이블에 회색이 생겨있게-->
			<!-- table table-bordered 이 클래스는 테이블의 선 그어주기--> 
				<thead>
					<tr>
						<th id="freehead" colspan="4">자유게시판</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="title">글제목</th>
						<td><textarea class="writecontent" rows="1" placeholder="제목을 입력하세요"></textarea></td>
					</tr>
					<tr>
						<th class="title">글내용</th>
						<td>
							<textarea class="writecontent" rows="10" placeholder="내용을 입력하세요"></textarea>
						</td>
					</tr>
					<tr>
						<th class="title">첨부파일</th>
						<td><input type="file">※용량 : 5MB 미만</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td id="freefoot" colspan="2"></td>
					</tr>
				</tfoot>
			</table> 
				<!-- 버튼 -->
			<div class="allbtn">
				<a class="btn btn-default" href="#">취소</a>
				<a class="btn btn-default" href="#">완료</a>
			</div>
			
		</div> 
	</div>
</body> 
</html>


