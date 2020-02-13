<%@page import="java.util.ArrayList"%>
<%@page import="com.iot.lastmile.FavoriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="UTF-8">
</head>
<body>
	<% ArrayList<FavoriteVO> favoriteList = (ArrayList<FavoriteVO>)request.getAttribute("favoriteList"); %>
	<table class="hide" id="LastmileFavoriteTable">
	  	<thead>
	    	<tr>
		      	<th scope="col">이름</th>
		     	<th scope="col">대여소 이름</th>
		      	<th scope="col">위도</th>
		      	<th scope="col">경도</th>
		      	<th scope="col">길찾기로 이동</th>
	    	</tr>
	  	</thead>
	  	<tbody id="LastmileFavoriteTable_body">
	  	<% for(int i=0;i<favoriteList.size();i++) { 
	  		String name = favoriteList.get(i).getLocation_name();
	  		String location_name = name.substring(name.lastIndexOf(".")+1);%>
	    	<tr>
	    		<form action="" method="">
		      		<td><%= favoriteList.get(i).getFavorite_name() %></td>
		      		<td><%= location_name %></td>
		      		<td><%= favoriteList.get(i).getLatitude() %></td>
		      		<td><%= favoriteList.get(i).getLongitude() %></td>
	      		</form>
	      		
	      		<td><input type="submit" class="w3-cell" id="setStartBtn" value="출발지"></input>
	      		<input type="submit" class="w3-cell" id="setEndBtn" value="도착지"></input></td>
	    	</tr>
	    <% } %>
		</tbody>
	</table>
</body>
</html>