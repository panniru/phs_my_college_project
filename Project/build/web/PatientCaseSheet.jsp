<%-- 
    Document   : PatientCaseSheet
    Created on : Mar 14, 2012, 4:44:04 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PatientCaseSheet</title>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
    </head>
    <frameset rows="22%,*" frameborder="1" border="1"  framespacing="3" >
    <frame src="Wellcome.jsp" scrolling="no"/>
     <frameset cols="20%,80%" frameborder="1" border="1" framespacing="0">
    <frame src="CaseSheetFrame.jsp" name="left" scrolling=no />
    <frame src="" name="right" scrolling=auto/>
    </frameset>
    </frameset>
    <%--<body>--%>

       <%-- <form name="ProcessPatient" method="POST">
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
                <a href="#" onclick="">Prescribed Tests</a>
        </p>

        <table border="1" align="center">
            <thead>
                <tr>
                    <th>SNO</th>
                    <th>TestName</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><a href="">Test1</a></td>
                    <td>13/03/12</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="">Test2</a></td>
                    <td>13/03/12</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><a href="">Test3</a></td>
                    <td>13/03/12</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><a href="">Test4</a></td>
                    <td>13/03/12</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><a href="">Test5</a></td>
                    <td>13/03/12</td>
                </tr>
            </tbody>
        </table>
        <p align="center">
       <a href="#" onclick="">Prescribed Medicines</a>
        </p>
        <table border="1" align="center">
            <thead>
                <tr>
                    <th>Medincine</th>
                    <th>Type</th>
                    <th>Dose</th>
                    <th>Usage</th>
                    <th>Quantity Prescribed</th>
                    <th>Issued Quantity</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Paracetmol</td>
                    <td>capsul</td>
                    <td>250mg</td>
                    <td>qty</td>
                    <td>5</td>
                    <td>5</td>
                    <td>13/03/12</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <p align="center">
            <a href="#" onclick="">Comments</a>
        </p>
<table border="0" align="center">
  <tbody>
      <tr>
          <td><td>
          <td>:</td>
          <td><textarea name="Comments" rows="20" cols="30">
   </textarea></td>
</tr>
        <tr>
            <td>Next Visit</td>
            <td>:</td>
            <td><input type="text" name="Next Visit" value="" size="15" readonly="readonly" /></td>
        </tr>
        <tr>
            <td>
                <input type="button" value="OK" name="OK" />
            </td>
        </tr>
    </tbody>
</table>
        </form>--%>
       <%--<jsp:forward page="PatientHealthHistory.jsp"></jsp:forward>--%>
    </body>
</html>
