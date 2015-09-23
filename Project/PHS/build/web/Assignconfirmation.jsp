<%-- 
    Document   : Assignconfirmation
    Created on : Mar 31, 2012, 9:28:58 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome: <%= session.getAttribute("Username")%></font></td>
                  <td align="right"><font size="3" color="red"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
        </table>
       <%   int doctorId = Integer.parseInt(request.getParameter("doctorId"));
            int patientId=(Integer)session.getAttribute("patientId");
            
                %>
            <jsp:useBean id="assignDoctor" class="PHS.Doctor" scope="page">
                <jsp:setProperty name="assignDoctor" property="doctorId" value="<%=doctorId%>"/>
            <jsp:setProperty name="assignDoctor" property="patientId" value="<%=patientId%>"/>
            <%
                int updatedRows=assignDoctor.updatePatient();
                if(updatedRows ==1)
                    {%>
                    <p align="center"><%=patientId%> is Assigned Successfully With DoctorId <%=doctorId%> is assigned </p>
                    <%}
                else{%>
                <jsp:forward page="errorpage.jsp" ></jsp:forward>
                   <% }

           %>
             </jsp:useBean>
    </body>
</html>
