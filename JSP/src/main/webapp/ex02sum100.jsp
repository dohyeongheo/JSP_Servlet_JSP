<!-- 1. ������ -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> 1���� 100������ �� </h1>


	<%
	int sum = 0;
	for (int i = 0; i <= 100; i++) {
		sum += i;
	}
	%>

<p> 1���� 100������ ���� </p>

	<%=sum%>

</body>

</html>