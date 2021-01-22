<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.book.BookDAO"%> 
<%
    request.setCharacterEncoding("UTF-8");
%>
<%@ page import ="com.book.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<jsp:useBean id="u" class="com.book.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<% 
	String filename = "";
	int sizeLimit = 15 * 1024 * 1024;
	
	//	상대경로를 절대경로로 가져와야 
	String realPath = request.getServletContext().getRealPath("upload");
	System.out.println(realPath);
	
	//upload 폴더가 없는 경우 폴더를 만들얼]
	File dir = new File(realPath);
	if (!dir.exists()) dir.mkdirs();
			
	MultipartRequest multpartRequest = null;
	multpartRequest = new MultipartRequest(request, realPath, 
			sizeLimit, "utf-8",new DefaultFileRenamePolicy());


	String name = multpartRequest.getParameter("name");
	String author = multpartRequest.getParameter("author");
	String status = multpartRequest.getParameter("status");
	filename = multpartRequest.getFilesystemName("image");
	
	u.setAuthor(author);
	u.setName(name);
	u.setImage(filename);
	u.setStatus(status);
	int i=BookDAO.save(u);  
	if(i>0){  
	response.sendRedirect("index.jsp");  
	}else{  
	response.sendRedirect("addbook-error.jsp");  
	}  
%>
	
</body>
</html>

