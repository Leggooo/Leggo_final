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
				url: "/leggo/lastmile/getRecentList.do",
				type: "post",
				data: { 
					"user_id" : user_id
				},
				success:function(favoriteList) {
					rows = "";
					for(i=0;i<favoriteList.length;i++) {
						rows = rows + 
								"<tr><td><a href='/leggo/index.do'>" + favoriteList[i].location_name + "</a></td>"
								+ "<td>" + favoriteList[i].latitude + "</td>"
								+ "<td>" + favoriteList[i].longitude + "</td></tr>"
					}
					
					$('#LastmileRecentTable_body').empty();
					$('#LastmileRecentTable_body').append(rows);
				}
			});
		});
	</script>
</head>
<body>
<!-- "table table-dark table-sm d-none"  -->
	<table class="hide" id="LastmileRecentTable" style="font-size:15px;">
	  	<thead>
	    	<tr>
		     	<th scope="col">대여소 이름</th>
		      	<th scope="col">위도</th>
		      	<th scope="col">경도</th>
	    	</tr>
	  	</thead>
	  	<tbody id="LastmileRecentTable_body">
	    	<tr>
	      		<td>Mark</td>
	      		<td>Otto</td>
	      		<td>@mdo</td>
	    	</tr>
		    <tr>
		      	<td>Jacob</td>
		      	<td>Thornton</td>
		      	<td>@fat</td>
		    </tr>
		    <tr>
		      	<td>Larry</td>
		      	<td>the Bird</td>
		      	<td>@twitter</td>
		    </tr>
		</tbody>
	</table>
	

</body>
</html>