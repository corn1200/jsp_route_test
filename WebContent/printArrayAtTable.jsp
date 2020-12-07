<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" >
		<%-- <%
			int[] array = {1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};
			int count = 0;
			for(int arrayData : array) {
				%>
					<td><%= arrayData %></td>
				<%
				count++;
				if(count >= 3) {
					%>
						<tr>
						</tr>
					<%
					count = 0;
				}
				
			}
		%> --%>
		<tr>
			<%
				int[] array = {1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};
				int count = 0;
				int lengthCount = 0;
				for(int arrayData : array) {
					lengthCount++;
					%><td><%= arrayData %></td><%
					count++;
					if(count >= 3 && lengthCount != array.length) {
						%>
							</tr>
							<tr>
						<%
						count = 0;
					}
				}
			%>
		</tr>
	</table>
</body>
</html>