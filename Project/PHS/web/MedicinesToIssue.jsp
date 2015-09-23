<%-- 
    Document   : MedicinesToIssue
    Created on : Apr 3, 2012, 11:54:13 PM
    Author     : Anil
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>medicinissued</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    <script src="jquery-1.7.2.min.js"></script>
        <script type="text/javascript">
            var cart=new Array();
            var total=0;
            function getdate()
            {
                alert('getDates');
                var patientId=$("#patientId").val();
                var url='MedicineIssued?patientId='+patientId;
                $.get(url, function(data){
                    $("#showMedicines").html(data);


                });
            }
                 
            function showMedicines(patientId,date)
            {
                <%--alert('Hello World:'+$("#patientId").val());--%>
                <%--var url="/Comments?patientId="+$("#patientId").val();--%>
                <%--var patientId=$("#patientId").val();
                var date=$("#date").val();--%>
                var url='MedicineIssued?patientId='+patientId+'&date='+date;
                  if($("#"+date).css('display')!='none')
            {
                <%--alert('in if condition hides');--%>

                $("#"+date).hide();
                $("#img"+date).attr('src','images/plus.jpg');
            }
            else{
                $.get(url, function(data){
                    $("#img"+date).attr('src','images/minus.jpg');
                    $("#"+date).toggle(500);
                    $("#"+date).show();
                    $("#"+date).html(data);
                    });
               
            }
            function addToCart(medicineName,date)
            {
               
                var cost=$("#"+medicineName+"_cost").val();
               <%--alert("cost"+cost)--%>
                var iQuanity=$("#"+medicineName+"_qty").val();
                var item=medicineName+":"+date+"-"+iQuanity;
                if($("#"+medicineName).is(":checked"))
                    {
                    cart.push(item);
                    total=parseInt(total)+parseInt(cost);
                    <%--alert('cart in if:'+cart + "Total:"+total)--%>
                    }
                else
                    {
                        var i=0;
                        var poss=0;
                        <%--alert(cart.length);--%>
                        while(i<cart.length)
                            {
                                poss=cart.indexOf(item, 0);
                                cart.splice(poss, 1);
                                i++;
                            }
                        total=total-cost;
                        <%--alert('cart in else: '+cart);--%>

                    }
            }
            function addMedicines(patientId)
            {
                <%--alert('addMedicines Method');--%>
                 var url='MedicineIssueSucces?patientId='+patientId+'&cart='+cart+'&total='+total;
                 $.get(url, function(data){
                    $("#showConfirmation").html(data);


                });
            }
          
     </script>
                 
            
    </head>
    <%--<%
        int patientId=Integer.parseInt(request.getParameter("patientId"));
%>--%>
    <body>
        <table border="0" align="center" >
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" id="patientId" name="patientId" size="10" /></td>
                     <%-- <td >Date</td>
                      <td>:</td>
                      <td><input type="text" id="date" name="patientId" size="10" />(dd/mm/yyyy)</td>--%>
                      <td><input type="button" onclick="getdate()" class="phs_Button" value="getMedicines"></td>
                  </tr>

               </tbody>
          </table>
        <div id="showMedicines" align="center" ></div>
        <div id="showConfirmation" align="center"></div>

       
    </body>
</html>
