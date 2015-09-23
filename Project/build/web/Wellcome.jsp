<%-- 
    Document   : LogoutDeptAdmin
    Created on : Apr 5, 2012, 3:55:25 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<!--        <link href="CSS/PHS.css" rel="stylesheet" type="text/css" />-->
    </head>
    <body>
        <form name="wellcome" action="">
            <table align="top" border="0" width="100%" bgcolor="#FFFFF0">
                <thead>
              <tr>
                  <th/>
                  <th width="170px" style=" background-color:'';" rowspan="0" >
                    <img alt="" src="images/img2.jpg" width="100px" height="100" /></th>
                    <th align="center"><font face="verdana" color="#00BFFF" style="" size="40">
                    Paperless Hospital Service</font>
                    </th>
                    <th width="170px" style=" background-color: '';" rowspan="0" align="right">
                        <img alt="" src="images/redcross.gif" width="100px" height="100" /></th>
              </tr>
                </thead>
              <tbody>
              <tr/>
              <tr/>
              <tr>
                  <td/><td/>
                  <td align="left"><font size="5" color="#8B8878">Welcome:<%= session.getAttribute("Role")%>-<%= session.getAttribute("Username")%></font></td>
                  
                  <td align="left" ><font size="3" color="#8B8878"><a href="logout.jsp" target="_top">Logout</a></font></td>
              </tr>
          </tbody>
      </table>
      </form>
    </body>
</html>
