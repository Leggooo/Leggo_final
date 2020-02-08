<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8' />
	<style type="text/css">
	</style>
</head> 
<body> 
	<form action="/leggo/freeboardwrite.do" method="post">
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
						<td><textarea class="boardwritecontent" rows="1" name="title"></textarea></td>
					</tr>
					<tr>
						<th class="title">글내용</th>
						<td><textarea class="boardwritecontent" rows="10" name="content"></textarea></td>
					</tr>
					<tr>
						<th class="title">첨부파일</th>
						<td><input type="file" name="">※용량 : 5MB 미만</td>
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
				<button type="submit" id="brdsubtn">등록</button>
				<button type="reset" id="delbtn">취소</button>
			</div>
		</div> 
	</div>
	</form>
</body> 
</html>


