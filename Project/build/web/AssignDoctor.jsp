<%-- 
    Document   : AsignDoctor
    Created on : Mar 14, 2012, 5:43:03 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="AsignDoctor" method="POST">
      <table border="0" width="300" cellspacing="4" cellpadding="3" bgcolor="lightblue" align="center" >
          <tbody>
              <tr>
                  <td>PatientID</td>
                  <td>:</td>
                  <td>  <input type="text" name="pid" value="" size="30" /> </td>
              </tr>
              <tr>
                  <td>PatientName</td>
                  <td>:</td>
                  <td> <input type="text" name="pname" value="" size="30" /> </td>
              </tr>
              <tr>
                  <td>Department</td>
                  <td>:</td>
                  <td> <select name="department">
                          <option>select</option>
                          <option>General</option>
                          <option>OP</option>
                          <option>Emergency</option>
                          <option>ICU</option>
                          <option>Surgery</option>
                      </select> </td>
              </tr>
              <tr>
                  <td>Doctor</td>
                  <td>:</td>
                  <td> <select name="doctor">
                          <option>select</option>
                          <option>Srikanth</option>
                          <option>Hanumanthu</option>
                          <option>Anil Kumar</option>
                          <option>Rajendar</option>
                          <option>Kranthi</option>
                      </select> </td>
              </tr>
              <tr>
                  <td>Cost</td>
                  <td>:</td>
                  <td> <input type="text" name="cost" value="" size="30" /></td>
              </tr>
              <tr>
                  <td></td>
              </tr>

              <tr>
                  <td> <input type="submit" value="AssignDoctor" name="assignDoctor" size="30" onclick="window.alert('Doctor Asigned Successfully')" /> </td>
                  <td></td>
                  <td align="right"> <input type="reset" value="clear" name="clear" size="30" /></td>
              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
