<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Address Form</title>
    </head>
    <body>
        <h1>Edit Address Form</h1>

        <sf:form method="POST" commandName="address" action="updateAddress"> 
            <sf:label path="firstName">First Name:</sf:label><sf:input path="firstName" size="15" /></br>
            <sf:label path="lastName">Last Name:</sf:label><sf:input path="lastName" size="15" /></br> 
            <sf:label path="streetAddress">Street Address:</sf:label><sf:input path="streetAddress" size="15" /></br> 
            <sf:label path="city">City:</sf:label><sf:input path="city" size="15" /></br> 
            <sf:label path="state">State:</sf:label><sf:input path="state" size="15" /></br> 
            <sf:label path="zip">Zip code:</sf:label><sf:input path="zip" size="15" /></br> 


            <sf:hidden path="addressId"/>
            <input type="submit" value="Update Address"/></br>
        </sf:form>
    </body>
</html>
