

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            validateInsert=function()
            {
                <%--alert(document.Medicine.MedicineName.value);--%>
                if(document.Medicine.medicineName.value=="")
                    {
                        alert("please enter MedicineName..");
                        return false;
                    }
                    if(document.Medicine.medicineType.value=="")
                        {
                            alert("please enter medicineType..")
                            return false;
                        }
                        if(document.Medicine.usage.value=="")
                            {
                                alert("please enter usage.. ")
                                return false;
                                }
                            if(document.Medicine.dose.value=="")
                                {
                                    alert("please enter dose..")
                                    return false;
                                }
                                if(document.Medicine.quantity.value=="")
                                    {
                                        alert("please enter quantity..")
                                        return false;
                                    }
                    }

          </script>
                <%
            int patientId=(Integer)session.getAttribute("patientId");
            int doctorId=(Integer)session.getAttribute("UID");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>medicinePrescribe</title>
<!--        <link href="PHScss.css" rel="stylesheet" type="text/css" />-->
    </head>
    <body>
        <%--<table align="top" border="0" width="100%">
          <tbody>
              <tr>
                  <td align="left"><font size="5" color="red">Welcome: <%= session.getAttribute("Username")%></font></td>
                  <td align="right"><font size="3" color="red"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
        </table>--%>
        <form name="Medicine" mothod="GET" onsubmit=" validateInsert()">
             <table border="0" align="center">
                                            <tbody>
                                                <tr>
                                                    <td>Medicine Name</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="medicineName" value="" size="35" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Medicine Type</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="medicineType" value="" size="15" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Dose</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="dose" value="" size="6" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Usage</td>
                                                    <td>:</td>
                                                    <td><select name="usage">
                                                            <option>qid</option>
                                                            <option>bid</option>
                                                            <option>tid</option>
                                                            <option>qd</option>
                                                        </select></td>
                                                </tr>
                                                <tr>
                                                    <td>Quantity</td>
                                                    <td>:</td>
                                                    <td><input type="text" name="quantity" value="" size="4" /></td>
                                                </tr>
                                               
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td><input type="submit" value="Add" name="Add" class="phs_Button"/>   <input type="reset" value="Clear" name="Clear" class="phs_Button"/></td>
                                                </tr>
                                            </tbody>

             </table>

       </form>
                                            <jsp:useBean id="medicine" class="PHS.MedicinePrescribe" scope="page">
                                                <jsp:setProperty name="medicine" property="patientId" value="<%=patientId%>"/>
                                                <jsp:setProperty name="medicine" property="doctorId" value="<%=doctorId%>"/>
                                               <jsp:setProperty name="medicine" property="*"/>
                                               <% int rowCout= medicine.medicineInsert();
                                               %>
                                            </jsp:useBean>
                                       </body>
                                       </html>
    
