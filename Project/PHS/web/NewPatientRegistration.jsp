<%-- 
    Document   : NewPatientRegistration
    Created on : Mar 14, 2012, 4:36:47 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="newPatientInsert.jsp" %>--%>
<html>
    <head>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            validateInsert = function()
            {
                if(document.NewPatientRegistration.pname.value=="")
                    {
                        alert("Please Provide Patient Name..");
                        return false;
                    }
               if(document.NewPatientRegistration.age.value=="")
                    {
                        alert("Please Provide Patient Age..");
                        return false;
                    }
             <%-- if(document.NewPatientRegistration.mstatus.value=="")
                    {
                        alert("Please Provide Patient MaritualStatus..");
                        return false;
                    }--%>
              if(document.NewPatientRegistration.gender.value=="")
                    {
                        alert("Please Provide Patient Gender..");
                        return false;
                    }
            }
     </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewPatientRegistration</title>
        
    </head>
    <body>
        <%-- <jsp:include page="AdmittingClerk.jsp" flush="true"></jsp:include>--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
        <form name="NewPatientRegistration" method="get" onsubmit="return validateInsert()" action="newPatientConfiramtion.jsp">
      <table align="center" border="0">
          <tbody>
              <tr>
                  <td align="center" colspan="3"><font color="#691F01">New Patient Registration Form</font></td>
              </tr>
              <tr>
                  <td>PatientName</td>
                  <td align="left">:</td>
                  <td><input type="text" name="pname" value="Srikanth" size="30" /></td>
              </tr>
              <tr>
                  <td>FatherName</td>
                  <td align="left">:</td>
                  <td><input type="text" name="fname" value="Narsimhulu" size="30" /></td>
              </tr>
              <tr>
                  <td>Age</td>
                  <td>:</td>
                  <td><input type="text" name="age" size="5" value="23"/></td>
              </tr>
              <tr>
                  <td>Gender</td>
                  <td align="left">:</td>
                  <td><input type="radio" name="gender" value="M" />Male  <input type="radio" name="Gender" value="F" />Female  <input type="radio" name="Gender" value="O" /> Other  </td>
              </tr>
              <tr>
                  <td>MaritualStatus</td>
                  <td align="left">:</td>
                  <td><select name="mstatus">
                          <option selected>Single</option>
                          <option>Married</option>
                      </select></td>
              </tr>
              <tr>
                  <td>MobileNumber</td>
                  <td align="left">:</td>
                  <td><input type="text" name="mnumber" value="9951442002" size="15" /></td>
              </tr>

              <tr>
                  <td>Email</td>
                  <td align="left">:</td>
                  <td><input type="text" name="email" value="sri.panniru08@gmail.com" size="30" /></td>
              </tr>
              <tr>
                  <td>Address</td>
                  <td align="left">:</td>
                  <td><textarea name="address" rows="4" cols="20" >Hyderabad
                      </textarea></td>
              </tr>
              <tr>
                  <td>Symptoms</td>
                  <td align="left">:</td>
                  <td><textarea name="symptoms" rows="4" cols="20" >HeartAttack
                      </textarea></td>
              </tr>
              <tr>
                  <td>Condition</td>
                  <td align="left">:</td>
                  <td><input type="text" name="condition" value="Severe" size="20" /></td>
              </tr>
              <tr>
                  <td><input type="submit" value="GeneratePatientId&Forward" name="GeneratePatientId&Forward"  class="phs_Button"/></td>
                                    <td align="left"></td>
                  <td><input type="reset" value="Clear" name="Clear" class="phs_Button"/></td>
              </tr>
          </tbody>
      </table>
  </form>
      <%--  <jsp:useBean id="newPatient" class="PHS.Patient" scope="page">
            <jsp:setProperty name="newPatient" property="*"/>
            <% long pid=0;
               pid=newPatient.newPatientInsert();
System.out.println("genrated Patient Id is:"+pid); %>
            <jsp:setProperty name="newPatient" property="pname" param="pname" />
            <jsp:setProperty name="newPatient" property="fname" param="fname" />
            <jsp:setProperty name="newPatient" property="age" param="age" />
            <jsp:setProperty name="newPatient" property="gender" param="gender" />
            <jsp:setProperty name="newPatient" property="mstatus" param="mstatus" />
            <jsp:setProperty name="newPatient" property="mnumber" param="mnumber" />
            <jsp:setProperty name="newPatient" property="email" param="email" />
            <jsp:setProperty name="newPatient" property="address" param="address" />
            <jsp:setProperty name="newPatient" property="symptoms" param="symptoms" />
            <jsp:setProperty name="newPatient" property="condition" param="condition" />
        </jsp:useBean>--%>
        
        <%-- <%
                int pid=0;
                if(pid==0)
                   pid=newPatient.newPatientInsert();
                out.println("Generated PatientID is:"+pid);
           %><%--
                  </jsp:useBean>--%>
      <%--if(pid!=0)--%>
                
                <%--else out.println("PatientId generation failed");
        <%--int pid=0;--%>
            
 </body>
</html>
