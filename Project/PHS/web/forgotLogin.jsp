<%-- 
    Document   : forgotLogin
    Created on : Mar 14, 2012, 10:18:51 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="ForgotLoginDetails" method="post" action="getPassword.jsp" target="homeframe">
          <table align="center">
              <tbody>
                  <tr>
                      <td>Enter Your UID</td>
                      <td>:</td>
                      <td><input type="text" name="uid" value="" size="50" /></td>
                  </tr>
                  <tr>
                      <td>Chose Question</td>
                      <td>:</td>
                      <td><select name="choosequestion">
                              <option>What is your favourite food?</option>
                              <option>What is your nick name?</option>
                              <option>What is your first teacher name?</option>
                              <option>What is your best friend name?</option>
                              <option>What is favourite past time?</option>
                          </select></td>
                  </tr>
                  <tr>
                      <td>Answer</td>
                      <td>:</td>
                      <td><input type="text" name="answer" value="" size="50" /></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td><input type="submit" value="Submit" name="Submit"/> </td>
                  </tr>
              </tbody>
          </table>

      </form>
       <%--<jsp:useBean id="forgotpass" class="PHS.ForgotPassword" scope="page">
           <jsp:setProperty name="forgotpass" property="*"></jsp:setProperty>
           <% forgotpass.getPasswordDetails(); %>
           <jsp:getProperty name="forgotpass" property="uname"></jsp:getProperty>
           <jsp:getProperty name="forgotpass" property="pass"></jsp:getProperty>

       </jsp:useBean>--%>
    </body>
</html>
