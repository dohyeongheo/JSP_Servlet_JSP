<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String homepage = request.getParameter("email");

// response.sendRedirect(homepage);

if(homepage.equals("네이버")) {
	response.sendRedirect("https://www.naver.com");
} else if (homepage.equals("다음)")) {
	response.sendRedirect("https://www.naver.com");	
} else {
	response.sendRedirect("https://www.google.com");	
}

%>



</body>
</html>