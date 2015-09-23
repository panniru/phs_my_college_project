<%-- 
    Document   : forwardToAssign
    Created on : Mar 31, 2012, 12:44:40 PM
    Author     : Anil
--%>

<%@include file="PatientPrimaryHealthDetails.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forwardToAssign</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <% String role=(String)session.getAttribute("Role");%>
    <%--int patientId=Integer.parseInt(request.getParameter("patientId").toString());--%>
       <%--String pname=request.getParameter("pname").toString();--%>
    <body>
        <table align="center">
            <tbody>
                <tr><% if(role.equalsIgnoreCase("DepartmentAdmin")){ %>
                    <td>
                        <a href="AssigningDoctor.jsp?patientId=<%=pid%>&pname=<%=pname%>">AssignDoctor</a>
                    </td>
                    <%} else if(role.equalsIgnoreCase("Doctor")){%>
                    <td>
                        <a href="PrescribeTest.jsp">PrescribeTest</a>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="medicine.jsp">Prescribe Medicine</a></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="WriteComment.jsp">NextVisit&WriteComments</a></td>
                    </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
