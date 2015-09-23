
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newPatientInsert</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <%
        try{
            String pName=request.getParameter("PatientName");
            String fName=request.getParameter("FatherName");
            int age=Integer.parseInt(request.getParameter("Age"));
            String gender =request.getParameter("Gender");
            String mstatus=request.getParameter("MaritualStatus");
            double mbileNO=Double.parseDouble(request.getParameter("MobileNumber"));
            String email=request.getParameter("Email");
            String address=request.getParameter("Address");
            String symptoms=request.getParameter("Symptoms");
            String condition=request.getParameter("Condition");
            out.println("new Patient Insert");%>
            <%-- Patient p=new Patient(1234,pName,fName,age,gender,mstatus,mbileNO,email,address,symptoms,condition); --%>

            <%
            String url="jdbc:db2://localhOst:50000/PHSYSTEM";
            String driver="com.ibm.db2.jcc.DB2Driver";
            String user="db2admin";
            String pwd="db2admin";
            ResultSet rs;
            PreparedStatement pstmt;
            Connection conn;
            Class.forName(driver);
            conn=DriverManager.getConnection(url,user,pwd);
            out.println("connection:"+conn);
            String insert1="INSERT INTO PATIENTPERSONAL (PatientId,PName,Age,Gender,MaritualStatus,MbileNO,EmailID,Address)" +
                " VALUES(?,?,?,?,?,?,?,?,?)";
            String insert2="INSERT INTO PATIENTTREATMENTDETAILS (PatientId,Symptoms,Condition) VALUES(?,?,?)";
            pstmt=conn.prepareStatement(insert1);
            pstmt.setInt(1, 1234);
            pstmt.setString(2,pName);
            pstmt.setString(3,fName);
            pstmt.setInt(4,age);
            pstmt.setString(5,gender);
            pstmt.setString(6,mstatus);
            pstmt.setDouble(7,mbileNO);
            pstmt.setString(8,email);
            pstmt.setString(9,address);
            pstmt=conn.prepareStatement(insert2);
            pstmt.setInt(1, 1234);
            pstmt.setString(2,symptoms);
            pstmt.setString(3,condition);
            conn.close();
        }
        catch(Exception e)
                {
            e.printStackTrace();
            }
        %>
    </body>
</html>
