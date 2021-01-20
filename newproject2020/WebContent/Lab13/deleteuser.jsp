<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete user</title>
</head>
<body>
<%@page import="newproject2020.UserDAO"%>  
<jsp:useBean id="u" class="newproject2020.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDAO.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  
</body>
</html>