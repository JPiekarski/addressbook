<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta  name="viewport" content="width=device­width, initial­scale=1.0">
        <!­­ Bootstrap ­­>
        <link  href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">

        <title>Find Address Form</title>
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
                    <a class="navbar-brand" href="#">Address Book</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../../index.jsp">Home</a></li>
                        <li><a href="displayAddresses">List Addresses</a></li>
                        <li><a href="displayAddAddress">Add an Address</a></li>
                        <li class="active"><a href="displayFindAddress">Find an Address</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
        <div class="container" style="padding: 40px 15px; text-align: center;">
            <h1>Find An Address</h1>
            <form method="POST" action="findAddress">
                First Name: <input type="text" name="firstName" /><br/>
                Last Name: <input type="text" name="lastName" /><br/>
                Street: <input type="text" name="streetAddress" /><br/>
                City: <input type="text" name="city" /><br/>
                State: <input type="text" name="state" /><br/>
                Zip: <input type="text" name="zip" /> <br/><br/>

                <input type="submit" value="Find Address" /><br/>
            </form>
        </div>
        <!­­ jQuery (necessary for Bootstrap's JavaScript plugins) ­­>
        <script src="../../js/jquery­1.11.0.min.js"></script>

        <!­­ Include all compiled plugins, or include individual files as needed ­­>
        <script src="../../js/bootstrap.js" ></script>
    </body>
</html>