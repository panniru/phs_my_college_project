<%-- 
    Document   : PatientBillDetails
    Created on : Mar 14, 2012, 4:42:58 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientBillDetails</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="PatientBillDetails" method="POST" action="">
          <table border="0" align="center">
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" name="PatientId" value="" size="10" /></td>
                  </tr>
                  <tr>
                      <td><input type="submit" value="GetBillDetails" name="GetBillDetails" /></td>
                      <td></td>
                      <td><input type="reset" value="Clear" name="Clear" /></td>
                  </tr>
              </tbody>
          </table>

          <table border="0" width="300" cellspacing="4" cellpadding="3" align="center">
              <tbody>
                  <tr>
                      <td align="center"> PatientID </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="pid" value="" size="10" /> </td>
                  </tr>
                  <tr>
                      <td align="center"> PatientName </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="pname" value="" size="10" />  </td>
                  </tr>
              </tbody>
          </table>
            &nbsp;
              <table border="0" width="300" cellspacing="4" cellpadding="3" bgcolor="lightblue" align="center">
              <tbody>
                  <tr>
                      <td align="center"> Perticular </td>
                      <td align="center"> Amount </td>
                      <td align="center"> Date </td>
                      <td align="center"> Claim </td>
                  </tr>
                  <tr>
                      <td> <input type="text" name="Perticular" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Amout" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Date" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Claim" value="" size="10" readonly="readonly" /> </td>
                  </tr>

                  <tr>
                      <td> <input type="text" name="Perticular" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Amout" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Date" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Claim" value="" size="10" readonly="readonly" /> </td>
                  </tr>

                  <tr>

                      <td> <input type="text" name="Perticular" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Amout" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Date" value="" size="10" readonly="readonly" /> </td>
                      <td> <input type="text" name="Claim" value="" size="10" readonly="readonly" /> </td>
                  </tr>

                  </tbody>
              </table>
                  &nbsp;
              <table border="0" width="300" cellspacing="4" cellpadding="3" align="center">
              <tbody>
                  <tr>
                      <td align="center"> Total </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="total" value="" size="10" /> </td>
                  </tr>
                  <tr>
                      <td align="center"> AdvPaid </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="advpaid" value="" size="10" />  </td>
                  </tr>
                  <tr>
                      <td align="center"> InsuranceStatus </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="is" value="" size="10" /> </td>
                  </tr>
                  <tr>
                      <td align="center"> CliamedAmount </td>
                      <td> : </td>
                      <td align="center"> <input type="text" name="camt" value="" size="10" />  </td>
                  </tr>
                  <tr>
                      <td> </td>
                      <td> <input type="reset" name="ok" value="OK" align="center"> </td>
                      <td> </td>
                  </tr>
              </tbody>
          </table>
       </form>
    </body>
</html>
