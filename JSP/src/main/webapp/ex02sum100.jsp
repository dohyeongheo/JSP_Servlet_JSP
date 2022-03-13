<!-- 1. 지시자 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> 1부터 100까지의 합 </h1>


	<%
	int sum = 0;
	for (int i = 0; i <= 100; i++) {
		sum += i;
	}
	%>

<p> 1부터 100까지의 합은 </p>

	<%=sum%>

</body>

</html>