<%-- 
    Document   : ConductTest
    Created on : Jun 27, 2012, 1:05:56 AM
    Author     : Naveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    <body>
       
       <form name="TestReport" method="POST" action="ViewTestReport.jsp" target="doctorframe">
        <table border="0" align="center" >
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" id="patientId" name="patientId" size="10" /></td>
                      <td><input type="submit" value="conductTest" name="Report" class="phs_Button"/></td>
                  </tr>
                 
               </tbody>
          </table>
    </body>
</html>
