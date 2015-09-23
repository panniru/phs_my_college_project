<%-- 
    Document   : PatientToPrescribe
    Created on : Apr 4, 2012, 8:07:50 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="PatientRetrive" method="GET" action="PrescribeTest.jsp" >
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>PatientId</td>
                        <td>:</td>
                        <td><input type="text" name="pid" value="" size="12" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="submit" value="GetDetails" name="getDetails" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
