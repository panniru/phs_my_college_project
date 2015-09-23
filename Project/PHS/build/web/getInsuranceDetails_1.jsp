<%-- 
    Document   : getInsuranceDetails_1
    Created on : Mar 31, 2012, 11:50:16 PM
    Author     : PRATYUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>getInsuranceDetails</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <center><table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome: <%= session.getAttribute("Username")%></font></td>
                  <td align="right"><font size="3" color="red"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
        </table>
        <form action="getInsuranceDetails_1.jsp" method="get">
            <table algin="center">
               
                <tr>
                    <td>PatientId</td>
                    <td><input type="text" name="patientId" value=""></td>
                    <td><input type="submit" name="getInsuranceDetails" value="Get Insurance Details"></td>
                </tr>

            </table>
             </form>
       <%
        if (request.getParameter("patientId")!=null){
 %>                <jsp:useBean id="detailsOfInsurance" class="PHS.Insurance" scope="page">
                    <jsp:setProperty name="detailsOfInsurance" property="patientId" param="patientId"/>

                    <%
                   detailsOfInsurance.getInsuranceDetails();
                    %>
                    <form name="insuranceProvider" method="get" action="getInsuranceDetails_1.jsp" >
                        <table align="center" border="0">
                <tbody>
                    <tr>
                        <td>PatientId</td>
                        <td><input type="text" name="patientId" value="<jsp:getProperty name="detailsOfInsurance" property="patientId" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Patient Name</td>
                        <td><input type="text" name="pname" value="<jsp:getProperty name="detailsOfInsurance" property="pname" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Provider</td>
                        <td><input type="text" name="provider" value="<jsp:getProperty name="detailsOfInsurance" property="provider" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>InsuranceId</td>
                        <td><input type="text" name="insuranceId" value="<jsp:getProperty name="detailsOfInsurance" property="insuranceId" />" size="12" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>Claim Amount</td>
                        <td><input type="text" name="claimAmount" value="<jsp:getProperty name="detailsOfInsurance" property="claimAmount" />" size="12" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <td>Claim Status</td>
                        <td><input type="text" name="claimStatus" value="<jsp:getProperty name="detailsOfInsurance" property="claimStatus" />" size="12" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="ok" value="ok"></td>
                    </tr>
                        </table>
                            </jsp:useBean>

                           </form>
                   <%  } %>
        </center>
        </body>
                           </html>


