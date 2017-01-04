<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE HTML>
<HTML LANG="en">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PAYMENT</title>
<div class="container">
    <div class='row'>
        <div class='col-md-4'></div>
        <div class='col-md-4'>
        
<style>
.submit-button {
  margin-top: 10px;
  
}
body
{
/* background:url("<c:url value='/resources/image/ecommerce.jpg'/>"); */
background-repeat:no-repeat;
background-size: cover;
/* overflow:hidden; */
}
</style>
<body>
<br>
<br>
<br>
<br>
<h1 style="color:blue">PAYMENT DETAILS</h1>
<br>
<br>
<center>
<!-- <form action="thanks" > -->
<br><c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
</c:forEach>

<form  method="post" action="EmailForm">
            <div class='form-row'>
              <div class='col-xs-12 form-group required'>
                <label class='control-label'>Name on Card</label>
                <input class='form-control'  type='text' pattern="[A-Za-z].{3,}" title="It should  be a validname MORE THAN 3 CHARACTERS">
              </div>
            </div>
            <div class='form-row'>
              <div class='col-xs-12 form-group card required'>
                <label class='control-label'>Card Number</label>
                <input autocomplete='off' class='form-control card-number' size='20' type='text' required>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-xs-4 form-group cvc required'>
                <label class='control-label'>CVC</label>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'  required pattern="[0-9]{3}" title="Three letter country code">
              </div>
              <div class='col-xs-4 form-group expiration required'>
                <label class='control-label'>Expiration</label>
                <input class='form-control card-expiry-month' placeholder='MM' size='2' type='text'  required>
              </div>
              <div class='col-xs-4 form-group expiration required'>
                <label class='control-label'>year</label>
                <input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text'  required>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12'>
                <div class='form-control total btn btn-info'>
                 <span class='amount'>Rs.${totalPrice}</span>
                </div>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12 form-group'>
                <input class='form-control btn btn-primary submit-button' type='submit' value="Check your Details"/>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12 error form-group hide'>
                <div class='alert-danger alert'>
                  Please correct the errors and try again.
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class='col-md-4'></div>
    </div>
</div>
</center>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



</body>
</html>