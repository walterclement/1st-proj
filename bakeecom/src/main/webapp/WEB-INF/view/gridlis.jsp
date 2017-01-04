<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Products</title>
 <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/gridl.css'/>" rel="stylesheet"/>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.8/angular.min.js"></script>	 --> 
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script>
	var prodd=${prodat};
	angular.module('myApp',[]).controller('BakeryController', function($scope){
		$scope.lstr=prodd;
	});
	</script>
	
</head>
<body>
 <%@include file="header.jsp" %> 
 <center>

  <div style="color: #080808; font-size: 30px"><h3>Grid View of Products</h3></div>
  <div ng-app="myApp" ng-controller="BakeryController">
   <div class="container">
<input type="text" placeholder="search" class="form-control" ng-model="test.pid">

  
  <table border="1" bgcolor="#3498DB" width="600px">
    <tr
     style="background-color: #3498DB; color: white; text-align: center;"
     height="40px">
      <td>PRODUCT ID</td>
     <td>PRODUCT NAME</td>
     <td>PRODUCT DESC</td>
     <td>PRODUCT PRICE</td>
    
     <td> Edit </td>
     <td>Delete</td>
    </tr>
<tbody>
<%-- 	<c:forEach items="${productList}" var="user" > --%>
	<tr ng-repeat="pd in lstr | filter:test">
       <td>{{pd.pid}}</td>
       <td>{{pd.name}}</td>
        <td>{{pd.price}}</td> 
        <td>{{pd.description}}</td>
<%--        <td><img src="<c:url value="${user.img}" />" height="100px" width="100px"></td> --%>

        <td><a href="edit?id={{pd.pid}}" class="btn btn-primary" role="button">Edit</a></td><td> <a href="deleteProduct?id={{pd.pid}}" class="btn btn-default" role="button">Delete</a></td>
    
     
   
     
     </tr>
<%--      </c:forEach> --%>
   </tbody>
 

    
   </table>
</div>
</div>

  <a href="form" style="color: #FDFEFE";><h5> Add Product</h5> </a>
 </center>
</body>
</html> 