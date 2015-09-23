
<%-- 
    Document   : AssignDoctor
    Created on : Mar 29, 2012, 8:59:57 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="PatientPrimaryHealthDetails.jsp" %>--%>
<%@page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AssignDoctor</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
       <%-- <table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome: <%= session.getAttribute("Username")%></font></td>
                  <td align="right"><font size="3" color="red"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
        </table>--%>
        <form action="" method="GET">
        <table align="center">
            <tr>
                <td align="left">
                    <u><big><i>Assign Doctor</i></big></u>
                </td>
            </tr>
            <tr>
                <td>Select Department</td>
                <td>:</td>
                <td><select name="deptName">
                        <option>CORDIALOGY</option>
                        <option>Dermotology</option>
                        <option>Neuralogy</option>
                        <option>Dentist</option>
                        <option>Ortho</option>
                    </select></td>
                    <td>
                        <input type="submit" value="getAvailableDoctor" name="getAvailableDoctor" class="phs_Button"/>
                    </td>
                    </tr>
        </table>
                
            <% String s=request.getParameter("deptName");%>
            <%out.println("DepartMent selected is: "+s);%>
            <% if (  s !=null) {
            %>
            <jsp:useBean id="doctorList" class="PHS.Doctor" scope="page">
                <jsp:setProperty name="doctorList" property="deptName" param="deptName"/>
            <%
                doctorList.setAvailableDoctors();
                ArrayList idList=new ArrayList();
                ArrayList doctorNames=new ArrayList();
                ArrayList startTime=new ArrayList();
                ArrayList endTime=new ArrayList();
                doctorNames=doctorList.getNameList();
                startTime=doctorList.getStartTime();
                endTime=doctorList.getendTime();
                idList=doctorList.getIdList();
                Iterator idIter=idList.iterator();
                Iterator nameIter=doctorNames.iterator();
                Iterator sTimeIter=startTime.iterator();
                Iterator eTimeIter=endTime.iterator();
            %>
                </form>
                <form method="GET" action="Assignconfirmation.jsp">
               <table align="center" border="1" width="100%">
                <thead>
                    <tr>
                        <th>DoctorID</th>
                        <th>DoctorName</th>
                        <th>StartTime</th>
                        <th>endTime</th>
                        <th>Assign</th>
                    </tr>
                </thead>
                 <tbody>
            <%
                    
                 while(idIter.hasNext())
                    {
            %>
            
               
                    <tr>
                        <td><% int did=(Integer)idIter.next();%><%=did%></td>
                        <td><%=nameIter.next()%></td>
                        <td><%=sTimeIter.next()%></td>
                        <td><%=eTimeIter.next()%></td>
                        <td><input type="radio" name="doctorId" value="<%=did%>" /></td>
                    </tr>
                
                        <% }
                        %>
                        </tbody>
                                </table>
                 </jsp:useBean>
            
            <table align="center">
                        
                        <tr></tr>
                        <tr>
                            <td><input type="submit" value="Assign" name="Assign" class="phs_Button"/></td>
                            <td><input type="reset" value="Clear" class="phs_Button"/></td>
                        </tr>
                        
            </table>
            </form>
              <% } %>
        </body>
</html>
