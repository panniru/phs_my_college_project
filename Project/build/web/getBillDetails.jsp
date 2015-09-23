<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" import="java.lang.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get BillDetails</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <center><h3 color="#660000">Patient Bill Detais</h3></center>
        <%
            int patientID=Integer.parseInt(request.getParameter("patientID"));
        %>
            <%
            String url="jdbc:db2://localhOst:50000/PHSYSTEM";
            String driver="com.ibm.db2.jcc.DB2Driver";
            Connection conn=null;
            Statement stmt=null;
            ResultSet rs;
            int total=0;
            int adv=0,amount=0;
            String query=null;
            try{
                      Class.forName(driver);
                        conn=DriverManager.getConnection(url,"db2admin","db2admin");
                        stmt=conn.createStatement();
                        query="SELECT Pname FROM PatientPersonal WHERE PatientId="+patientID;
            rs=stmt.executeQuery(query);
            while(rs.next())
            {%>
            <table align="center" border="0">
                <tr>
                    <td>PatientID</td>
                    <td>:</td>
                    <td><input type="text" name="PatientId" value="<%=patientID%>" size="12" /></td>
                    <td>Name</td>
                    <td>:</td>
                    <td><input type="text" name="PName" value="<%= rs.getString("Pname")%>" size="30" /></td>
                </tr>
            </table>
            <table align="center" border="1">
                <thead>
                    <tr>
                <th>Perticular</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Claim</th></tr>
                </thead>
                <% }
                       query="SELECT Details,Amount,BillDate,Claim FROM BillDetails WHERE PatientID="+patientID;
                       rs=stmt.executeQuery(query);
                               while(rs.next())
                    {%>
                    <tr>
                        <td><%= rs.getString("Details")%></td>
                        <td><% amount=rs.getInt("Amount");
                                total+=amount;
                                out.println(amount);%>
                            </td>
                        <td><%= rs.getDate("BillDate")%></td>
                        <td><%= rs.getString("claim")%></td>
                    </tr>
                    <% }
                    %>
                </table>
                <table align="center" border="0">
                    <thead>
                        <tr>
                            <th>Bill Number</th>
                            <th>Bill Date</th>
                            <th>Payement Mode</th>
                            <th>Amount Paid</th>
                            <th>Claim Amount</th>
                        </tr>
                    </thead>
                    <%
                        query="SELECT BillNO,BillDate,PAYMENTMODE,ADVPAID,COALESCE(CLAIMAMOUNT,0) AS CLAIMAMOUNT FROM Bill WHERE PatientId="+patientID;
                        rs=stmt.executeQuery(query);
                        while(rs.next())
                            {
                    %>
                    <tr>
                        <td><input type="text" name="BillNumber" value="<%=rs.getInt("BillNo")%>" readonly="readonly" /></td>
                        <td><input type="text" name="BillDate" value="<%=rs.getDate("BillDate")%>" readonly="readonly" /></td>
                        <td><input type="text" name="PaymentMode" value="<%=rs.getString("PAYMENTMODE")%>" readonly="readonly" /></td>
                        <td><input type="text" name="AdvPaid" value="<% int paid=rs.getInt("ADVPAID");
                                                                          adv+=paid;
                                                                          out.println(paid);%>" readonly="readonly" /></td>
                        <td><input type="text" name="ClaimAmount" value="<% int claimed=rs.getInt("CLAIMAMOUNT");
                                                                           adv+=claimed;
                                                                           out.println(claimed);%>" readonly="readonly" /></td>
                    </tr><% } %>
                </table>
                    <table align="center" border="0">
                    <tr>
                        <td>Total</td>
                        <td>:</td>
                        <td><input type="text" name="total" value="<%=total%>" readonly="readonly" /></td>
                        <td>Advance Paid</td>
                        <td>:</td>
                        <td><input type="text" name="ADVPAID" value="<%=adv%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Due</td>
                        <td>:</td>
                        <td><input type="text" name="Due" value="<%=(total-adv)%>" readonly="readonly" /></td>
                    </tr>
                </table>
             <% 
                   }     catch(SQLException e)
                                {
                                    e.printStackTrace();
                                    }
            %>

    </body>
</html>
