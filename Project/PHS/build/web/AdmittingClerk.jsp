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
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        function show(ele) {
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
      <table border="0" align="left" width="200" float:left>
          <tbody>
              <tr>
                  <td><a href="#" onmouseover="show('Old/New')">Register Patient</a></td>
              </tr>
              <tr>
                  <td><a href="DoctorRegistration.jsp" target="clerkframe">Register Doctor</a></td>
              </tr>
              <tr>
                  <td><a href="PatientRetrieve.jsp" target="clerkframe" >Patient Bill Details</a></td>
              </tr>
              <tr>
                  <td><a href="DoctorAvailability.jsp" target="clerkframe">Doctor Availability</a></td>
              </tr>
              <tr>
                  <td><a href="getInsuranceStatus.jsp" target="clerkframe">Patient Insurance Status</a></td>
              </tr>
          </tbody>
      </table>
          <DIV ID="Old/New" style="display:none">
                            <table border="0">
                                
                                <tr>
                                    <td><a href="oldPatientRetrieve.jsp" target="clerkframe">Old</a></td>
                                </tr>
                                <tr>
                                    <td><a href="NewPatientRegistration.jsp" target="clerkframe">New</a></td>
                                </tr>
                            </table>
           </DIV>
    </body>
</html>
