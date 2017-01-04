<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>shipping details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>

</head>
<style>
  body {
    background-color: grey;
	background-repeat: no-repeat;
    background-attachment: fixed;
}
.form-signin
{
    max-width: 330px;
    padding: 15px;
	color:white;
    margin: 0 auto;
}
h1 {
	margin-top: 20px;
	font-size: 100px;
    color: white;
    line-height: 50px;
}
input.form-control::-webkit-input-placeholder 
{ 
font-size: 9pt; 
color: #d9d9d9; 
}
textarea[type="text"]::-webkit-input-placeholder
{
	font-size: 9pt;
    color:#d9d9d9;
}
.form-signin input[type="text"]
{
	color: white;
	background: transparent;
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
	color: white;
	background: transparent;
    margin-bottom: 5px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
	position : static;
    margin-top: 100px;
    padding: 30px 0px 20px 0px;
	border-radius: 15px;
	background-color: rgba(255, 255, 255,0.0);
   
    -moz-box-shadow: 97px 87px 45px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 10px 10px 10px rgba(99, 56, 10, 0.3);
}
a{
color  :  #d9d9d9;
}
.login-title
{
    color: black-shadow;
    font-size: 22px;
    font-weight: 400;
    display: block;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
.btn {
	  margin-top: 20px;
      padding: 2px 50px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 15;
      transition: .2s;
  }
  </style>
<body>
	<!--header-top-starts-->
	<%@include file="index.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
				<h1 class="text-center login-title"><i>SHIPPING DETAILS</i></h1>
                <form:form  method="POST" modelAttribute="shippingdetails">
				<div class="form-group">
				
				<form:label path="sname" for="inputName" class="center control-label">Name</form:label>
				<div>
                <form:input path="sname" pattern="[a-zA-Z\s]{3,30}" type="text" class="form-control" placeholder="Post the Questions"/>
                <c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('sname')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>
				</div>
				<div class="form-group">
				
				<form:label path="Addr1" for="inputName" class="center control-label">Address Line 1</form:label>
				<div>
               <form:textarea path="Addr1" type="text" style="background: transparent;" class="form-control" rows="4" placeholder="Enter the Address" /></textarea>
                <c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('Addr1')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>
				</div>
				<div class="form-group">
				<form:label path="City" for="Address" class="left control-label">City</form:label>
				<div>
                <form:select path="City" type="text" name="City" style="background: transparent;" class="form-control">
                <form:option value="Chennai">Chennai</form:option>
				</form:select>
                <c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('City')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>
				</div>	
				
				<div class="form-group">
				
				<form:label path="pincode" for="inputName" class="center control-label">Pincode</form:label>
				<div>
                <form:input path="pincode" type="text" class="form-control" placeholder="Pincode"/>
                <c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('pincode')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>
				</div>
				
				<div class="form-group">
				
				<form:label path="PhoneNumber" for="inputName" class="center control-label">Contact No.</form:label>
				<div>
                <form:input path="PhoneNumber" type="text" class="form-control" placeholder="Contact Number"/>
                <c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('PhoneNumber')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>
				</div>			
                <button class="btn" name="_eventId_submit" type="submit" value="Submit">
                    Submit</button>
                </form:form>
            </div>
            
        </div>
    </div>
</div>
	<!--footer-end-->
</body>
</html>