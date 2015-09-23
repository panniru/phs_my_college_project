
<%@taglib  uri="/WEB-INF/tlds/PatientMedicine.tld" prefix="patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
int patientId=Integer.parseInt(request.getParameter("patientId").toString());
String date=request.getParameter("date");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <patient:MedicineHandler patientId="<%=patientId%>" date="<%=date%>" ></patient:MedicineHandler>>
    </body>
</html>
