<%-- 
    Document   : PatientMedicineDetails
    Created on : Jan 1, 2010, 12:09:46 AM
    Author     : srikanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%
            String patientId=session.getAttribute("UID").toString();
            String role=session.getAttribute("Role").toString();
            if(!role.equalsIgnoreCase("Patient"))
            {
             patientId=request.getParameter("patientId");
                }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test History</title>
        <%--<link href="PHScss.css" rel="stylesheet" type="text/css" />--%>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script src="jquery-1.7.2.min.js"></script>
        <script type="text/javascript">
             $(document).ready(function()
            {
                var patientId=<%=patientId %>;
                var url='ShowMedicine?patientId='+patientId;
                $.get(url, function(data){
                    $("#showMedicines").html(data);

                })
            });
           function  showMedicines(patientId,date)
            {
                <%--alert('Hello World:'+$("#patientId").val());--%>
                <%--var url="/Comments?patientId="+$("#patientId").val();--%>
               <%-- var patientId=$("#patientId").val();
                var date=$("#date").val();--%>
                var url='ShowMedicine?patientId='+patientId+'&date='+date;
                if($("#"+date).css('display')!='none')
            {
                <%--alert('in if condition hides');--%>

                $("#"+date).hide();
                $("#img"+date).attr('src','images/plus.jpg');
            }
            else{
                $.get(url, function(data){
                    $("#img"+date).attr('src','images/minus.jpg');
                    <%--alert('in else condition show');--%>
                            $("#"+date).toggle(500);
                    $("#"+date).show();
                    $("#"+date).html(data);



                });
            }
                <%--$("#patientId").val();--%>
            }

                    </script>
    </head>
    <body>
        <div id="showMedicines" align="left"></div>
    </body>
</html>
