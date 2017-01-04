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
		<link href="<c:url value='resources/css/categoryedit.css'/>" rel="stylesheet"/>
		
		
<title>Edit Category</title>
</head>
<body>
<%@include file="header.jsp" %>
	<center>

		<div style="color: teal; font-size: 30px">
			Edit Category</div>



		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./updateCategory" commandName="cate">
			<table width="400px" height="150px">
			<tr>
					<td><label>Category ID</label></td>
					<td><form:input path="cid" value="${cateList.cid}" readonly="true" /></td>
				</tr>
				<tr>
					<td><label>Category Name</label></td>
					<td><form:input path="cname" value="${cateList.cname}" /></td>
				</tr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="Update" />
					</td>
				</tr>
			</table>
		</form:form>


		
	</center>
	<script src="<c:url value='resources/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'/>"/></script>

    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
	
</body>
</html>