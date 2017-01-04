<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add products</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/form.css'/>" rel="stylesheet"/>
	
	
</head>
<body>
<%@include file="header1.jsp" %>
 <center>

  <div style="color: teal; font-size: 30px">Add Product</div>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form action="productmodel" method="POST" commandName="ob" enctype="multipart/form-data" >
   <table width="400px" height="150px">
    <tr>
     <td><label for="name">PRODUCT NAME</label>
     </td>
     <td><form:input path="name"/>
     <td><form:errors path="name" class="err" />
     
     </td>
    </tr>
    <tr>
     <td><form:label path="description">PRODUCT DESC</form:label>
     </td>
     <td><form:input path="description" />
     <td><form:errors path="description" class="err" />
     </td>
    </tr>
    <tr>
     <td><form:label path="price">PRODUCT PRICE</form:label>
     </td>
     <td><form:input path="price" />
     <td><form:errors path="price" class="err" />
<%--     <c:if test="${prod.price le -1}"> --%>
<!--  You Entered a wrong value Kindly Change the value. -->
<%-- </c:if> --%>
    
     </td>
     </tr>
     <tr>
     <td><form:label path="qty">PRODUCT QUANTITY</form:label>
     </td>
     <td><form:input path="qty" />
     <td><form:errors path="qty" class="err" />
     
<%--      <c:if test="${prod.qty le -1}">  --%>
<!--  You Entered a wrong value Kindly Change the value. -->
<%-- </c:if> --%>
     </td>
     </tr>
     <tr>
     <td><form:label path="img">PRODUCT IMAGENAME</form:label>
     </td>
     <td><form:input path="img" />
     <td><form:errors path="img" class="err" />
     
<%--      <c:if test="${prod.qty le -1}">  --%>
<!--  You Entered a wrong value Kindly Change the value. -->
<%-- </c:if> --%>
     </td>
     </tr>
<!--     <tr> -->
<%--      <td><form:label path="qty">PRODUCT QUANTITY</form:label> --%>
<!--      </td> -->
<%--      <td><form:input path="qty" /> --%>
<!--      </td> -->
<!--      </tr> -->
    <td></td>
    
    
     
     <%-- <td>
     <form:select path="cname">
     <form:option value="-1" label="Select a Category"/>     
     <form:options items="${categoryList}" itemValue="cname" itemLabel="cname"/>  
     </form:select>
     </td> --%>
     
     <td>
    <form:select path="cname" >    
       <option value="-1">Select Category type</option>
       <c:forEach items="${lstCategory}" var="category">
        <option value="${category.cname}">${category.cname}</option>
       </c:forEach>
      </form:select>
     </td>
     
     <tr>
     <td></td>
     <td>
     <form:select path="sname" >    
       <option value="-1">Select Supplier type</option>
       <c:forEach items="${lstSupplier}" var="supplier">
        <option value="${supplier.sname}">${supplier.sname}</option>
       </c:forEach>
      </form:select>
     </td>
     </tr>
     
      <tr>
      <td></td>
     <td> <form:input path="file" type="file"/>
     </td>
     <td>
   		</tr>
    <tr>
     <td></td>
     <td><input type="submit" name="action" value="Add" /></td>
    </tr>
   </table>
  </form:form>


<a href="gridlis" style="color: #FDFEFE";>Click Here to see Product List</a>

  </center>
<%--  <img src="<c:url value="${img}"/>" alt="image" height="100px" weight="100px"/> --%>
<script src="<c:url value='resources/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'/>"/></script>

    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>

</body>
</html>