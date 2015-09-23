<%-- 
    Document   : getPassword
    Created on : Apr 5, 2012, 1:43:46 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" target="homeframe"></form>
        <jsp:useBean id="forgotpass" class="PHS.ForgotPassword" scope="page">
             <jsp:setProperty name="forgotpass" property="*"></jsp:setProperty>
             <% forgotpass.getPasswordDetails(); %>
             <center><font color="#FF0033" size="6">Well Come Mr. </font><font color="#B67733" size="6"><jsp:getProperty name="forgotpass" property="uname" /></font><br>
                     <font color="#FF0033" size="6">Your Password is: </font><font color="#B67733" size="6"><jsp:getProperty name="forgotpass" property="pass" /></font></center><br>
                     <font color="#B67733" size="4">Please keep remember your UID for further use. .</font>
        </jsp:useBean>
   </body>
</html>
