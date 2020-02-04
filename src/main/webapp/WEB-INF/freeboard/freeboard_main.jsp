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
</head> 
<body> 
	<div class="boardouter">
		<div class="boardtop">
		
		</div>
		<div class="boardcontainer"> 
			<table class="boardtable table-hover table table-striped"> 
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
						<td>번호</td> 
						<td>제목</td> 
						<td>작성자</td> 
						<td>날짜</td> 
					</tr> 
					<tr> 
						<td>1</td> 
						<td><a href="#" onclick="" class="boardbutton">자유게시판</a></td> 
						<td>ccccccc</td> 
						<td>2017.07.04</td> 
					</tr> 
					
					
					<tr> 
						<td>2</td> 
						<td>bbbbbbb</td> 
						<td>ccccccc</td> 
						<td>2017.07.05</td> 
					</tr> 
					
					
					<tr> 
						<td>3</td> 
						<td>bbbbbbb</td> 
						<td>ccccccc</td> 
						<td>2017.07.06</td> 
					</tr> 
					
					
					<tr> 
						<td>4</td> 
						<td>bbbbbbb</td> 
						<td>ccccccc</td> 
						<td>2017.07.08</td> 
					</tr> 
					<tr> 
						<td>5</td> 
						<td>bbbbbbb</td> 
						<td>ccccccc</td> 
						<td>2017.07.08</td> 
					</tr> 
				</tbody>
				<tfoot >
					<tr>
						<th id="freefoot" colspan="4"></th>
					</tr>
				</tfoot>
			</table> 
				<!-- 글쓰기 버튼 -->
			<div class="boardallbtn">
				<a class="btn btn-default">글쓰기</a>
			</div>
		
			<div class="boardtext-center"> 
				<ul class="pagination">
				<!-- pagination클래스 -->
				<li><a href="#">이전</a></li> 
				<li><a href="#">1</a></li> 
				<li><a href="#">2</a></li> 
				<li><a href="#">3</a></li> 
				<li><a href="#">4</a></li> 
				<li><a href="#">5</a></li>
				<li><a href="#">다음</a></li> 
				</ul> 
			</div>
			<div class="boardmainsearch">
				<input type="text" placeholder="검색어 입력">
				<input type="button" name="search" onclick="" value="검색">
			</div>
		</div> 
	</div>
</body> 
</html>


