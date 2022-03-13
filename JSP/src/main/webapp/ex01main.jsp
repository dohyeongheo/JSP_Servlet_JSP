<!-- 1. 지시자 < %@ , %>  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 2. 선언문 : 변수 선언 또는 메소드 정의 -->
	<%!
	int num = 0;
	public void show() {
	System.out.print("12345");}
	%>

	<!-- 3. 스크립틀릿 : 자바문법을 쓸 수 있는 공간  -->
	<%
	int num2 = 0;
	%>
<% show(); %>

	<!-- 4. 표현식 : 웹페이지에 결과값을 보여줄 수 있음
						변수, 메소드 값
						주의 ! (세미콜론을 사용하지 않음) -->
	
	<%=num++%>
	<%=num2++%>
	<h1>jsp 파일 메인</h1>

</body>
</html>