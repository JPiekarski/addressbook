<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address Book</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
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
                    <div class="navbar-brand active">Address Book</div>
                </div>
                <div class="collapse navbar-collapse">
<!--                    <ul class="nav navbar-nav">
                        <li ><a href="addressBook">Address Book Home</a></li>
                        <li><a href="displayAddressBook">List Addresses</a></li>
                        <li><a href="displayNewAddressForm">Add an Address</a></li>
                        <li><a href="displayFindAddress">Find an Address</a></li>
                        <li class="active"><a href="../index.jsp">Login Page</a></li>
                        <li> <a href="../j_spring_security_logout">Log Out</a><li/>

                    </ul>-->
                </div><!--/.nav-collapse -->
            </div>
        </div>
<!-- end header XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXxxxx -->> 
        <div class="container" style="padding: 75px 25px; text-align: left;">
 
            
<h2>Welcome to Address Book</h2>
<a href="spring/addressBook">Log Into Address Book</a><br/> 
<ul>
    <li>View one: enter the username "test" and "password" to be able to use the site's full functionality.</li>
    <li>View two: enter the username "test2" and "password" to view and search - but not update - items in the address book.<br/></li>


</ul>            
</div>




    </body>
</html>




