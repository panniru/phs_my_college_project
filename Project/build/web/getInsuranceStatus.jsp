
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form action="PatientInsuranceStatus.jsp" method="get">

            <%--<%
        int  pid = Integer.parseInt(request.getParameter("PatientId"));
        %>--%>
        <%
        String url="jdbc:db2://localhOst:50000/PHSYSTEM";
        String query="SELECT i.PatientId,pp.Pname,Provider,InusranceId,ClaimStatus FROM Insurance i,PatientPersonal pp WHERE i.PatientId = pp.PatientId AND i.ClaimStatus = 'NOT ISSUED'";
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        Connection con=DriverManager.getConnection(url,"db2admin","db2admin");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(query);
       %>

       <table align="center" border="1">
            <thead>
            <th align="center">PatientId</th>
            <th align="center">PatientName</th>
            <th align="center">Provider</th>
            <th align="center">InusranceId</th>
            <th align="center">ClaimStatus</th>
            </thead>
       <%
            try{
            while(rs.next()){ %>

            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(3)%></td>
                <td><%= rs.getString(4)%></td>
                <td><%= rs.getString(5)%></td>
            </tr>
            <%
            }
        }
        catch (SQLException e)
                {
            out.println("Exception Occured");
            e.printStackTrace();
           }
        %>

       </table>
        </form>
    </body>
</html>
