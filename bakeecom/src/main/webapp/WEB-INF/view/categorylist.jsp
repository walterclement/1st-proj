<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Suppliers</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/categorylist.css'/>" rel="stylesheet"/>
	
	
</head>
<body>
<%@include file="header.jsp" %>
 <center>

  <div style="color: #080808; font-size: 30px"><h3>Grid View of Category</h3></div>
   

  <c:if test="${!empty categoryList}">
  <table border="1" bgcolor="#3498DB" width="600px">
    <tr
     style="background-color: #3498DB; color: white; text-align: center;"
     height="40px">
      <td>CATEGORY ID</td>
     <td>CATEGORY NAME</td>
    
     
     <td> Edit </td>
     <td>Delete</td>
    </tr>
    
    <c:forEach items="${categoryList}" var="user">
     <tr
      style="background-color: #F4F6F6; color: #3498DB; text-align: center;"
      height="30px">
      
        <td>${user.cid}</td>
      <td>${user.cname}</td>
      
      
     
      <td><a href="categoryedit?id=${user.cid}">Edit</a></td>
      <td><a href="deleteCategory?id=${user.cid}">Delete</a></td>
   
     </tr>
    </c:forEach>
    
   </table>
   </c:if>  

<br>
  <a href="category" style="color: #FDFEFE";><h5> Add Category</h5> </a>
 </center>
</body>
</html>