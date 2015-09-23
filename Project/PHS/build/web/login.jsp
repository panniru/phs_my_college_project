<%-- 
    Document   : login
    Created on : Mar 14, 2012, 10:15:55 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="header.jsp"%>--%>
<html>
  <head>
    <title>Login</title>
    <%--<link href="PHScss.css" rel="stylesheet" type="text/css" />--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        validate= function ()
        {
            <%--alert("UserName field should not leave empty...!!");--%>
            if(document.Login.username.value=="")
                {
                    window.alert("UserName field should not leave empty...!!");
                    document.Login.username.focus();
                    return false;
                }
            else if(document.Login.password.value=="")
                {
                    window.alert("Password field should not leave empty...!!");
                    document.Login.password.focus();
                    return false;
                }
      }
        
    </script>
  </head>
  <body >
      <%--bgcolor="#3E7A5E">background="images/bggreen.jpg"--%>
      <form name="Login" method="GET" action="validateLogin.jsp" onsubmit="return validate()">
          <center><table border="0">
              <tbody>
                  <%--<tr>
                      <td colspan="3"><img src="images/stethoscope.jpg" height="200" width="356" alt="sorry image was not available"></td>

                  </tr>--%>
                  <tr>
                      <td colspan="3" align="center">Enter Your User Name and Password here</td>

                  </tr>
                  <tr>
                      <td><font color="">User Name</font></td>
                      <td><font color="">:</font></td>
                      <td><input type="text" name="username" size="30" /></td>
                  </tr>
                  <tr>
                      <td><font color="">Password</font></td>
                      <td><font color="">:</font></td>
                      <td><input type="password" name="password" size="30" /></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td><input type="submit" value="Login" name="submit" />    <input type="reset" value="Reset" name="Reset" /></td>
                  </tr>
                  <tr>
                      <td><a href="forgotLogin.jsp" target="homeframe"><font color="black"><u>Forgot Password?</u></font></a></td>
                      <td></td>
                      <td align="right"><a href="OnlineRegistration.jsp" target="homeframe"><font color="black"><u>Not Yet Registered?</u></font></a></td>
                  </tr>
              </tbody>
          </table></center>

      </form>
  </body>
</html>
