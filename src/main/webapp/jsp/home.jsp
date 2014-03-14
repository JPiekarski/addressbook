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
                        <li class="active"><a href="addressBook">Address Book Home</a></li>
                        <li><a href="displayAddressBook">List Addresses</a></li>
                        <li><a href="displayNewAddressForm">Add an Address</a></li>
                        <li><a href="displayFindAddress">Find an Address</a></li>
                        <li><a href="../index.jsp">Login Page</a></li>
                        <li> <a href="../j_spring_security_logout">Log Out</a><li/>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
      <div class="container" style="padding: 75px 25px; text-align: left;">

<h1>About Address Book</h1>

<p>Depending on your user permissions, you may be able to view, sort, or edit the addresses already in the address book using the menu bar at the top of the page.
</p>

<p>Additionally you might also be able to add new contacts as well. 
    
<p>To learn more about this and my other projects, please <a href="http://jpiekarski.github.io/"> visit my portfolio.</a></p>    
    

</div>


    </body>
</html>
