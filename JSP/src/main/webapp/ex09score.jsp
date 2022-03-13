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
	
	// 포스트 방식 인코딩
	request.setCharacterEncoding("euc-kr");
	
	// 파라미터 수집
	String name = request.getParameter("name");
	String java = request.getParameter("java");
	String web = request.getParameter("web");
	String iot = request.getParameter("iot");
	String and = request.getParameter("and");

	// 스트링 타입 정수로 변환
javaScore = Integer.parseInt(java);
webScore = Integer.parseInt(web);
iotScore = Integer.parseInt(iot);
andScore = Integer.parseInt(and);

	// 점수 합계
	int sum = javaScore + webScore + iotScore + andScore;
	
	// 평균 점수
	double avg = sum / 4.0;
	%>

	<fieldset>
		<legend>성적확인프로그램</legend>
		<table width="500">
			<tr>
				<td>이름</td>
				<td>
					<%
					out.print(name);
					%>
				</td>
			</tr>
			<tr>
				<td>JAVA점수</td>
				<td>
					<%
					out.print(javaScore);
					%>
				</td>
			</tr>
			<tr>
				<td>WEB점수</td>
				<td>
					<%
					out.print(webScore);
					%>
				</td>
			</tr>
			<tr>
				<td>IOT점수</td>
				<td>
					<%
					out.print(iotScore);
					%>
				</td>
			</tr>
			<tr>
				<td>ANDROID점수</td>
				<td>
					<%
					out.print(andScore);
					%>
				</td>
			</tr>
			<tr>
				<td>평균</td>
				<td>
					<%
					out.print(avg);
					%>
				</td>
			</tr>
			<tr>
				<td>학점</td>
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