<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		String query = "SELECT salelist.saleno, " +
				"salelist.scode, salelist.saledate, " +
				"pizza.pname, salelist.amount " +
				"FROM tbl_pizza_01 pizza, " +
				"tbl_salelist_01 salelist " +
				"WHERE pizza.pcode = salelist.pcode ";
		ResultSet rs = stmt.executeQuery(query);
		%>
			<table border="1">
		<%
		while (rs.next()) {
			%>
				<tr>
					<td><%= rs.getInt(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getInt(5) %></td>
				</tr>
			<%
		}
		%>
			</table>
		<%
		stmt.close();
		conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>