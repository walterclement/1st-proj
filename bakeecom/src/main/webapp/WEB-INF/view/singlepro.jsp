<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Product</title>
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
<style>
 

 
.floatRight{
    float:right;
    margin-right: 160px;
    margin-top:20px;
}

 
.has-error{
    color:red;
}
 
.generic-container {
  width:55%;
  margin-left: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
  border-radius: 7px;
  box-shadow: 0 0 30px black;
}
.well
{
  width:100%;
}

.navbar {
      margin-bottom: 10px;
      border-radius: 0;
    }
.navbar {
      font-family: none;
      margin-bottom: 100px;
      background-color: #2d2d30;
      border: 1000px;
      font-size: 11.5px !important;
      letter-spacing: 2px;
      opacity: 2;
  }
.jumbotron {
	  padding-top: 0px;
      padding-bottom: 0px;
      margin-bottom: 0;
    }
}
</style>
<body>

                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="<c:url value="/resources/admin/upload/${productModel.img}.jpg"/>" style=" height:500px;width:500px;" />
                                    </div>
                                  
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${productModel.name}</h2>
                                    <div class="product-inner-price">
                                        <ins>${productModel.price}</ins>
                                    </div>    
                                    
                                    <form action="" class="cart">
                                        <div class="col-md-6">
										<a href="<c:url value="/user/addtocart/${productModel.pid}"/>" class="btn btn-default"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
										</div>
                                    </form>   
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
<!--                                             <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li> -->
<!--                                             <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li> -->
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
<!--                                                 <h2>Product Description</h2>   -->
<%--                                                 <p>${productModel.description}</p> --%>

                                               
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
  
  
</body>
</html>