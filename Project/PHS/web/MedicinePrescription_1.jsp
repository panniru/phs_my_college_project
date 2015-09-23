<%-- 
    Document   : MedicinePrescription
    Created on : Mar 14, 2012, 4:33:51 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>medicinePrescription</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <body>
    <form name="PrescribeMedicine" method="POST" action="">
          <table border="0" align="center">
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" name="PatientId" value="" size="10" /></td>
                  </tr>
                  <tr>
                      <td><input type="submit" value="GetPatientDetails" name="GetPatientDetails" onclick="show('Patient Details')"/></td>
                      <td></td>
                      <td><input type="reset" value="Clear" name="Clear" /></td>
                  </tr>
              </tbody>
          </table>
        <!--<div id="Patient Details" style="display: none">-->
            <table border="0" align="center">
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" name="PatientID" value="" size="10" readonly="readonly" /></td>
                  </tr>
                  <tr>
                      <td>PatientName</td>
                      <td>:</td>
                      <td><input type="text" name="PatientName" value="" size="30" readonly="readonly" /></td>
                  </tr>
                  <tr>
                      <td>Age  :<input type="text" name="Age" value="" size="4" readonly="readonly" /></td>
                      <td></td>
                      <td>Gender  :<input type="text" name="Gender" value="" size="10" /></td>
                  </tr>
                  <tr>
                      <td>Health History</td>
                      <td>:</td>
                      <td><textarea name="Health History" rows="4" cols="20" readonly="readonly">
                          </textarea></td>
                  </tr>
                  <tr>
                      <td>Symptoms</td>
                      <td>:</td>
                      <td><textarea name="Symptoms" rows="4" cols="20" readonly="readonly">
                          </textarea></td>
                  </tr>
                  <tr>
                      <td>Condition</td>
                      <td>:</td>
                      <td><input type="text" name="Condition" value="" size="20" readonly="readonly" /></td>
                  </tr>
                  </tbody>
            </table>
            <p align="center">
                <a href="#" onclick="show('PrescribeTest')">PrescribeMedicine</a>
            </p>
            <table border="0" align="center">
                                            <tbody>
                                                <tr>
                                                    <td>Medicine Name</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Medicine Name" value="" size="35" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Medicine Type</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Medicine Type" value="" size="15" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Dose</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Dose" value="" size="6" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Usage</td>
                                                    <td>:</td>
                                                    <td><select name="Usage">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <td>Quantity</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Quantity" value="" size="4" /></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td><input type="submit" value="Add" name="Add" onclick="window.alert('Medicine Added')"/>   <input type="reset" value="Clear" name="Clear" /></td>
                                                </tr>
                                            </tbody>
            </table></form>
    </body>
</html>
