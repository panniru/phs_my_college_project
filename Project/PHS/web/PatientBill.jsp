<%-- 
    Document   : PatientBill
    Created on : Jan 1, 2010, 12:13:27 AM
    Author     : srikanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <%
            String patientId=session.getAttribute("UID").toString();
             String role=session.getAttribute("Role").toString();
            if(!role.equalsIgnoreCase("Patient"))
            {
             patientId=request.getParameter("patientId");
                }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientBill</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    <script src="jquery-1.7.2.min.js"></script>
        <script type="text/javascript">
            function showDetails()
            {
                var patientId=<%=patientId %>;
               <%-- $("#bill").show();--%>
                var url='Bill?patientId='+patientId+"&isBillDetail="+true;
                $.post(url, function(data){
                    $("#leftDiv").toggle(500);
                    $("#leftDiv").html(data);
                    $("#tdDetail").bgcolor="#7cceee";
                });

            }
            function showTransaction()
            {
                var patientId=<%=patientId %>;
                var url='Bill?patientId='+patientId+"&isTransaction="+true;
                $.post(url, function(data){
                     $("#centerDiv").toggle(500);
                    $("#centerDiv").html(data);
                });

            }
            function showInsurance()
            {
                var patientId=<%=patientId %>;
                <%--$("#bill").hide();--%>
                var url='Bill?patientId='+patientId+"&isInsurance="+true;
                $.post(url, function(data){
                    $("#rightDiv").html(data);
                });

            }

        </script>
    </head>
    <body>
        
        <table align="top-center">
            <tr><td id="tdDetail"><a href="#" onclick="showDetails()">View Bill Details</a></td><td/>
            
            <td><a href="#" onclick="showInsurance()">View Insurance Details</a></td></tr>
        </table>
        <div id="bill">
        <table>
            <tr><td><div id="leftDiv" ></div></td></tr></table>
        <div id="centerDiv" style="width: 100%"></div>
        

        <div id="rightDiv" align="right"></div>
        </div>
    </body>
</html>
