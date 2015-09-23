
<%-- 
    Document   : validateLogin
    Created on : Mar 15, 2012, 12:04:50 PM
    Author     : db2admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%><%-- errorPage="errorpage.jsp"--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate Login JSP Page</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <%--<link href="PHScss.css" rel="stylesheet" type="text/css" />--%>
    </head>
    <body>
        <%
        String un=request.getParameter("username");

        String pwd=request.getParameter("password");
        

        %>



        <%

        Class.forName("com.ibm.db2.jcc.DB2Driver");
        Connection con=DriverManager.getConnection("jdbc:db2://localhOst:50000/PHSYSTEM","db2admin","db2admin");
        //out.println("Connection"+con);
        Statement stmt=con.createStatement();
        String username=null;
        String password=null;
        String role=null;
        int uid=0;
        String query="select UserName,Password,Role,UID from db2admin.Login where username="+"'"+un+"'"+" and password="+"'"+pwd+"'";
        System.out.println("query:"+query);
        
        ResultSet rs=stmt.executeQuery(query);
                while(rs.next()){
                    username=rs.getString("username");
                    password=rs.getString("password");
                    role=rs.getString("Role");
                    uid=rs.getInt("UID");
                    }
             out.println(role);
             if(un.equalsIgnoreCase(username) && pwd.equalsIgnoreCase(password))
            {
                 session.setAttribute("Role",role);
                 session.setAttribute("Username",username);
                 session.setAttribute("UID",uid);
                if(role.equalsIgnoreCase("AdmittingClerk"))
                        {%>
                            <jsp:forward page="admittingClerkFrame.jsp"/>
                        <%}
                else if(role.equalsIgnoreCase("DepartmentAdmin"))
                    {%>
                       <jsp:forward page="DepartmentAdmin.jsp"></jsp:forward>
                    <%}
                    else if(role.equalsIgnoreCase("Doctor"))
                            {%>
                            <jsp:forward page="Doctor.jsp"/>
                             <%}
                        else if(role.equalsIgnoreCase("Pharmacist"))
                                {%>
                                    <jsp:forward page="Pharmacist.jsp"/>
                                <%}
                            else if(role.equalsIgnoreCase("Labtechnician"))
                                    {%>
                                        <jsp:forward page="LabTechnician.jsp"/>
                                     <%}
                                else if(role.equalsIgnoreCase("InsuranceProvider"))
                                        {%>
                                            <jsp:forward page="InsuranceProvider.jsp"/>
                                      <% }
                                    else if(role.equalsIgnoreCase("SystemAdmin"))
                                            {%>
                                                <jsp:forward page="SystemAdmin.jsp"/>
                                            <%}
                                       else if(role.equalsIgnoreCase("Patient"))
                                                {%>
                                            <jsp:forward page="PatientCaseSheet.jsp"/>
                                            <%}
                                            else if(role.equalsIgnoreCase("BillingClerk"))
                                                {%>
                                                 <jsp:forward page="BillingClerk.jsp"/>
                                                <%}
                                                    else
                                                         {
                                                        out.println("Please Enter valid Login Details...!");

                                                        }
                                               }
                   %>
        <!--<a href="AdmittingClerk.jsp">click here</a>-->
                <%--out.println("Role dint matched");response.sendRedirect("errorpage.jsp");--%>

      </body>
</html>
