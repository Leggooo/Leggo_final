<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="UTF-8">
	<script type="text/javascript">
		$(document).ready(function() {	
			alert("?????????????//");
			<%-- $("#bikeTableBody>tr").removeAttr("scope");
			$(this).attr("scope", "row"); --%>
			$.ajax({
					url: "/lastmile/getBikeAPI.do",
					type: "get",
					data: {
						"bikeList": bikeList,
						success:function(data) {
							htmlCode = "";
							for(i=0;i<data.length;i++) {
								htmlCode = htmlCode + 
											+ "<tr>"
											+ "<td>" + data[i].stationId + "</td>"
											+ "<td>" + data[i].stationName + "</td>"
											+ "<td>" + data[i].parkingBikeTotCnt + "</td>"
											+ "<td>" + data[i].rackTotCnt + "</td>"
											+ "<td>" + data[i].shared + "</td>"
											+ "<td>" + data[i].stationLatitude + "</td>"
											+ "<td>" + data[i].stationLongitude + "</td>"
											+ "</tr>"
							}

							$("#bikeTableBody").empty();
							$("#bikeTableBody").append(htmlCode);
						}
					}
			});
		});
	</script>
</head>
<body>
	<table class="table table-dark" id="bikeListTable">
		<thead>
			<tr>
				<th scope="col">대여소 ID</th>
				<th scope="col">대여소 이름</th>
				<th scope="col">주차 총 건수</th>
				<th scope="col">거치대 개수</th>
				<th scope="col">거치율</th>
				<th scope="col">위도</th>
				<th scope="col">경도</th>
			</tr>
	  	</thead>
	  	<tbody id="bikeTableBody">
		    <tr>
		     	<th scope="row">1</th>
		      	<td>Mark</td>
		      	<td>Otto</td>
		      	<td>@mdo</td>
		      	<td>@mdo</td>
		      	<td>@mdo</td>
		      	<td>@mdo</td>
		    </tr>
		    <tr>
		      	<th scope="row">2</th>
		      	<td>Jacob</td>
		      	<td>Thornton</td>
		      	<td>@fat</td>
		      	<td>@fat</td>
		      	<td>@fat</td>
		      	<td>@fat</td>
		    </tr>
		    <tr>
		      	<th scope="row">3</th>
		      	<td>Larry</td>
		      	<td>the Bird</td>
		      	<td>@twitter</td>
		      	<td>@twitter</td>
		      	<td>@twitter</td>
		      	<td>@twitter</td>
		    </tr>
	  	</tbody>
	</table>
</body>
</html>