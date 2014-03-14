<%-- 
    Document   : displayNewAddressForm
    Created on : Mar 5, 2014, 2:32:05 PM
    Author     : apprentice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Address</title>
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
                    <a class="navbar-brand" href="../index.jsp">Address Book</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../index.jsp">Project Home</a></li>
                        <li><a href="displayAddressBook">List Addresses</a></li>
                        <li><a href="displayNewAddressForm">Add an Address</a></li>
                        <li class="active"><a href="displayFindAddress">Find an Address</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
        
       
                 <div class="container" style="padding: 75px 25px; text-align: left;">


    <c:forEach var="address" items="${addressBook}"> 
      First Name:  <c:out value="${address.firstName}"/> 
      <a href="editAddress?addressId=${address.addressId}" >Edit</a>
        <a href="deleteAddress?addressId=${address.addressId}"> Delete</a> <br/>
       Last Name   ${address.lastName}<br/>
       Street:         ${address.streetAddress}<br/>
      City  ${address.city}<br/>
      State:  ${address.state}<br/>
         Zip:        ${address.zip}<br/>
         <br/>
         <br/>

    </c:forEach>
         
         <script src="../js/jquery-1.10.2.js"></script>
         <script scr="../js/bootstrap.js"></script>
                 </div>
</body>
</html>
