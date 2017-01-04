<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
		<link href="<c:url value='resources/css/bottom.css'/>" rel="stylesheet"/>
		<link href="<c:url value='resources/css/edit.css'/>" rel="stylesheet"/>
		
<title>Single Product</title>
</head>
<body>
<%@include file="header.jsp" %>
	<center>

		<div style="color: teal; font-size: 30px">
			Edit Product</div>



		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./addCart" commandName="prod">
			<table width="400px" height="150px">
			
			<tr>
			<td></td>
				<td> <img src="<c:url value="${prdList.img}"/>" alt="image" height="100px" width="200px"/></td>
				</tr>
			
			
			<tr>
					<td><label>product id</label></td>
					<td><form:input path="pid" value="${prdList.pid}" readonly="true" /></td>
				</tr>
				<tr>
					<td><label>product name</label></td>
					<td><form:input path="name" value="${prdList.name}" /></td>
				</tr>
				<tr>
					<td><label>product description</label></td>
					<td><form:input path="description" value="${prdList.description}"  /></td>
				</tr>
				<tr>
					<td><label>product price</label></td>
					<td><form:input path="price" value="${prdList.price}"  /></td>
				</tr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="Add to Cart" />
					</td>
				</tr>
			</table>
		</form:form>


		<a href="cart" style="color: #FDFEFE";>Click Here to see Cart List</a>
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"/></script>

    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
	
</body>
</html>