 <%--
    Document   : DoctorRegistration
    Created on : 29 Mar, 2012, 10:58:19 AM
    Author     : Naveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="DoctorRegistration.jsp" %>--%>
<html>
    <head>
        <script type="text/javascript">
            validateInsert = function()
            {
              if(document.DoctorRegistration.dname.value=="")
                    {
                        alert("Please Provide Doctor's Name..");
                        return false;
                    }
              if(document.DoctorRegistration.contactno.value=="")
                    {
                        alert("Please Provide Mobile Number..");
                        return false;
                    }
              if(document.DoctorRegistration.uname.value=="")
                    {
                        alert("Please Provide User Name..");
                        return false;
                    }
              if(document.DoctorRegistration.pword.value=="")
                    {
                        alert("Please Provide Password..");
                        return false;
                    }
              if(document.DoctorRegistration.splz.value=="")
                    {
                        alert("Please Provide Specialization..");
                        return false;
                    }
              if(document.DoctorRegistration.exp.value=="")
                    {
                        alert("Please Provide Experienxe..");
                        return false;
                    }
              if(document.DoctorRegistration.hquestion.value=="")
                    {
                        alert("Please Provide Hint Question..");
                        return false;
                    }
              if(document.DoctorRegistration.hanswer.value=="")
                    {
                        alert("Please Provide Hint Answer..");
                        return false;
                    }
            }
        </script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    <body>
        <form name="DoctorRegistration" method="get" onsubmit="return validateInsert()" >
      <%--<table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome: <%= session.getAttribute("Username")%></font></td>
                  <td align="right"><font size="3" color="red"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
      </table>--%>
      <table align="center" border="0">
          <tbody>
              <tr>
                  <td colspan="3"><font size="5" color="red">Doctor Registration Form</font></td>
              </tr>
              <tr>
                  <td>Doctor's Name</td>
                  <td align="left">:</td>
                  <td><input type="text" name="dname" value="" size="30" /></td>
              </tr>
              <tr>
                  <td>Contact Number</td>
                  <td align="left">:</td>
                  <td><input type="text" name="contactno" value="" size="15" /></td>
              </tr>
              <tr>
                  <td>User Name</td>
                  <td align="left">:</td>
                  <td><input type="text" name="uname" value="" size="30" /></td>
              </tr>
              <tr>
                  <td>Password</td>
                  <td align="left">:</td>
                  <td><input type="password" name="pword" value=""></td>
              </tr>
              <tr>
                  <td>Specialization</td>
                  <td align="left">:</td>
                  <td><input type="text" name="splz" value=""></td>
              </tr>
              <tr>
                  <td>Experience</td>
                  <td align="left">:</td>
                  <td><input type="text" name="exp" value=""></td>
              </tr>
              <tr>
                  <td>Hint Question</td>
                  <td align="left">:</td>
                  <td><select name="hquestion" default="2">
                          <option>What is your favourite food?</option>
                              <option>What is your nick name?</option>
                              <option>What is your first teacher name?</option>
                              <option>What is your best friend name?</option>
                              <option>What is favourite past time?</option>
                      </select></td>
              </tr>
              <tr>
                  <td>Hint Answer</td>
                  <td align="left">:</td>
                  <td><input type="text" name="hanswer" value="" size="30" /></td>
              </tr>
              <tr>
                  <td><input type="submit" value="GenerateID" name="GenerateID" onclick="Window.alert("Doctor Registered Successfully.Visit Hospitsl to get Unique ID..")"/></td>
                                    <td align="left"></td>
                  <td><input type="reset" value="Clear" name="Clear" /></td>
              </tr>
          </tbody>
      </table>
  </form>
        <jsp:useBean id="doctor" class="PHS.DoctorRegistration" scope="page">
            <jsp:setProperty name="doctor" property="*"/>
            <% doctor.doctorReg(); %>
        </jsp:useBean>    
 </body>
</html>
