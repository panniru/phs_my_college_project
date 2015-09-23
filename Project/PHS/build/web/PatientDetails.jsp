<%-- 
    Document   : PatientDetails
    Created on : Mar 28, 2012, 11:47:31 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientDetails</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
        <script type="text/javasript">
            healthHistory=function()
            {
                document.PatinetDetails.HealthHistory.value="Hello World";
            }
            window.onload=healthHistory();
        </script>
    </head>
    <body>
        <form name="PatientDetails" action="">
        <jsp:useBean id="patientDetails" class="PHS.PendingPatient" scope="page">
            <jsp:setProperty name="patientDetails" property="patientId" param="patientID"/>
            <% patientDetails.setPatientDetails();%>
        <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>PatientID</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="patientDetails" property="patientId"/>" size="12" readonly="readonly"/></td>
                        <td>Patient Name</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="patientDetails" property="pname"/>" size="40" readonly="readonly"/></td>
                    </tr>


                    <tr>
                        <td>Age</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="patientDetails" property="age"/>" size="5" readonly="readonly"/></td>
                        <td>Gender</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="patientDetails" property="gender"/>" size="3" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>symptoms</td>
                        <td>:</td>
                        <td><textarea name="" rows="4" cols="20"  readonly="readonly" >
                            </textarea></td>
                        <td>Condition</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="patientDetails" property="condition"/>" size="30" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>Health History</td>
                        <td>:</td>
                        <td><textarea name="HealthHistory" cols="15" rows="8"></textarea></td>
                    </tr>
                </tbody>
            </table>
            </jsp:useBean>
        </form>
    </body>
</html>
