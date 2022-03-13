<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
Random ran = new Random();
%>

<%
// 파라미터 수집하기
// 주제, 반복했던 input 태그들 가져오기

String title = request.getParameter("title");
String item[] = request.getParameterValues("item");
int result = new Random().nextInt(item.length);
String result1 = item[result];
%>

<fieldset>
<legend> 랜덤 당첨 결과

</legend>
<%=title %>
<%=result1 %>



</fieldset>
</body>
</html>