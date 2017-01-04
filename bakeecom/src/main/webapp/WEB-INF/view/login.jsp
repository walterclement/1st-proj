<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
 <style>
body{

/* background-repeat:no-reprat; */
/* background-size:cover; */
}
</style>
 
<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home1"><i class="glyphicon glyphicon-home"></i> Home</a></li>
<!--     <li><a href="form"><i class="glyphicon glyphicon-plus-sign"></i> ADD PRODUCT</a></li> -->
<!--       <li><a href="category">CATEGORY</a></li> -->
      
<!--         <li><a href="supplier"><i class="glyphicon glyphicon-pencil"></i> SUPPLIER</a></li> -->
      <li><a href="productview"><i class="glyphicon glyphicon-pencil"></i>PRODUCT VIEW</a></li>
        
       <ul class="nav navbar-nav navbar-right">   
      <li><a href="memberShip"><i class="glyphicon glyphicon-log-in"></i> SIGNUP</a></li>
      <ul class="nav navbar-nav navbar-right">   
      <li><a href="loginnew"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      
      </ul>
      
    </ul>
  </div>
</nav>
 <center>
<div class="container">
    <div class="row">
        <form class="loginForm"   action="<c:url value='j_spring_security_check' />" method="post">
           <c:if test="${not empty error}">
           
           
                <h2><left>Enter Details</left></h2>
                <div class="error" style="color: red;">${error}</div>
                </c:if>          

          <c:if test="${not empty msg }">
          <div class="msg">${msg}</div>
          </c:if>
            
          <div class="form-group">
                    <label for="InputName">User Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="username" id="InputName" placeholder="User Name" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Password</label>
                    <div class="input-group">
<input type="password" class="form-control" name="password" id="InputName" placeholder="password" required>
      </div>
                </div>
                <input type="submit" name="submit" id="submit" value="submit" class="btn btn-info">
 <input type="submit" name="submit" id="submit" value="cancel" class="btn btn-info">
            </div>
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
        </form>
        </center> 
</body>
</html>