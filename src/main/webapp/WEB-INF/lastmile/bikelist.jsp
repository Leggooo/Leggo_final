<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="UTF-8">
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajax({
				url: "/leggo/getBikeAPI.do",
				type: "get",
				data: { },
				success:function(bikeList) {
					rows = "";
					for(i=0;i<bikeList.length;i++) {
						rows = rows + 
								"<tr><td>" + bikeList[i].stationId + "</td>"
								+ "<td>" + bikeList[i].stationName + "</td>"
								+ "<td>" + bikeList[i].rackTotCnt + "</td>"
								+ "<td>" + bikeList[i].parkingBikeTotCnt + "</td>"
								+ "<td>" + bikeList[i].shared + "</td>"
								+ "<td>" + bikeList[i].stationLatitude + "</td>"
								+ "<td>" + bikeList[i].stationLongitude + "</td></tr>"
					}
					
					$('#bikeListTable_body').empty();
					$('#bikeListTable_body').append(rows);
				}
			});
		});
	</script>
</head>
<body>
	<table class="table table-dark table-sm" id="bikeListTable">
	  	<thead>
	    	<tr>
		      	<th scope="col">대여소 ID</th>
		     	<th scope="col">대여소 이름</th>
		      	<th scope="col">거치대 개수</th>
		      	<th scope="col">주차 총 건수</th>
		     	<th scope="col">거치율</th>
		      	<th scope="col">위도</th>
		      	<th scope="col">경도</th>
	    	</tr>
	  	</thead>
	  	<tbody id="bikeListTable_body">
	    	<tr>
	      		<td>Mark</td>
	      		<td>Mark</td>
	      		<td>Otto</td>
	      		<td>@mdo</td>
	      		<td>Mark</td>
	      		<td>Otto</td>
	      		<td>@mdo</td>
	    	</tr>
		    <tr>
		      	<td>Jacob</td>
		      	<td>Jacob</td>
		      	<td>Thornton</td>
		      	<td>@fat</td>
		      	<td>Jacob</td>
		      	<td>Thornton</td>
		      	<td>@fat</td>
		    </tr>
		    <tr>
		      	<td>Larry</td>
		      	<td>Larry</td>
		      	<td>the Bird</td>
		      	<td>@twitter</td>
		      	<td>Larry</td>
		      	<td>the Bird</td>
		      	<td>@twitter</td>
		    </tr>
		</tbody>
	</table>
	

</body>
</html>