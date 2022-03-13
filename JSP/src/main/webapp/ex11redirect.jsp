<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 페이지 이동하기 
	1. a태그
	2. sendRedirect() -> jsp에서 내장객체 response 사용
	3. forward()

 --> 

<!-- <a href="http://www.naver.com"> 네이버로 이동 </a> -->
<!-- 사용자는 두번 클릭하여 네이버로 이동이 됨 -->
<%
System.out.print("페이지 이동 전 코드");

// sendReditect : 페이지 강제 이동
response.sendRedirect("http://www.naver.com");

System.out.print("SendRedirect 이후 코드");
%>


</body>
</html>