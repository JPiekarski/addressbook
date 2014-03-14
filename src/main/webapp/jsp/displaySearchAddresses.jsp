<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Addresses</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    </head>
    <body>
                         <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="addressBook">Address Book</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="addressBook">Address Book Home</a></li>
                        <li><a href="displayAddressBook">List Addresses</a></li>
                        <li ><a href="displayNewAddressForm">Add an Address</a></li>
                        <li class="active"><a href="displayFindAddress">Find an Address</a></li>
                        <li><a href="../index.jsp">Login Page</a></li>
                        <li> <a href="../j_spring_security_logout">Log Out</a><li/>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
 
<!--    end nav bar     -->
        <div class="container" style="padding: 75px 25px; text-align: left;">
 
<h1>Find Addresses</h1>
    
<form method="POST" action="findAddress">
    
    First Name: <input type="text" name="firstName" /><br/>
    Last Name: <input type="text" name="lastName" /><br/>
    Street:   <input type="text" name="streetAddress" /><br/>
    City <input type="text" name="city" /><br/>
    State: <input type="text" name="state" /><br/>
    Zip: <input type="text" name="zip" /><br/>

    <input type="submit" value="Find Address" /><br/>
    
        </div>
    
    
</form>

</div>
         <script src="../js/jquery-1.10.2.js"></script>
         <script scr="../js/bootstrap.js"></script>
         
            
   
</body>
</html>
