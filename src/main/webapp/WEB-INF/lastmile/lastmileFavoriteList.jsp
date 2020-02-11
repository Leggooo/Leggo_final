<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="UTF-8">
	<script type="text/javascript">
		$(document).ready(function() {
			user_id = "<%=session.getAttribute("user_id") %>";
			$.ajax({
				url: "/leggo/lastmile/getFavoriteList.do",
				type: "post",
				data: { 
					"user_id" : user_id
				},
				success:function(favoriteList) {
					rows = "";
					for(i=0;i<favoriteList.length;i++) {
						rows = rows + 
								"<tr><td><a href='/leggo/index.do'>" + favoriteList[i].favorite_name + "</a></td>"
								+ "<td>" + favoriteList[i].location_name + "</td>"
								//+ "<td>" + favoriteList[i].rackTotCnt + "</td>"
								//+ "<td>" + favoriteList[i].parkingBikeTotCnt + "</td>"
								//+ "<td>" + favoriteList[i].shared + "</td>"
								+ "<td>" + favoriteList[i].latitude + "</td>"
								+ "<td>" + favoriteList[i].longitude + "</td></tr>"
					}
					
					$('#LastmileFavoriteTable_body').empty();
					$('#LastmileFavoriteTable_body').append(rows);
				}
			});
		});
	</script>
</head>
<body>
<!-- "table table-dark table-sm d-none"  -->
	<table class="hide" id="LastmileFavoriteTable" style="font-size:15px;">
	  	<thead>
	    	<tr>
		      	<th scope="col">이름</th>
		     	<th scope="col">대여소 이름</th>
		      	<!-- <th scope="col">거치대 개수</th>
		      	<th scope="col">주차 총 건수</th>
		     	<th scope="col">거치율</th> -->
		      	<th scope="col">위도</th>
		      	<th scope="col">경도</th>
	    	</tr>
	  	</thead>
	  	<tbody id="LastmileFavoriteTable_body">
	    	<tr>
	      		<td>Mark</td>
	      		<td>Mark</td>
	      		<td>Mark</td>
	      		<td>Otto</td>
	      		<td>@mdo</td>
	    	</tr>
		    <tr>
		      	<td>Jacob</td>
		      	<td>Jacob</td>
		      	<td>Jacob</td>
		      	<td>Thornton</td>
		      	<td>@fat</td>
		    </tr>
		    <tr>
		      	<td>Larry</td>
		      	<td>Larry</td>
		      	<td>Larry</td>
		      	<td>the Bird</td>
		      	<td>@twitter</td>
		    </tr>
		</tbody>
	</table>
	

</body>
</html>