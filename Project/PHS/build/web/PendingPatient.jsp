<%-- 
    Document   : PendingPatient
    Created on : Mar 25, 2012, 11:23:28 PM
    Author     : Anil
--%>
<%@page import="java.util.*" errorPage="errorpage.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pending Patient</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <% String role=session.getAttribute("Role").toString();
       int uid=Integer.parseInt(session.getAttribute("UID").toString());
    %>
    <body>
        <p><big>Pending Patients List:</big></p>
       <jsp:useBean id="pendingPatient" class="PHS.PendingPatient" scope="page">
           <jsp:setProperty name="pendingPatient" property="role" value="<%=role%>"/>
           <jsp:setProperty name="pendingPatient" property="doctorId" value="<%=uid%>"/>
            <% pendingPatient.setPendingPatients();
               ArrayList patientIdList=new ArrayList();
               patientIdList=pendingPatient.getPatientIDList();
               ArrayList pnameList=new ArrayList();
               pnameList=pendingPatient.getPnameList();
               ArrayList status=new ArrayList();
               status=pendingPatient.getstatus();
               Iterator pidIter=patientIdList.iterator();
               Iterator nameIter=pnameList.iterator();
               Iterator statusIter=status.iterator();        
               while(pidIter.hasNext())
                   {
            %>
            <table align="center" border="1" width="100%">
                <tr>
                    <td>  <% int i=Integer.parseInt(pidIter.next().toString()); %> <a href="forwardToAssign.jsp?pid=<%= i %>"  >  <%= i %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.print(nameIter.next());%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% out.print(statusIter.next());%>
                    </a>
                    </td>

                </tr>
            </table>
                            <% }
                            %></jsp:useBean>
        </body>
        <%--<a href="PatientPrimaryHealthDetails.jsp"> </a>--%>
        <%--session.setAttribute("pids",patientIdList );--%>
</html>
