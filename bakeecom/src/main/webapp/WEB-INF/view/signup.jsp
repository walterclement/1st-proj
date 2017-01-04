<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="H" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>   
<head>
<title>LogIn</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

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
        <li><a href="jessieaboutus">AboutUs</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">category<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">GIFTS FOR HIM</a></li>
            <li><a href="#">GIFTS FOR HER</a></li>
            <li><a href="#">PERSONALISED GIFTS</a></li>
            <li class="divider"></li>
            <li><a href="#"></a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="signup"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
  <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
     </ul>
     
    </div>
  </div>
</nav>

</div>
</br>

<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="InputName">FIRST NAME</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="FIRST NAME" required>
               
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">LAST NAME</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="LAST NAME" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">EMAIL ID</label>
                    <div class="input-group">
                        <input type="text" name="username" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="EMAIL ID" required>
                   </div>
                </div>
                <div class="form-group">
                    <label for="Input">Enter password</label>
                    <div class="input-group">
                                          <input type="password" name="passwrd" class="form-control" id="Inputpassword" name="Inputpassword" placeholder="PASSWORD" required>
                 </div>
             <br>
                <input type="submit" name="submit" id="submit" value="login" class="btn btn-info ">
                  <input type="reset" name="submit" id="submit" value="reset" class="btn btn-info ">

            </div>
	</div>
        </form>
        
</body>
</html>