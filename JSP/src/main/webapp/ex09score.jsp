<%@page
	import="org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<style>
tr {
	height: 40px;
	text-align: center;
}

table {
	margin: 0 auto;
}
</style>

<body>

<%!String name = "";
	String java = "";
	String web = "";
	String iot = "";
	String and = "";
	int javaScore = 0;
	int webScore = 0;
	int iotScore = 0;
	int andScore = 0;%>

	<%
	
	// ����Ʈ ��� ���ڵ�
	request.setCharacterEncoding("euc-kr");
	
	// �Ķ���� ����
	String name = request.getParameter("name");
	String java = request.getParameter("java");
	String web = request.getParameter("web");
	String iot = request.getParameter("iot");
	String and = request.getParameter("and");

	// ��Ʈ�� Ÿ�� ������ ��ȯ
javaScore = Integer.parseInt(java);
webScore = Integer.parseInt(web);
iotScore = Integer.parseInt(iot);
andScore = Integer.parseInt(and);

	// ���� �հ�
	int sum = javaScore + webScore + iotScore + andScore;
	
	// ��� ����
	double avg = sum / 4.0;
	%>

	<fieldset>
		<legend>����Ȯ�����α׷�</legend>
		<table width="500">
			<tr>
				<td>�̸�</td>
				<td>
					<%
					out.print(name);
					%>
				</td>
			</tr>
			<tr>
				<td>JAVA����</td>
				<td>
					<%
					out.print(javaScore);
					%>
				</td>
			</tr>
			<tr>
				<td>WEB����</td>
				<td>
					<%
					out.print(webScore);
					%>
				</td>
			</tr>
			<tr>
				<td>IOT����</td>
				<td>
					<%
					out.print(iotScore);
					%>
				</td>
			</tr>
			<tr>
				<td>ANDROID����</td>
				<td>
					<%
					out.print(andScore);
					%>
				</td>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<%
					out.print(avg);
					%>
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<%
					if (avg >= 95) {
						out.print("A+");
					} else if (avg >= 90) {
						out.print("A");
					} else if (avg >= 85) {
						out.print("B+");
					} else if (avg >= 80) {
						out.print("B");
					} else out.print("F");
					
					%>
				</td>
			</tr>
		</table>
	</fieldset>


</body>
</html>