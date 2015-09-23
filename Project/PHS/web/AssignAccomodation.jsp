<%-- 
    Document   : AssignAccomodation
    Created on : Mar 14, 2012, 8:17:51 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AssignAccomodation</title>
         <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="AssignAccomodation" method="POST">
            <table border="0" width="300" cellspacing="4" cellpadding="3"  align="center" class="phs_table">
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
                  <td>RoomType</td>
                  <td>:</td>
                  <td> <select name="roomType">
                          <option>select</option>
                          <option>Surgery</option>
                          <option>General</option>
                          <option>ICU</option>
                          <option>OP</option>
                          <option>Emergency</option>
                      </select> </td>
              </tr>
              <tr>
                  <td>AvailableRooms</td>
                  <td>:</td>
                  <td> <select name="availableRooms">
                          <option>select</option>
                          <option>101</option>
                          <option>201</option>
                          <option>301</option>
                          <option>401</option>
                          <option>501</option>
                      </select> </td>
              </tr>
              <tr>
                  <td>Cost</td>
                  <td>:</td>
                  <td> <input type="text" name="rumCost" value="" size="30" /></td>
              </tr>
              <tr>
                  <td></td>
              </tr>

              <tr>
                  <td> <input type="submit" value="Assign Accomodation" name="assignAccomodation" size="30" onclick="window.alert('Accomodation Asigned Successfully')" class="phs_Button"/> </td>
                  <td></td>
                  <td align="right"> <input type="reset" value="clear" name="clear" size="30" /></td>
              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
