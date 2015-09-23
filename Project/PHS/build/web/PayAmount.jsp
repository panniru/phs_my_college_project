<%-- 
    Document   : PayAmount
    Created on : 1 Apr, 2012, 10:02:52 PM
    Author     : Kranthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Amount</title>
    </head>
    <body>
        <form align="center" method="get" action="PaymentConfirmation.jsp">
            <table align="center">
                <tr>
                    <td>Amount<td>
                    <td>:</td>
                    <td><input type="text" name="advancepaid" value=""></td>
                </tr>
                <tr>
                    <td>Payment Mode</td>
                    <td>:</td>
                    <td><select name="paymode">
                                <option>Cash</option>
                                <option>Credit</option>
                        </select><td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="submit"></td>
                </tr>
            </table>
        </form>
        <%--<jsp:useBean id="pay" class="PHS.BillDetails" scope="session"/>--%>
         
            <%--<jsp:setProperty name="pay" property="pid" value="1234"/>--%>
                     
            
            <%--</jsp:useBean>--%>  
    </body>
</html>
