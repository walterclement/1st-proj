<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Category</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/category.css'/>" rel="stylesheet"/>
	
</head>
<body>
<%@include file="header1.jsp" %>
 <center>

  <div style="color: teal; font-size: 30px">Add Product</div>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form id="registerForm" commandName="cate" method="post"
   action="./addCategory">
   <table width="400px" height="150px">
    <tr>
     <td><label for="cname">Category Name</label>
     </td>
     <td><form:input path="cname"/>
     <td><form:errors path="cname" class="err"/>
     </td>
    </tr>
    <td></td>
     <td><input type="submit" value="Save" /></td>
    </tr>
   </table>
  </form:form>


<a href="categorylist" style="color: #FDFEFE";>Click Here to see Category List</a>

 </center>

</body>
</html>