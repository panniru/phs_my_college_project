<%-- 
    Document   : PaymentConfirmation
    Created on : Apr 5, 2012, 6:05:04 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <title>PaymentConfirmation</title>
        <%
            int advPaid=Integer.parseInt(request.getParameter("advancepaid"));
            String paymode=request.getParameter("paymode");
            int patientId=Integer.parseInt(session.getAttribute("patientId").toString());
        %>
    </head>
    <body>

        <jsp:useBean id="pay" class="PHS.BillDetails" scope="session">
        <jsp:setProperty name="pay" property="advancePaid" value="<%=advPaid%>"/>
         <jsp:setProperty name="pay" property="paymode" value="<%=paymode%>"/>
         <jsp:setProperty name="pay" property="pid" value="<%=patientId%>"/>
        <%
            int rowCount=pay.UpdateAmount();
            if(rowCount!=0)
            {
                out.println("Patient with PatientId: "+patientId+" SuccesFully Creadited With Amount : "+advPaid);
            }
            else
            {
                out.println(" Some Proble Occured :");
            }
            
            %>
        </jsp:useBean>
            <form action="BillDetails.jsp" method="Get">
                <input type="hidden" name="patientId" value="<%=patientId%>" />
                <input type="submit" value="ok" name="ok" class="phs_Button" align="center"/>
            </form>
    </body>
</html>
