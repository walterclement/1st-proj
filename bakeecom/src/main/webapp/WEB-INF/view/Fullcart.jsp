<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<style>
.body{
margin-bottom:650px;

}
</style>
<body style="background-color:orange">
<%@include file="index.jsp" %>
<div class="container">
<div class="row">
<div class="colmd-12">
<H1>SHIPPING DETAILS</H1>
<br>
<form:form modelAttribute="shippingdetails" class="form" role="form">

<table>
<tr>
<td>NAME:</td>
<td>${shippingdetails.sname}</td>
</tr>
<tr>
<td>ADRESS:</td>
</tr>
<tr>
<td>${shippingdetails.addr1}</td>
</tr>
<tr>
<td>${shippingdetails.city}</td>
</tr>
<tr>
<td>${shippingdetails.phoneNumber}</td>
</tr>



</table>


<input name="_eventId_edit" type="submit" value="Edit" />
<input name="_eventId_submit" type="submit" value="Confirm Details" />
</form:form>
</div>
</div>
</div>
</body>