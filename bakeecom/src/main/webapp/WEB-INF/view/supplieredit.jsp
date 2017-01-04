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
		<link href="<c:url value='resources/css/supplieredit.css'/>" rel="stylesheet"/>
		
		
<title>Edit Supplier</title>
</head>
<body>
<%@include file="header.jsp" %>
	<center>

		<div style="color: teal; font-size: 30px">
			Edit Supplier</div>



		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./updateSupplier" commandName="supp">
			<table width="400px" height="150px">
			<tr>
					<td><label>supplier id</label></td>
					<td><form:input path="sid" value="${supList.sid}" readonly="true" /></td>
				</tr>
				<tr>
					<td><label>supplier name</label></td>
					<td><form:input path="sname" value="${supList.sname}" /></td>
				</tr>
				<tr>
					<td><label>supplier place</label></td>
					<td><form:input path="place" value="${supList.place}"/></td>
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