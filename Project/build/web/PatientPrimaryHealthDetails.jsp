<%-- 
    Document   : PatientPrimaryHealthDetails
    Created on : Mar 28, 2012, 9:45:56 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientPrimaryHealthDetails</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script language="Javascript">
            function f(){
                alert("f");
                document.primaryHealth.HelthHistory.value="althHistory";



            }
        </script>
        </head>
    <body>
          <%int pid=Integer.parseInt(request.getParameter("pid").toString());
        
            session.setAttribute("patientId",pid);
          %>
        <jsp:useBean id="pendingPatient" class="PHS.PendingPatient" scope="page"/>
            <jsp:setProperty name="pendingPatient" property="patientId" value="<%=pid%>"/>
            
        <%
                pendingPatient.setPatientDetails();
            %>
            <form name="primaryHealth"action="" method="POST">
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>PatientID</td>
                        <td>:</td>
                        <td><input type="text" name="patientId" value="<%= pid%>" size="12" readonly="readonly"/></td>
                        <td>Patient Name</td>
                        <td>:</td>
                        <td><input type="text" name="pname" value="<% String pname= pendingPatient.getPname(); out.println(pname);%>" size="40" readonly="readonly"/></td>
                    </tr>
                
                
                    <tr>
                        <td>Age</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="pendingPatient" property="age"/>" size="5" readonly="readonly"/></td>
                        <td>Gender</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="pendingPatient" property="gender"/>" size="3" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>symptoms</td>
                        <td>:</td>
                        <td><textarea name="" rows="4" cols="20"  readonly="readonly" ><jsp:getProperty name="pendingPatient" property="symptoms"/>
                            </textarea></td>
                        <td>Condition</td>
                        <td>:</td>
                        <td><input type="text" name="" value="<jsp:getProperty name="pendingPatient" property="condition"/>" size="30" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>Health History</td>
                        <td>:</td>
                        <td><textarea name="HealthHistory" cols="15" rows="8"><jsp:getProperty name="pendingPatient" property="healthHistory"/></textarea></td>
                    </tr>
                </tbody>
            </table>
            </form>
   </body>
</html>
