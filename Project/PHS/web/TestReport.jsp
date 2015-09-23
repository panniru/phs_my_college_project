<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"s
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Report</title>
        <%--<link href="PHScss.css" rel="stylesheet" type="text/css" />--%>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script src="jquery-1.7.2.min.js"></script>
        <script type="text/javascript">
            function getTestsOnDates()
            {
                var patientId=$("#patientId").val();
                var url='ShowTestsDates?patientId='+patientId;
                $.get(url, function(data){
                    $("#showTests").html(data);

                })
            }
           function  showTests(patientId,date)
            {
                <%--alert('Hello World:'+$("#patientId").val());--%>
                <%--var url="/Comments?patientId="+$("#patientId").val();--%>
               <%-- var patientId=$("#patientId").val();
                var date=$("#date").val();--%>
                var url='TestsToDisplay?patientId='+patientId+'&date='+date;
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
            function showTestReport(patientId,testId,date)
            {
               <%--alert('Hello World:'+$("#patientId").val());--%>
                        if($("#"+testId).css('display')!='none')
            {
                <%--alert('in if condition hides');--%>

                $("#"+testId).hide();
                $("#img"+testId).attr('src','images/plus.jpg');
            }
            else
                {
                var url='DetailReport?patientId='+patientId+'&testId='+testId+'&date='+date;
                $.get(url, function(data){
                    $("#"+testId).toggle(500);
                    $("#"+testId).show();
                    $("#"+testId).html(data);
                     $("#img"+testId).attr('src','images/minus.jpg')

            });
                }
            }
            <%--function hideReport(testId)
            {
                alert('hideReport:'+testId);
                $("#"+testId).hide();
                if($("#"+testId).css('display')!='none')
            {

                $("#"+date).hide();
                $("#"+date).toggle()
                $("#img"+testId).attr('src','images/minus.jpg')
            }
            }--%>

        </script>
    </head>
    <body>
        <%--<form name="TestReport" method="POST" action="ViewTestReport.jsp" target="doctorframe">--%>
        <table border="0" align="center" >
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" id="patientId" name="patientId" size="10" /></td>
                      <%--<td >Date</td>
                      <td>:</td>
                      <td><input type="text" id="date" name="patientId" size="10" />(dd/mm/yyyy)</td>--%>
                      <td><input type="button" value="ShowReport" name="Report" onclick="getTestsOnDates()" class="phs_Button"/></td>
                  </tr>
                 
               </tbody>
          </table>
        

                      <div id="showTests" align="left"></div>
        <%--</form>--%>
        
<%--session.setAttribute("patientId",request.getParameter("patientId"));--%>
        <%--<jsp:useBean id="patientTestReport" class="PHS.TestReport" scope="page">
           <jsp:setProperty name="patientTestReport" property="patientId" param="patientId"/>
           <% %>
        </jsp:useBean>--%>

    </body>
</html>
