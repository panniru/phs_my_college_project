<%-- 
    Document   : OldPatientRegistration
    Created on : Mar 14, 2012, 4:41:39 PM
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
        <% double uid=Double.parseDouble(request.getParameter("uniqNumber"));

            %>
        
       <jsp:useBean id="oldPatient" class="PHS.OldPatientDetails" scope="page">
           <jsp:setProperty name="oldPatient" property="uniqueNumber" value="<%=uid%>"/>

                <% oldPatient.getOldPatientDetails(); %>
                <form name="OldPatientRegistration" method="get" action="addstatusDetails.jsp" >
                        <table align="center" border="0">
                <tbody>
                     <tr>
                        <td>Patient Id</td>
                        <td><input type="text" name="patientId" value="<jsp:getProperty name="oldPatient" property="patientId" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Patient Name</td>
                        <td><input type="text" name="pname" value="<jsp:getProperty name="oldPatient" property="pName" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Father Name</td>
                        <td><input type="text" name="fName" value="<jsp:getProperty name="oldPatient" property="fName" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Age</td>
                        <td><input type="text" name="age" value="<jsp:getProperty name="oldPatient" property="age" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="text" name="gender" value="<jsp:getProperty name="oldPatient" property="gender" />" size="12" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <td>PhoneNumber</td>
                        <td><input type="text" name="mNumber" value="<jsp:getProperty name="oldPatient" property="mNumber" />" size="12" readonly="readonly"></td>
                    </tr>

                    <tr>
                        <td>Maritual Status</td>
                        <td><input type="text" name="maritualStatus" value="<jsp:getProperty name="oldPatient" property="maritualStatus" />" size="12" readonly="readonly"></td>
                    </tr>
                     <tr>
                        <td>E-mail Id</td>
                        <td><input type="text" name="mailId" value="<jsp:getProperty name="oldPatient" property="mailId" />" size="12" readonly="readonly"></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td><input type="text" name="adress" value="<jsp:getProperty name="oldPatient" property="adress" />" size="12" readonly="readonly"></td>
                    </tr>
                    
                <%--<tr>
                    <td>status:&nbsp;&nbsp;<input type="text" name="condition" ></td>
                    </tr>
                    <tr>
                        <td>symptoms &nbsp;&nbsp;<input type="text" name="symptoms" ></td>
                    </tr>
                    <tr><td>health history: &nbsp;&nbsp;<input type="text" name="healthhistory" ></td></tr>
                     <tr>
                        <td><input type="submit" name="ok" value="add details" ></td>
                    </tr>--%>
                        </table>


                           </form>
                    </jsp:useBean>
    </body>
        
</html>
