<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<!-- 스크립틀릿과 표현식을 사용해서 for문 반복하여 만들기 -->
			<!-- 스크립틀릿으로 쓰는 자바문법 나눠서 쓸 수 있음 -->

			<%
			for (int i = 1; i <= 10; i++) {
			%>
			<td><%=i%></td>
			<%
			}
			%>
		</tr>
	</table>

</body>
</html>