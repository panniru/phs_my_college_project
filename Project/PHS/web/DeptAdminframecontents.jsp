  <%-- 
    Document   : DeptAdminframecontents
    Created on : Mar 14, 2012, 8:49:54 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DeptAdminFrameContents</title>
   <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <% String role=session.getAttribute("Role").toString();
       int uid=Integer.parseInt(session.getAttribute("UID").toString());
    %>
<body>
    <jsp:useBean id="totalNum" class="PHS.PendingPatient" scope="page">
        <jsp:setProperty name="totalNum" property="role" value="<%=role%>"/>
        <jsp:setProperty name="totalNum" property="doctorId" value="<%=uid%>"/>
        <% totalNum.setTotalNum();%>

    
<table>
<tr>
    <td><a href ="PendingPatient.jsp" target="deptadminframe">Pending Patients( <jsp:getProperty name="totalNum" property="totalNum"></jsp:getProperty></jsp:useBean> )</a></td>
</tr>

<tr>
<!--    <td><a href ="AssignDoctor.jsp" target="deptadminframe">Assign Doctor</a></td>-->

</tr>

<tr>
<!--    <td><a href ="AssignAccomodation.jsp" target="deptadminframe">Assign Accomodation</a></td>-->
</tr>


<tr>
<!--<td><a href ="DoctorAvailability.jsp" target="deptadminframe">Doctor Availability</a></td>-->
</tr>

</table>
</body>
</html>
