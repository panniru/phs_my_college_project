<%-- 
    Document   : PatientHealthHistory
    Created on : Jan 1, 2010, 1:30:34 AM
    Author     : srikanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
    int patientId=Integer.parseInt(session.getAttribute("UID").toString());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientHealthHistory Page</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    <script src="jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function()
    {
        var url='HealthHistory?patientId='+<%=patientId%>;
        $.get(url, function(data){
                   $("#basicView").html(data); });
    });
    function showHistory(date,patientId)
    {
        var url='ShowDetailHistory?patientId='+patientId+'&date='+date;
       <%--alert($("#"+date).css('display'));--%>
        if($("#"+date).css('display')!='none')
            {
               
                $("#"+date).hide();
                <%--$("#"+date).toggle()--%>
                $("#img"+date).attr('src','images/plus.jpg')
            }
           else{
        $.get(url, function(data){
                   $("#"+date).html(data);
                   $("#img"+date).attr('src','images/minus.jpg');
                   $("#"+date).toggle(500);
                   $("#"+date).show();
                   
               });
           }

    
    }

    </script>
    </head>
    <body>
        <div id="basicView" align="center"></div>
    </body>
</html>
