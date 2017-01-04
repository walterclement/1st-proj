<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>
	shop pot
	</title>
			</head>

	<body>
	
	<center>
		<div class="content">
			<fieldset>
				<legend>Confirm Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /><br />
				<sf:form modelAttribute="userBean">
					<sf:label path="name">Name : </sf:label>${userBean.name}
					<br /><br />
					<sf:label path="username">UserName : </sf:label>${userBean.username}
					<br /><br />
					<sf:label path="dob">DateOfBirth : </sf:label>${userBean.dob}
					<br /><br />
					<sf:label path="mob_no">Mobile_No :</sf:label>${userBean.mob_no}
					<br /><br />
					<sf:label path="email">Email : </sf:label>${userBean.email}
					<br /><br />
					<sf:label path="billadd">BillingAddress: </sf:label>${userBean.billadd}
					<br /><br />
					<sf:label path="shipadd">ShippingAddress : </sf:label>${userBean.shipadd}
					<br /><br />
					<sf:label path="city">City : </sf:label>${userBean.city}
					<br /><br />
					<sf:label path="landmark">LandMark : </sf:label>${userBean.landmark}
					<br /><br />
					<sf:label path="password">Password : </sf:label>${userBean.password}
					<br /><br />
					<sf:label path="confirmpass">ConfirmPassword : </sf:label>${userBean.confirmpass}
					<br /><br />
	
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</sf:form>
			</fieldset>
		</div>
		</center>
		
	</body>
</html>