<%-- 
    Document   : login
    Created on : Mar 11, 2014, 6:55:04 AM
    Author     : apprentice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact List</title>
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
                        <li class="active"><a href="displayNewAddressForm">Add an Address</a></li>
                        <li><a href="displayFindAddress">Find an Address</a></li>
                        <li><a href="../index.jsp">Login Page</a></li>
                        <li> <a href="../j_spring_security_logout">Log Out</a><li/>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>

      <div class="container" style="padding: 75px 25px; text-align: left;">


        <div>
            <h2>Sign in to the Address Book App</h2>
            <!-- #1 - If login_error == 1 then there was a failed login attempt --> 
            <!--      so display an error message                                -->
            <c:if test="${param.login_error == 1}">
                <h3>Wrong id or password!</h3>
            </c:if>

            <!-- #2 - Post to Spring security to check our authentication -->
            <form method="post" class="signin" action="../j_spring_security_check">
                <fieldset>
                    <table cellspacing="0">
                        <tr>
                            <th>
                                <label for="username">Username
                                </label>
                            </th>
                                                     <!-- #2a - must be called j_username for Spring --> 
              
                            <td><input id="username_or_email"
                                       name="j_username" 
                                       type="text" /> 
                            </td>
                        </tr>
                        <tr>
                                                               <!-- #2b - must be j_password for Spring -->
    
                            <th><label for="password">Password</label></th>
                            <td><input id="password" 
                                       name="j_password" 
                                       type="password" />
                            </td>
                        </tr>
                        <tr>
                            <th></th>
                            <td><input name="commit" type="submit" value="Sign In" /></td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
            
            <!-- #3 - just puts focus in the username field when page loads -->
            <script type="text/javascript">            
            
            document.getElementById('username').focus();
            </script>
        </div>
    </body>
</html>
