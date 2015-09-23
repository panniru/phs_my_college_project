<%-- 
    Document   : HomeIndex
    Created on : Apr 5, 2012, 10:41:28 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <form name="wellcome" action="">
        <table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="center"><marquee><font size="8" color="#00611C">Welcome to PHS: Mr. <%= session.getAttribute("Username")%></marquee></font></td>

              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
