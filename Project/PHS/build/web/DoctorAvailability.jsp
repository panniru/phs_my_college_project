<%-- 
    Document   : DoctorAvailability
    Created on : Mar 14, 2012, 8:20:27 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DoctorAvailabity</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="DoctorAvailability" method="POST" action="getAvilability.jsp">
      <table border="0" width="300" cellspacing="4" cellpadding="3" bgcolor="lightblue" align="center">
          <tbody>
              <tr>
                  <td>Department</td>
                  <td>:</td>
                  <td>  <input type="text" name="department" value="" size="30" /> </td>
              </tr>
              <tr>
                  <td>DoctorName</td>
                  <td>:</td>
                  <td> <input type="text" name="dname" value="" size="30" /> </td>
              </tr>


              <tr>
                  <td></td>
                  <td align="center"><input type="submit" value="GetAvailability" name="getDoctorAvailability"/></td>
                  <td></td>
              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
