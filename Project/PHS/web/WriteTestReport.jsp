<%-- 
    Document   : WriteTestReport
    Created on : Mar 30, 2012, 7:42:25 PM
    Author     : Rajendar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WriteTestReport</title>
       <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        
            
            <% int patientId=(Integer.parseInt(request.getParameter("patientId").toString()));
               int testId=(Integer.parseInt(request.getParameter("testId").toString()));
               String testName=request.getParameter("testName"); %>
   
        
               <form name="PostTestReport" action="TestReport" method="GET">
        
        <table align="center" border="0" width="800">
            <tbody>
                <tr>
                    <td>PatientID</td>
                    <td>:</td>
                    <td><input type="text" name="patientId" value="<%=patientId%>" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>TestID</td>
                    <td>:</td>
                    <td><input type="text" name="testId" value="<%=testId%>" size="12" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>TestName</td>
                    <td>:</td>
                    <td><input type="text" name="testName" value="<%=testName%>" size="12" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>Factor</td>
                    <td>:</td>
                    <td><input type="text" name="factor" value="" size="12" /></td>
                </tr>
                <tr>
                    <td>FactorValue</td>
                    <td>:</td>
                    <td><input type="text" name="factorValue" value="" size="12" /></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>:</td>
                    <td><input type="textarea" name="comments" value="" size="30" /></td>
                </tr>
                <tr>
                    <td>Is Test Over</td>
                    <td>:</td>
                    <td><select name="isTestOver">
                            <option>Yes</option>
                            <option selected>No</option>
                        </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="right"><input type="submit" value="Add Test Report" name="AddTestReport" class="phs_Button" <%--onclick="<% patientTestReport.writeTestReport(); %>"--%> /></td>
                    <td></td>
                </tr>
              </tbody>
           </table>
      </form>
                   <%-- <% if (request.getParameter("factor") != null){%>
                    <jsp:useBean id="writeReport" class="PHS.TestReport" scope="page">
                    <jsp:setProperty name="writeReport" property="patientId" value="<%= patientId%>"/>
                    <jsp:setProperty name="writeReport" property="testId" value="<%= testId%>" />
                    <jsp:setProperty name="writeReport" property="factor" param="factor" />
                    <jsp:setProperty name="writeReport" property="factorValue" param="factorValue" />
                    <jsp:setProperty name="writeReport" property="comments" param="comments" />
                    <jsp:setProperty name="writeReport" property="isTestOver" param="isTestOver" />

                    <% writeReport.writeTestReport(); }%>
                               
        </jsp:useBean>--%>
     </body>
</html>
        
        
   
