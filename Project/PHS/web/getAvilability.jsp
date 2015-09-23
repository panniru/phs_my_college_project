<%-- 
    Document   : getAvilability
    Created on : Mar 21, 2012, 7:04:40 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>getAvialbility</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%
        String dept=request.getParameter("department");
        String doctor=request.getParameter("dname");
        if( dept=="null" || doctor=="null")
            {
              out.println("plese provide compleate details...!!");
            }
       
        String url="jdbc:db2://localhOst:50000/PHSYSTEM";
        String query="SELECT day,startTime,Endtime " +
                "FROM Doctor d,Department dept, WorkTimings w " +
                "WHERE d.deptno=dept.deptno AND "+
                "d.doctorId=w.UID AND " +
                "w.FLAG= 'YES' AND "+
                "dept.Dname="+"'"+dept+"'"+ " AND d.DoctorName="+"'"+doctor+"'"
                ;
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        Connection con=DriverManager.getConnection(url,"db2admin","db2admin");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(query);%>
        <table align="center" border="0">
            <thead>
            <th align="center">Day</th>
            <th align="center">StartTime</th>
            <th align="center">EndTime</th>
            </thead>
            <%
            try{
            while(rs.next()){ %>
            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(3)%></td>
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
    </body>
</html>
