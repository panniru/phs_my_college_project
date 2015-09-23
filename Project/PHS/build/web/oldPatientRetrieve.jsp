<%-- 
    Document   : oldPatientRetrieve
    Created on : Apr 2, 2012, 11:14:40 PM
    Author     : PRATYUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OldPatentRetrive</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form method="post" action="OldPatientRegistration_1.jsp">
      <table align="center" border="0">
          <thead>
              <tr>
                  <th></th>
                  <th></th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td>Mobile Number OR PatientId</td>
                  <td>:</td>
                  <td><input type="text" name="uniqNumber" value="" size="12" /></td>
              </tr>
              <tr>
                  <td align="left"><input type="submit" value="Get Old PatientDetails" name="GetoldPatientDetails" /></td>
                  <td align="center" colspan="2"><input type="reset" value="Clear" name="Clear" /></td>
              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
