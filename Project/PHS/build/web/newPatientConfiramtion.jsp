
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Patient Confirmation</title>
    </head>
    <body>
        <%long pid=0;%>
        <jsp:useBean id="newPatient" class="PHS.Patient" scope="page">
            <jsp:setProperty name="newPatient" property="*"/>
            <%
                
                if(pid==0)
                    {
                   pid= newPatient.newPatientInsert();
                 }
          %>
           
        </jsp:useBean>
        <form action="AdmittingClerk.jsp" method="post">
            <center style="font-family:verdana;font-style: italic">
            <%
            if(pid==0){
                    
            
               
            %><p>Error Occured : NotRegistered</p>
            <%}else{
            %><p>generated Id:<%=pid%><%}%></p><br>
          
            <input type="submit" value="go to Home" name="go to Home"/>
              </center>
        </form>
    </body>
</html>
