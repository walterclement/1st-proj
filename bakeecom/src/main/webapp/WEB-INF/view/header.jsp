 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!-- .nametag{ -->

<!-- } -->
<nav class="navbar-fixed-top navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home1"><i class="glyphicon glyphicon-home"></i> Home</a></li>
      <security:authorize access="hasRole('ROLE_ADMIN')">
    <li><a href="product"><i class="glyphicon glyphicon-plus-sign"></i> ADD PRODUCT</a></li>
      <li><a href="category">CATEGORY</a></li>
      <li><a href="supplier"><i class="glyphicon glyphicon-pencil"></i> SUPPLIER</a></li>
      </security:authorize>
      <li><a href="<c:url value="/viewall"/>"><i class="glyphicon glyphicon-pencil"></i>PRODUCT VIEW</a></li>
        <li><a href="<c:url value="/viewcart"/>">Cart</li></a>
       <ul class="nav navbar-nav navbar-right"> 
       <li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  			<c:if test="${pageContext.request.userPrincipal.name != null}">
           
             <h5 style="color:white;">Welcome : ${pageContext.request.userPrincipal.name} |
                                <a href="<c:url value="/logout"/>">Logout</a></h5>
                                
                 </c:if>  
      <c:if test="${pageContext.request.userPrincipal.name == null}"> 
      <li><a href="memberShip"><i class="glyphicon glyphicon-log-in"></i> SIGNUP</a></li>
      <ul class="nav navbar-nav navbar-right">   
      <li><a href="login"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      </ul>
      </c:if>
      
    </ul>
  </div>
</nav>