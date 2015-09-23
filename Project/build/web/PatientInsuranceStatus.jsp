<%-- 
    Document   : PatientInsuranceStatus
    Created on : Mar 14, 2012, 10:48:42 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientInsuranceDetails</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="PatientInsuraceDetails" method="POST">
            <table align="center" border="0" cellspacing="2">
                <tbody>
                <tr>
                    <td> PatientID </td>
                    <td> : </td>
                    <td> <input type="text" name="pid" value="" size="20" /> </td>
                </tr>
                <tr>
                    <td> </td>
                    <td align="center"> <input type="submit" name="gis" value="GetInsuraceStatus" onclick="window.alert('Retriving Insurance Status')"/> </td>
                    <td> </td>
                </tr>
            </table>
            &nbsp;
            &nbsp;
            <table align="center" border="0">
                <tr>
                    <td> PatientID </td>
                    <td> : </td>
                    <td> <input type="text" name="pid" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td> PatientName </td>
                    <td> : </td>
                    <td> <input type="text" name="pname" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td> ProviderName </td>
                    <td> : </td>
                    <td> <input type="text" name="ipname" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td> InsuranceID </td>
                    <td> : </td>
                    <td> <input type="text" name="iid" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td> InsuranceStatus </td>
                    <td> : </td>
                    <td> <input type="text" name="is" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td> ClaimedAmount </td>
                    <td> : </td>
                    <td> <input type="text" name="camt" value="" size="10" /> </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td align="center"> <input type="submit" value="OK" name="ok" /> </td>
                    <td>  </td>
                </tr>
            </table>
        </form>
    </body>
</html>
