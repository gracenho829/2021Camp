<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습</title>
<style>
	h1{
		color: light-green;
	}
	h2{
		color: blue;
	}
	h3{
		color: red;
	}
</style>
</head>
<body>
<h1>Examples for 1/19</h1>

<h2>JSP page directive</h2>
<h3>import</h3>
<%@ page import="java.util.Date" %>  
Today is: <%= new Date() %> 
<h3>info</h3>
<%@ page info="composed by Grace Nho" %>  
<% out.print(getServletInfo()); %>
<h2>JSP inlcude directive</h2>
<h3>include header.html</h3>
<%@ include file="header.html" %>  
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>
<h2>jsp Action Tags</h2>  
 <h3>jsp forward</h3>
 <p>
jsp:forward page="form_ok.jsp "를주석 처리한거 없애면 form_ok.jsp 로 바로 이동함 </p>
<h3>jsp:include</h3>
<p>
jsp:forward page="form_ok.jsp" 한 다음 
jsp:param name="fname" value="Grace 하면 " form_ok.jsp 파일에 fname 을 Grace 로 설정함  </p>
<h3>jsp:include</h3> 
<p>Inlcuded form.html</p>

<jsp:include page="form.html" />  

</body>
</html>