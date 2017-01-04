<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    	<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/registrationnew.css'/>" rel="stylesheet"/>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<div class="form1">
  <form class="formin1">
    <input type="text" placeholder="Firstname">
      </form>
</div>
<div class="form2">
  <form class="formin2">
    <input type="text" placeholder="Lastname">
  </form>
  </div>
  <div class="form3">
    <form class="formin3">
      <input type="text" placeholder="email address">
    </form>
  </div>
  <div class="form4">
    <form class="formin4">
      <input type="text" placeholder="Password">
    </form>
  </div>
  <div class="form5">
    <form class="formin5">
      <input type="text" placeholder="Confirm Password">
    </form>
  </div>
  <div class="form6">
    <form class="formin6">
      <input type="text" placeholder="Address">
    </form>
  </div>
  <div class="form7">
    <form class="formin7">
      <input type="text" placeholder="State">
    </form>
  </div>
  <div class="form8">
    <form class="formin8">
      <input type="text" placeholder="PinCode">
    </form>
  </div>
  <div class="form9">
<form class="formiin9">
    <button type="submit" id="Register_button">
      Register</button>
    </form>
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>



</body>
</html>