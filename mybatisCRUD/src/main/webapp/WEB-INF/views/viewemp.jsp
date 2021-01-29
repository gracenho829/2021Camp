    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <style>
   		@font-face {
		font-family: 'UhBeemysen';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_five@.2.0/UhBeemysen.woff') format('woff');
		font-weight: normal;
		font-style: normal;
		}

		@font-face {
		    font-family: 'GmarketSansLight';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}

	h1{
		font-family: 'UhBeemysen';
		color:#f06e88;
	}
	body{
		background-color: white;
		text-align:center;
	}
	table{
		text-align:center;
		margin: 10px auto;
		font-family: 'GmarketSansLight';
		border:none;
	}
	th{
		color:rgb(255, 178, 170);
	}
	th, tr, td{
	margin-top: 10px;
		border:none;
	}
	p{
	font-family: 'GmarketSansLight';
	}
	.addLocation {
	float:right;
	font-family: 'GmarketSansLight';
	text-decoration:none;
	margin-right:20px;
	margin-top: 20px;
	
	}
</style>
	<h1>은쇼리의 카페 탐방</h1>
	<table border="2" width="90%" cellpadding="4">
	<tr>
	<th>Name</th>
	<th>Blog</th>
	<th>Address</th>
	<th>Rating</th>
	<th>Edit</th>
	<th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.name}</td>
    <td style="font-size: 10px;"> <a href="${emp.blog}">${emp.blog}</a></td>
    <td style="font-size: 10px;">${emp.address}</td>
    <td>${emp.rating}</td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="empform" class = "addLocation">Add New Location</a>