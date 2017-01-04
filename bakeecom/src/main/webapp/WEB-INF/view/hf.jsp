<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>List of Products</title>
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    
    <link href="<c:url value='resources/css/owl.carousel.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/style.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/responsive.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<body>
<%@include file="header.jsp" %>

<div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                        <div class="product-carousel">
                        <c:forEach items="${productmodelList}" var="productModel">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="<c:url value="/resources/admin/upload/${productModel.img}.jpg" />" style=" height:360px;width:100%;" />
                                    <security:authorize access="hasRole('ROLE_ADMIN')">
                                    <div class="product-hover">
                                        <a href="<c:url value="edit/${productModel.pid}"/>" class="btn btn-success custom-width">Edit</a>
      									<a href="<c:url value="delete/${productModel.pid}"/>" class="btn btn-danger custom-width">Delete</a>
                                    </div>
                                   
                                    </security:authorize>
                                    <security:authorize access="hasRole('ROLE_USER')">
                                     <div class="product-hover">
                                        <a href="<c:url value="/viewproduct/${productModel.pid}" />" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                    </security:authorize>
                                </div>
                                
                                <h2><a href="<c:url value="/viewproduct/${productModel.pid}" />">${productModel.name}</a></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>${productModel.price}</ins> 
                                </div> 
                            </div>
                          </c:forEach>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>
                          
           <script src="<c:url value='https://code.jquery.com/jquery.min.js'/>"></script>
    
    
<!--     jQuery sticky menu -->
    <script src="<c:url value='resources/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.sticky.js'/>"></script>
    
<!--     jQuery easing -->
    <script src="<c:url value='resources/js/jquery.easing.1.3.min.js'/>"></script>
    
<!--     Main Script -->
    <script src="<c:url value='resources/js/main.js'/>"></script>               
           
                            


</body>
</html>