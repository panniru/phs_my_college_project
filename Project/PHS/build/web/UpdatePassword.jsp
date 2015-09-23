<%-- 
    Document   : newjsp
    Created on : Mar 14, 2012, 4:53:20 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updatepassword</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        validate= function ()
        {
            if(UpdatePassword.NewPassword.value == UpdatePassword.RewritePassword.value)
                {
                    window.alert("password updated successfully");
                }
            else
                {
                    window.alert("password not matched please re enter...!!");
                }
        }
    </script>
    </head>
    <body>
        <form name="UpdatePassword" method="POST">
          <table align="center" border="0">
              <tbody>
                  <tr>
                      <td>UserName</td>
                      <td>:</td>
                      <td><input type="text" name="UserName" value="" size="30" readonly="readonly" /></td>
                  </tr>
                  <tr>
                      <td>Write New Password</td>
                      <td>:</td>
                      <td><input type="password" name="NewPassword" value="" size="30" /></td>
                  </tr>
                  <tr>
                      <td>Rewrite Password</td>
                      <td>:</td>
                      <td><input type="password" name="RewritePassword" value="" size="30" /></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td><input type="submit" value="Update" name="Update" onclick="validate()"/></td>
                  </tr>
              </tbody>
          </table>

      </form>
    </body>
</html>
