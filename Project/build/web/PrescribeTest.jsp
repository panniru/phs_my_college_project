
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PresribeTest</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%--<%=session.getAttribute("patientId")
        %>--%>
        
        <jsp:useBean id="testList" class="PHS.Test" scope="request"/>
            <% ArrayList tests=new ArrayList();
               tests=testList.setTestsList();
               Iterator testIter=tests.iterator();
            %>
            <form action="TestPrescribed.jsp" method="GET">
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>Test Name</td>
                        <td>:</td>
                        <td><select name="testName">
                                <% while(testIter.hasNext()){%>
                                <option><%= testIter.next()%></option><%}%>
                                </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add" name="add" class="phs_Button"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            </form>
        
    </body>
</html>
