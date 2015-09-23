<%-- 
    Document   : BillDetails
    Created on : 31 Mar, 2012, 10:59:25 PM
    Author     : Kranthi
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <title>Bill Details</title>
    </head>
    <body>
        
        <% int patientId=Integer.parseInt(request.getParameter("patientId"));
           session.setAttribute("patientId", patientId);
        %>
        <jsp:useBean id="bill" class="PHS.BillDetails" scope="page">
            <jsp:setProperty name="bill" property="pid" value="<%=patientId%>"/>
        <% String pname= bill.getPatientName();
        %>
        <form align="center">
            <table align="center" id="phs_table">
                <tr>
                    <td>PatientId</td>
                    <td>:</td>
                    <td><input type="text" value="<%=patientId%>"></td>
                <tr>
                    <td>Patient's Name</td>
                    <td>:</td>
                    <td><input type="text" value="<%=pname%>"></td>
                </tr>
                
            </table>
        </form>
        <table align="center" border="" width="" id="phs_table">
            <thead>
                <tr><th> Details </th>
                    <th> Bill Date</th>
                    <th> Amount</th>
                    <th> Claim</th></tr>
            </thead>
        <% bill.setBillDetails();
           int total1=0;
          ArrayList details= new ArrayList();
          details=bill.getDetails();
          ArrayList amt=new ArrayList();
          amt=bill.getAmount();
          ArrayList bdate=new ArrayList();
          bdate=bill.getBillDate();
          ArrayList claim=new ArrayList();
          claim=bill.getClaim();
          Iterator detItor=details.iterator();
          Iterator amtItor=amt.iterator();
          Iterator bdateItor=bdate.iterator();
          Iterator claimItor=claim.iterator();
          int totaladv=0, totalclaimed=0,total2=0, due=0;
          ArrayList bno= new ArrayList();
          bno=bill.getBillNo();
          ArrayList bidate=new ArrayList();
          bidate=bill.getBillDate();
          ArrayList pmode=new ArrayList();
          pmode=bill.getPaymentMode();
          ArrayList advpaid=new ArrayList();
          advpaid=bill.getAdvPaid();
          ArrayList claimedamount=new ArrayList();
          claimedamount=bill.getClaimedAmount();
          Iterator bnoItor=bno.iterator();
          Iterator pmodeItor=pmode.iterator();
          Iterator advItor=advpaid.iterator();
          Iterator claimedamountItor=claimedamount.iterator();
          Iterator billdateItor=bidate.iterator();
          while(detItor.hasNext())
          {
        %>
       <tbody>
              <tr>
                <td><%= detItor.next()%></td>
                <td><%= bdateItor.next()%></td>
                <td><% int amount=Integer.parseInt(amtItor.next().toString());
                        total1+=amount;
                        out.println(amount);%></td>
                <td><%= claimItor.next()%></td>
              </tr>
       <%  } %>
            <tr>
                <td colspan="2"> Total to be paid:</td>
                <td><% out.println(total1);%></td>
            </tr>
       </tbody>
    </table>
    <table align="center" border="" width="" id="phs_table">
            <thead>
                <tr>
                    <th>Bill NO. </th>
                    <th>Bill Date</th>
                    <th>Payment Mode</th>
                    <th>Advance Paid</th>
                    <th>Claimed Amount</th>
                </tr>
            </thead>
     <%while(bnoItor.hasNext())
        { %>
        <tbody>
            <tr>
                <td> <%= bnoItor.next()%> </td>
                <td> <%= billdateItor.next()%> </td>
                <td> <%= pmodeItor.next()%> </td>
                <td> <% int temp1=Integer.parseInt(advItor.next().toString());
                        totaladv+=temp1;
                        out.println(temp1);%> </td>
                <td> <% int  temp2=Integer.parseInt(claimedamountItor.next().toString());
                        totalclaimed+=temp2;
                        out.println(temp2);%> </td>
            </tr>
    <% } %>
    <tr>
        <td colspan="3">Total</td>
        <td><%out.println(totaladv);%></td>
        <td><%out.println(totalclaimed);%></td>
    </tr>
    </tbody>
    </table>
        <form align="center" method="get" action="PayAmount.jsp">
        <% total2=totaladv+totalclaimed;%>
        <table align="center" id="phs_table">
            <tr>
                <td>Total Paid</td><td> :</td><td> <input type="text" value=<%=total2%> readonly><br></td>
            </tr>
        <%due=total1-total2;%>
        <tr>
            <td>Total Due</td><td>:</td><td> <input type="text" value=<%=due%>> </td>
        </tr>
        <tr>
            <td><input type="submit" value="Pay Amount" class="phs_Button" /></td>
        </tr>
        </table>
        </form>
        </jsp:useBean>
               
    </body>     