<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<nav class="navbar navbar-default">
  <div class="container-fluid">
   
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Ishiya</a>
    </div>

   
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="jessie">Home<span class="sr-only">(current)</span></a></li>
        <!-- <li><a href="jessieaboutus">AboutUs</a></li>
       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">category <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="jessieforhim">GITS FOR HIM</a></li>
            <li><a href="jessieforher">GIFTS FOR HER</a></li>
            <li><a href="jessiepersonalised">PERSONALISED GIFTS</a></li>
            <li class="divider"></li>
            <li><a href="#"></a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>-->
      </ul> 

<ul class="nav navbar-nav navbar-right">
<li><a href="memberShip"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
     </ul>
     
    </div>
  </div>
</nav>

  <title>ADMIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body{
background-image:url("<c:url value='/resources/images/pox.jpg'/>");
background-repeat:no-reprat;
background-size:cover;
}
</style>
  
</head>

<body><center>
.<h2>ADMIN</h2></center>
<div class="container">
  
  <br>
<br>
<br>
<br>
<br>
  

  
  <button type="button" class="btn btn-primary btn-lg btn-block"><a href="addproduct" style="color:white;">Add Product</a></button>
<br>

   <button type="button" class="btn btn-primary btn-lg btn-block"><a href="addsupplier" style="color:white;">Add Supplier</a></button>
<br>
  

  
 <button class="btn btn-success"><a href="EmailForm" style="color:white">Order Now</a></button>
 
<br>  

  

  
  
  
</div>

</body>
</html>

    