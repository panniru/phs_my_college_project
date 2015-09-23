<%-- 
    Document   : ProcessPatient
    Created on : Mar 14, 2012, 4:50:28 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        showService=function (ele) {
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
    <body>
        <form name="Process Patient" method="POST">
          <table border="0" align="center">
              <tbody>
                  <tr>
                      <td>PatientID</td>
                      <td>:</td>
                      <td><input type="text" name="PatientID" value="" size="10" readonly="readonly" /></td>
                  </tr>
                  <tr>
                      <td>PatientName</td>
                      <td>:</td>
                      <td><input type="text" name="PatientName" value="" size="30" readonly="readonly" /></td>
                  </tr>
                  <!--<tr>-->
                      <!--<td></td>-->
                      <!--<td></td>-->
                      <!--<td></td>-->
                  <!--</tr>-->
                  <tr>
                      <td>Age  :<input type="text" name="Age" value="" size="4" readonly="readonly" /></td>
                      <td></td>
                      <td>Gender  :<input type="text" name="Gender" value="" size="10" /></td>
                  </tr>
                  <tr>
                      <td>Health History</td>
                      <td>:</td>
                      <td><textarea name="Health History" rows="4" cols="20" readonly="readonly">
                          </textarea></td>
                  </tr>
                  <tr>
                      <td>Symptoms</td>
                      <td>:</td>
                      <td><textarea name="Symptoms" rows="4" cols="20" readonly="readonly">
                          </textarea></td>
                  </tr>
                  <tr>
                      <td>Condition</td>
                      <td>:</td>
                      <td><input type="text" name="Condition" value="" size="20" readonly="readonly" /></td>
                  </tr>
                  </tbody>
          </table>
          <p align="center">
          <a href="#" onclick="showService('Assign Doctor')" align="center">Assign Doctor</a>
          </p>
           <div ID="Assign Doctor" style="display:none" >
               <table border="0" align="center">
                 <tbody>
                     <tr>
                              <td>Department</td>
                                          <td>:</td>
                                          <td><select name="Department" >
                                                  <option>Dept1</option>
                                                  <option>Dept2</option>
                                                  <option>Dept3</option>
                                                  <option>Dept4</option>
                                                  <option>Dept5</option>
                                                  <option>Dept6</option>
                                                  <option>Dept7</option>
                                                  <option>Dept8</option>
                                                  <option>Dept9</option>
                                                  <option>Dept10</option>
                                                  <option>Dept11</option>
                                                  <option>Dept12</option>
                                                  <option>Dept13</option>
                                                  <option>Dept14</option>
                                                  <option>Dept15</option>
                                              </select></td>
                                      </tr>
                                      <tr>
                                          <td>Doctor</td>
                                          <td>:</td>
                                          <td><select name="DoctorList">
                                                  <option>Dctr1</option>
                                                  <option>Dctr2</option>
                                                  <option>Dctr3</option>
                                                  <option>Dctr4</option>
                                                  <option>Dctr5</option>
                                                  <option>Dctr6</option>
                                                  <option>Dctr7</option>
                                                  <option>Dctr8</option>
                                                  <option>Dctr9</option>
                                                  <option>Dctr10</option>
                                              </select></td>
                                      </tr>
                                      <!--<tr>-->
                                          <!--<td></td>-->
                                          <!--<td></td>-->
                                          <!--<td></td>-->
                                      <!--</tr>-->
                                      <tr>
                                          <td><input type="submit" value="Assign Doctor" name="Assigndoctor" onclick="window.alert('doctor successfully assigned')"/></td>
                                          <td></td>
                                          <td><input type="reset" value="Cancel" name="Cancel" /></td>
                                      </tr>
                                  </tbody>
                              </table>
                           </div>


      </form>
    </body>
</html>
