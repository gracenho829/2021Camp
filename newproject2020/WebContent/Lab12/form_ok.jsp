<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
%>
<h4>입력 된 정보</h4>
First Name is <%= fname %> <br>
Last Name is <%=lname%> <br>
Phone Number is <%= tel %> <br>
Email is <%= email %>
</body>
</html>