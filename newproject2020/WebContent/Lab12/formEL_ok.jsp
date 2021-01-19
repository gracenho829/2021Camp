<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEL_ok</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
%>
<h4>입력 된 정보</h4>
 ${param.fname}  <br>
 ${param.lname} <br>
 ${param.tel }<br>
 ${param.email }
</body>
</html>