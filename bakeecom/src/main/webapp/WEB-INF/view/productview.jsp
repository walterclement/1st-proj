<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product View</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
<%-- 	<link href="<c:url value='resources/css/gridl.css'/>" rel="stylesheet"/> --%>
	
</head>
<body>
<%@include file="header1.jsp" %>
<center>

  <div style="color: #080808; font-size: 30px"><h3>Grid View of Products</h3></div>
   

  <c:if test="${!empty productList}">
  
   
    
    <c:forEach items="${productList}" var="user">
<!--        <div class="row">  -->
  <div class="col-md-3 ">
    <div class="thumbnail">
      <img src="<c:url value="${user.img}"/>" alt="image" />
      <div class="caption">
        <h3>${user.name}</h3>
        <h4>RS:${user.price}</h4>
        <p>${user.description}</p>
        
        
<%--         <p><a href="singleproduct?id=${user.pid}" class="btn btn-primary" role="button">Add Cart</a></p>  --%>
      
      <p><a href="singleproduct?id=${user.pid}" class="btn btn-primary" role="button">View Product</a></p>
      </div>
    </div>
</div>


    </c:forEach>
     </c:if>  

<br>
 
</center>
 <br>
 <br>
 <br>
 
</body>
</html> 