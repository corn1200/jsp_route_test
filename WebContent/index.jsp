<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String requestParameter = request.getParameter("section") != null ? request.getParameter("section") : "";
%>
<body>
	<%@ include file="static/nav.jsp" %>
	<%
		switch (requestParameter) {
			case "A" :
				%><%@ include file="page/A.jsp" %><%
				break;
			case "B" :
				%><%@ include file="page/B.jsp" %><%
				break;
			case "C" :
				%><%@ include file="page/C.jsp" %><%
				break;
			default :
				out.println("메인 페이지입니다");
		}
	%>
</body>
</html>