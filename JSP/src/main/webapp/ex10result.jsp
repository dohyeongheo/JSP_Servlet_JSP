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
// �Ķ���� �����ϱ�
// ����, �ݺ��ߴ� input �±׵� ��������

String title = request.getParameter("title");
String item[] = request.getParameterValues("item");
int result = new Random().nextInt(item.length);
String result1 = item[result];
%>

<fieldset>
<legend> ���� ��÷ ���

</legend>
<%=title %>
<%=result1 %>



</fieldset>
</body>
</html>