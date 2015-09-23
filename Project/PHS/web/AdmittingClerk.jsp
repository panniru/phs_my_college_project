<%-- 
    Document   : AdmittingClerk
    Created on : Mar 14, 2012, 2:10:09 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  errorPage="errorpage.jasp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdmittingClerk</title>
         <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
         <script src="jquery-1.7.2.min.js"></script>
        <script type="text/javascript">
        function showHidden(ele) {
         var srcElement = document.getElementById(ele);
         if(srcElement != null) {
	   if(srcElement.style.display == "block") {
     		  srcElement.style.display= 'none';
   	    }
            else {
                   srcElement.style.display='block';
            }
            <!--return false;-->

       }

  }
    </script>
    </head>
    <body bgcolor="#66CC99">
      <%--<table align="left" border="0" width="200" float:left>
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome to Admitting Clerk<br>Mr. <%= session.getAttribute("Username")%></font></td>
              </tr>
          </tbody>
      </table>--%>
      <table border="0" align="left" width="200" id="phs_table">
          <tbody>
              <tr>
                  <td><a href="#" onclick="showHidden('oldnew')">Register Patient</a>
                  <DIV ID="oldnew" style="display:none">
                            <table border="0" class="phs_table">
                                
                                <tr>
                                    <td><a href="oldPatientRetrieve.jsp" target="right">Old</a></td>
                                </tr>
                                <tr>
                                    <td><a href="NewPatientRegistration.jsp" target="right">New</a></td>
                                </tr>
                            </table>
           </DIV></td>
              </tr>
              <tr>
                  <%--<td><a href="DoctorRegistration.jsp" target="right">Register Doctor</a></td>--%>
              </tr>
              <tr>
                  <td><a href="PatientRetrieve.jsp" target="right">Patient Bill Details</a></td>
              </tr>
              <tr>
                  <td><a href="DoctorAvailability.jsp" target="right">Doctor Availability</a></td>
              </tr>
              <tr>
                  <%--<td><a href="getInsuranceStatus.jsp" target="right">Patient Insurance Status</a></td>--%>
              </tr>
          </tbody>
      </table>
     
          
    </body>
</html>
