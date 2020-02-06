<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="com.iot.member.memberVO"%>
<!DOCTYPE html>
<html>
   <head>
   <meta charset="UTF-8">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="/leggo/css/top2.css">
<title>top</title>
</head>
<body>
<% memberVO user = (memberVO)session.getAttribute("user"); %>
   <div class="container-fluid">
      <div class="row">
         <!--맨 왼쪽 메뉴입니다 -->
         <div class="col-1" id="leftMenu">
            <a href="/leggo/menu.do"><img src="/leggo/images/MainLogo.png"
               alt="Random Name" style="height: 103%; width: 103%;"></a>
         </div>
         <!--가운데 빈 공간입니다 -->
         <div class="col-8" id="blankMenu"></div>
         <!--맨 오른쪽 메뉴 3개입니다 -->
         <div class="col-3 rightMenu">
            <a href=""><img src="/leggo/images/news1.png" id="rImg1"></a>
            <a href=""><img src="/leggo/images/personInfo.png" id="rImg2"></a>
            <a href=""><img src="/leggo/images/chat.png" id="rImg3"></a>
         </div>
      </div>
      
   </div>
   <div id="topBelow">
      &nbsp;
   </div>
   

</body>
</html>