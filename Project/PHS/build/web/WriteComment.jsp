<%-- 
    Document   : WriteComment
    Created on : Apr 1, 2012, 8:38:22 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Write Comment</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
   <%-- <%
        int patientId=(Integer)session.getAttribute("patientId");
        int doctorId=(Integer)session.getAttribute("UID");
        request.setAttribute("patientId", patientId);
        request.setAttribute("doctorId", doctorId);
        
    %>
    --%>
    <body>
        <form action="Comments" method="GET">
            <table border="0" align="center">
                <tbody>
                    <tr><td>Next Visit:</td></tr>
                    <tr>
                        <td>Day:<select name="dd">
                                <% for(int i=0;i<=31;i++){%>
                                <option> <%=i%> </option> <% } %>
                                
                            </select></td>
                            <td>Month:<select name="mm">
                                    <% for(int i=0;i<=12;i++){%>
                                    <option><%=i%></option><% } %>
                                    
                                </select></td>
                                <td>Year:<select name="yyyy">
                                        <option>2012</option>
                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                    </select></td>

                    </tr>
                    <tr><td>Write Comment:</td></tr>
                    <tr>
                        <td></td>
                        <td>:<textarea name="comment" rows="4" cols="20">
                            </textarea></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="write" name="write" /></td>
                        <td><input type="reset" value="clear" name="clear" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <%--<jsp:useBean id="writeComment" class="PHS.Test" scope="page">
            <jsp:setProperty name="writeComment" property="patientId" value="<%=patientId%>"/>
            <jsp:setProperty name="writeComment" property="doctorId" value="<%=doctorId%>"/>
            <jsp:setProperty name="writeComment" property="dd" param="dd"/>
            <jsp:setProperty name="writeComment" property="mm" param="mm"/>
            <jsp:setProperty name="writeComment" property="yyyy" param="yyyy"/>
            <jsp:setProperty name="writeComment" property="comment" param="comment"/>
            <% int rowCount=writeComment.writeComment();
                if(rowCount!=0)
                    {
                        out.println("Rows Updated ="+rowCount);
                    }
                 
            %>
        </jsp:useBean>--%>
    </body>
</html>
