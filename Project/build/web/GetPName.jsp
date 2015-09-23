<%-- 
    Document   : GetPName
    Created on : 1 Apr, 2012, 8:41:30 PM
    Author     : Kranthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Patient Name</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form  align="center" name="GetPName" method="GET" action="BillDetails.jsp" target="billingclerkframe">
            <table align="center">
                <tr>
                    <td>Patient ID</td><td>:</td><td> <input type="text" name="patientId" value="" size="12" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="GetDetails" name="getDetails" class="phs_Button"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
