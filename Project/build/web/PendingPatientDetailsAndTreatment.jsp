<%-- 
    Document   : PendingPatientDetailsAndTreatment
    Created on : Mar 14, 2012, 4:45:52 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        show=function (ele) {
         var srcElement = document.getElementById(ele);
         if(srcElement != null) {
	   if(srcElement.style.display == "block") {
     		  srcElement.style.display= 'none';
   	    }
            else {
                   srcElement.style.display='block';
            }
            return false;
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

       <table border="1" align="center">
           <thead>
               <tr>
                   <th><a href="#" onclick="show('PrescribeTest')">PrescibeTest</a></th>
                   <th><a href="#" onclick="show('PrescribeMedicine')">Prescribe Medicine</a></th>
                   <th><a href="#" onclick="show('Comments')">Comments</a></th>
               </tr>
           </thead>
           <tbody>
               <tr>
                   <td colspan="3">
                       <div id="PrescribeTest" style="display: none">
                           <table border="0" align="center">
                               <tbody>
                                   <tr>
                                       <td>Test Name</td>
                                       <td>:</td>
                                       <td><select name="TestNames">
                                               <option>Test1</option>
                                               <option>Test2</option>
                                               <option>Test3</option>
                                               <option>Test4</option>
                                               <option>Test5</option>
                                               <option>Test6</option>
                                               <option>Test7</option>
                                               <option>Test8</option>
                                               <option>Test9</option>
                                               <option>Test10</option>
                                               <option>Test11</option>
                                               <option>Test12</option>
                                               <option>Test13</option>
                                               <option>Test14</option>
                                               <option>Test15</option>
                                           </select></td>
                                   </tr>
                                   <tr>
                                       <td colspan="3"><input type="submit" value="Add" name="Add" onclick="window.alert('Test Added')"/></td>
                                   </tr>
                               </tbody>
                           </table>
                       </div>
                   </td>
               <tr>
                   <td colspan="3">
                                    <div id="PrescribeMedicine" style="display: none">
                                        <table border="0" align="center">
                                            <tbody>
                                                <tr>
                                                    <td>Medicine Name</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Medicine Name" value="" size="35" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Medicine Type</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Medicine Type" value="" size="15" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Dose</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Dose" value="" size="6" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Usage</td>
                                                    <td>:</td>
                                                    <td><select name="Usage">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <td>Quantity</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="Quantity" value="" size="4" /></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td><input type="submit" value="Add" name="Add" onclick="window.alert('Medicine Added')"/>   <input type="reset" value="Clear" name="Clear" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                          </td></tr>
               <tr>
                          <td colspan="3">
                              <div id="Comments" style="display: none">
                                  <table border="0" align="center">
                                      <tbody>
                                          <tr>
                                             <td colspan="3"><textarea name="WriteComment" rows="14" cols="30">
                                                  </textarea></td>
                                          </tr>
                                          <tr>
                                              <td></td>
                                              <td><input type="submit" value="Write" name="Write" onclick="window.alert('Comment Successfully Written')" align="right"/></td>
                                              <td><input type="reset" value="Clear" name="Clear" align="right"/></td>
                                          </tr>
                                      </tbody>
                                  </table>

                              </div>
                          </td>
               </tr>
               </tbody>
       </table>
    </body>
</html>
