<%-- 
    Document   : OnlineRegistration
    Created on : 28 Mar, 2012, 7:08:47 PM
    Author     : Kranthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@include file="OnlineRegistration.jsp" %>--%>
<html>
    <head>
        <script type="text/javascript">
            validateInsert = function()
            {
              if(document.OnlineRegistration.pname.value=="")
                    {
                        alert("Please Provide Patient's Full Name..");
                        return false;
                    }
              if(document.OnlineRegistration.fname.value=="")
                    {
                        alert("Please Provide Patient's Father name..");
                        return false;
                    }
              if(document.OnlineRegistration.age.value=="")
                    {
                        alert("Please Provide Patient's Age..");
                        return false;
                    }
              if(document.OnlineRegistration.gender.value=="")
                    {
                        alert("Please Provide Patient's Gender..");
                        return false;
                    }
              if(document.OnlineRegistration.mobileno.value=="")
                    {
                        alert("Please Provide Mobile Number..");
                        return false;
                    }
              if(document.OnlineRegistration.uname.value=="")
                    {
                        alert("Please Provide Patient's User Name..");
                        return false;
                    }
              if(document.OnlineRegistration.pword.value=="")
                    {
                        alert("Please Provide Patient's Password..");
                        return false;
                    }
              if(document.OnlineRegistration.address.value=="")
                    {
                        alert("Please Provide Patient's Present Address..");
                        return false;
                    }
              if(document.OnlineRegistration.hquestion.value=="")
                    {
                        alert("Please Provide Hint Question..");
                        return false;
                    }
              if(document.OnlineRegistration.hanswer.value=="")
                    {
                        alert("Please Provide Hint Answer..");
                        return false;
                    }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>onlineRegistration</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form name="OnlineRegistration" method="get" onsubmit="return validateInsert()">
      <table align="center" border="0">
          <tbody>
              <tr>
                  <td>Patient's Name</td>
                  <td align="left">:</td>
                  <td><input type="text" name="pname" value="" size="30" /></td>
              </tr>
              <tr>
                  <td>Father's Name</td>
                  <td align="left">:</td>
                  <td><input type="text" name="fname" value="" size="30" /></td>
              </tr>
              <tr>
                  <td>Age</td>
                  <td>:</td>
                  <td><input type="text" name="age" size="5" /></td>
              </tr>
              <tr>
                  <td>Gender</td>
                  <td align="left">:</td>
                  <td><input type="radio" name="gender" value="M" />Male  <input type="radio" name="Gender" value="F" />Female  <input type="radio" name="Gender" value="O" /> Other  </td>
              </tr>
              <tr>
                  <td>Mobile Number</td>
                  <td align="left">:</td>
                  <td><input type="text" name="mobileno" value="" size="15" /></td>
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
                  <td>Address</td>
                  <td align="left">:</td>
                  <td><textarea name="address" rows="4" cols="20" value="">
                      </textarea></td>
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
                  <td><input type="submit" value="GeneratePatientId&Forward" name="GeneratePatientId&Forward" /></td>
                                    <td align="left"></td>
                  <td><input type="reset" value="Clear" name="Clear" /></td>
              </tr>
          </tbody>
      </table>
  </form>
        <jsp:useBean id="onlinePatient" class="PHS.OnlineRegistration" scope="page">
            <jsp:setProperty name="onlinePatient" property="*"/>
                  
      <% onlinePatient.onlinePatientRegistration(); %>
      </jsp:useBean>
 </body>
</html>
