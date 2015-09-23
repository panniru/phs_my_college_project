<%-- 
    Document   : insuranceProvider
    Created on : Mar 27, 2012, 3:51:04 PM
    Author     : PRATYUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorpage.jasp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script type="text/javascript">
            validateInsert=function()
            {
                alert("h"+document.insuranceProvider.patientId.value+"h");
                if(document.insuranceProvider.patientId.value=="")
                    {
                        alert("please enter patientId..");
                        return false;
                    }
                    if(!document.insuranceProvider.provider.value=="")
                        {
                            alert("please provide insurance providername.."+document.insuranceProvider.provider.value)
                            return false;
                        }
                        if(document.insuranceProvider.insuranceId.value=="")
                            {
                                alert("please enter insuranceId.. ")
                                return false;
                                }
                            if(document.insuranceProvider.claimAmount.value=="")
                                {
                                    alert("please enter claimAmount..")
                                    return false;
                                }
                                if(document.insuranceProvide.claimStatus.value=="")
                                    {
                                        alert("please enter claimStatus..")
                                        return false;
                                    }
                    }
            
          </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ClaimStatus</title>
        <link href="PHScss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <center> <form name="insuranceProvider" method="get" >
            <table algin="center" border="0">
                <tbody>
                    <tr>
                        <td>PatientId</td>
                        <td><input type="text" name="patientId" value="" size="">
                        </td>
                    </tr>
                    <tr>
                        <td>Provider</td>
                        <td><input type="text" name="provider" value="" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td>InsuranceId</td>
                        <td><input type="text" name="insuranceId" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Claim Amount</td>
                        <td><input type="text" name="claimAmount" value=""></td>
                    </tr>
                    <tr>
                        <td>Claim Status</td>
                        <td><input type="text" name="claimStatus" value=""></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="submit" onclick="validateInsert()"></td>
                        <td align="left"></td>
                    </tr>
                </tbody>
            </table>
        </form>
        </center>
        <jsp:useBean id="insuranceProvider" class="PHS.Insurance" scope="page">
                     
            <jsp:setProperty name="insuranceProvider" property="*"/>
           <% insuranceProvider.insuranceProviderInsert(); %>

        </jsp:useBean>
        
    </body>
</html>
