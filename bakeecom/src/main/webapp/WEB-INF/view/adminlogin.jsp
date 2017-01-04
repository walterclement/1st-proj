<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
 
<center>
<div class="container">
    <div class="row">
        <form role="form" action="./checkLogin" method="post">
            <div class="col-lg-6">
          <div class="form-group">
                    <label for="InputName">User Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="username" id="InputName" placeholder="User Name" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Password</label>
                    <div class="input-group">
<input type="password" class="form-control" name="passwrd" id="InputName" placeholder="password" required>
      </div>
                </div>
                <input type="submit" name="submit" id="submit" value="submit" class="btn btn-info">
 <input type="submit" name="submit" id="submit" value="cancel" class="btn btn-info">
            </div>
        </form>
       </center> 
</body>
</html>