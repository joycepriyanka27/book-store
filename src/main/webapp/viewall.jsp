<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<table border="2px solid black" >
	<tr style="background-color: purple">
	<th>Book_Id</th>
	<th>Boook_Name</th>
	<th>AUthor_Name</th>
	<th>No_Of_Pages</th>
	<th>Price</th>
	<th>Book_Col</th>
	<th>DELETE</th>
	<th>UPDATE</th>
	</tr>
	
	<% ArrayList<Book> books = (ArrayList)request.getAttribute("data");
	for(Book b:books){
	%>
	
	<tr>
	<td><%= b.getBook_id() %></td>
	<td><%=b.getBook_name() %></td>
	<td><%= b.getAuthor_name()%></td>
	<td><%= b.getNo_of_pages()%></td>
	<td><%=b.getPrice()%></td>
	<td><%=b.getBookcol()%></td>
	<td><a href="delete?id=<%=b.getBook_id()%> "> delete </a> </td>	
	<td><a href="update1?id=<%=b.getBook_id()%>">edit</a></td>
	</tr>
	
	<%} %>
	
	<a href="welcome.html">HOME</a> 
	
	</table>
</body>
</html>