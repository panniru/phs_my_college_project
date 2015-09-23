<%-- 
    Document   : DoctorAvailability
    Created on : Mar 14, 2012, 8:20:27 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DoctorAvailabity</title>
      <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
       <script src="jquery-1.7.2.min.js"></script>
       <script type="text/javascript">
           function getDoctors()
           {
              
               var dept=$("#deptName").val();
               var url='DoctorAvailability?deptNo='+dept;
                $.get(url, function(data){
                  <%--  alert(data);--%>
                    
                    $("#showDoctor").html(data);
                });

           }
           function showAvailability(doctorId)
           {
               var url='DoctorAvailability?doctorId='+doctorId;
                  if($("#"+doctorId).css('display')!='none')
            {
                <%--alert('in if condition hides');--%>

                $("#"+doctorId).hide();
                $("#img"+doctorId).attr('src','images/plus.jpg');
            }
            else{
                $.get(url, function(data){
                    $("#img"+doctorId).attr('src','images/minus.jpg');
                    <%--alert('in else condition show');--%>
                    $("#"+doctorId).toggle(500);
                    $("#"+doctorId).show();
                    $("#"+doctorId).html(data);
                });
           }
           }




       </script>
    </head>
    <body>
       
            <table border="0" width="300" cellspacing="4" cellpadding="3" align="center" class="phs_table">
          <tbody>
              <tr>
                  <td>Department</td>
                  <td>:</td>
                  <td>  <select name="deptName" id="deptName">
                          <option value="10">CORDIALOGY</option>
                          <option value="20">Dermotology</option>
                          <option value="30">Neuralogy</option>
                          <option value="40">Dentist</option>
                          <option value="45">Ortho</option>
                    </select> </td>
                    <td></td>
                    <td align="center"><input type="submit" value="GetDoctors"  class="phs_Button" onclick="getDoctors()"/></td>
                  </tr>
              <tr>
         </tbody>
      </table>
      <%--</form>--%>
        <div id="showDoctor" align="center"></div>
    </body>
</html>
