
package PHS;

import java.sql.*;
import java.io.*;
import java.util.*;
import PHS.DbConnection;
public class MedicinePrescribe implements Serializable {
    int rowCount;
    Statement stmt;
    ResultSet rs;
    PreparedStatement pstmt;
    Connection conn=null;
    String medicineName;
    String medicineType;
    String usage;
    String dose;
    int quantity;
    int patientId;
    int doctorId;
    ArrayList nameList=new ArrayList();
    ArrayList doseList=new ArrayList();
    ArrayList usageList=new ArrayList();
    ArrayList typeList=new ArrayList();
    ArrayList qntityList=new ArrayList();
     DbConnection dbConn;
   
public MedicinePrescribe()
{
    dbConn=new DbConnection();
   
    }


public void setMedicineName(String medicineName)
{
    this.medicineName=medicineName;
  System.out.println("setter method for MedicineName"+this.medicineName);

    }
public void setPatientId(int patientId)
{
    this.patientId=patientId;
    System.out.println("Settr method for PatientId:"+patientId);
}
public void setDoctorId(int doctorId)
{
    this.doctorId=doctorId;
    System.out.println("Settr method for Doctor:"+doctorId);
}
public void setMedicineType(String medicineType)
{
    this.medicineType=medicineType;
    System.out.println("setter method for Medicinetype"+this.medicineType);

    }
public void setUsage(String usage)
{
    this.usage=usage;
    System.out.println("setter method for usage"+this.usage);
}
public void setDose(String dose)
{
    this.dose=dose;
    System.out.println("setter method for dose"+this.dose);
}
public void setQuantity(int quantity)
{
    this.quantity=quantity;
    System.out.println("setter method for quantity"+this.quantity);
}
public int medicineInsert()
{
    try
    {
    String insert="INSERT INTO db2admin.MEDICINE(PatientId,DoctorId,MedicineName,Type,Usage,Dose,PQuantity,Date,Status)"+
                  " VALUES(?,?,?,?,?,?,?,CURRENT DATE,'TO BE ISSUED')";
//     conn.setAutoCommit(false);
     pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setInt(1,patientId);
        pstmt.setInt(2,doctorId);
        pstmt.setString(3,medicineName);
        pstmt.setString(4,medicineType);
        pstmt.setString(5,usage);
        pstmt.setString(6,dose);
        pstmt.setInt(7,quantity);
        rowCount=pstmt.executeUpdate();
        dbConn.getDbConnection().commit();
        }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return rowCount;
}
public String getMedicinePrescribed(int patientId, String date)
{
    StringBuffer resultTable=new StringBuffer();
    String query="SELECT MedicineName,Usage,Dose,Type,PQuantity " +
            "FROM db2admin.Medicine WHERE Status='TO BE ISSUED' AND PatientId="+patientId+" AND Date='"+date+"'";
    System.out.println("query"+query);
    try{
        rs=dbConn.getScrollableStatement().executeQuery(query);
        if(!rs.isBeforeFirst())
        {
            resultTable.append("No Medicines Prescribed On this Date").toString();
        }

        else{
            resultTable.append("<table align='center' border='0' id=\"phs_table\"><tr><thead><th>MedicineName</th><th>Type</th><th>Usage</th><th>Dose</th><th>PrescribedQntity</th><th>IssuedQntity</th><th>Cost</th><th>Is Issued</th></tr></thead><tbody>");
        while(rs.next())
        {
            resultTable.append("<tr><td>").append(rs.getString("MedicineName")).append("</td>");
            resultTable.append("<td>").append(rs.getString("usage")).append("</td>");
            resultTable.append("<td>").append(rs.getString("Dose")).append("</td>");
            resultTable.append("<td>").append(rs.getString("Type")).append("</td>");
            resultTable.append("<td>").append(rs.getString("PQuantity")).append("</td>");
            resultTable.append("<td ><input type=\"text\" size=\"10\" id='"+rs.getString("MedicineName")+"_qty'/></td>");
            resultTable.append("<td><input type=\"text\" size=\"10\" id='"+rs.getString("MedicineName")+"_cost'/></td>");
            resultTable.append("<td><input type=\"checkbox\" id=\""+rs.getString("MedicineName")+"\" onchange=\"addToCart('"+rs.getString("MedicineName")+"','"+date+"')\"/></tr>");
        }
            resultTable.append("<tr><td></td><td></td><td></td><td></td><td><input type=\"button\" value=\"AddMedicines\" onclick=\"addMedicines('"+patientId+"')\" class=\"phs_Button\"/></td><td></td><td></td><td></td></tr></tbody></table>");
        }
    }catch(SQLException e)
    {
        e.printStackTrace();
    }
    
    return resultTable.toString();

}
    public ArrayList getnameList()
    {
        System.out.println(nameList);
        return nameList;
    }
    public ArrayList getDoseList()
    {
        return doseList;
    }
    public ArrayList getUsageList()
    {
        return usageList;
    }
    public ArrayList getQuantityList()
    {
        return qntityList;
    }
    public ArrayList getTypeList()
    {
        return typeList;
    }
    public String updateMedicineIssued(HashMap mMap,int patientId,int totalAmount)
    {
        String resultString="";
        Set<String> mSet=mMap.keySet();

         String[] mString=new String[mMap.size()];
         mSet.toArray(mString);
         try{
        for(int i=0;i<mMap.size();i++)
        {
            String[] mSplit=mString[i].split(":");
            String update="UPDATE db2admin.Medicine SET IQUANTITY="+Integer.parseInt(mMap.get(mString[i]).toString())+", STATUS='ISSUED' WHERE MEDICINENAME='"+mSplit[0]+"' AND DATE='"+mSplit[1]+"'";
            pstmt=dbConn.getPreparedsStatement(update);
            pstmt.executeUpdate();
        }
        String billInsert="INSERT INTO db2admin.BillDetails (PATIENTID,DETAILS,AMOUNT,BILLDATE) VALUES("+patientId+", 'Medicines',"+totalAmount+",CURRENT DATE)";
        pstmt=dbConn.getPreparedsStatement(billInsert);
        pstmt.executeUpdate();
        dbConn.getDbConnection().commit();
         }catch(SQLException se)
         {
             se.printStackTrace();
             resultString+="Exception Occured";
         }
        resultString+="<script>alert('Medicines Updated And Total Bill is:"+totalAmount+"')</script>";

        return resultString;
    }
    public String ShowMedicineDates(int patientId)
    {
        StringBuilder output=new StringBuilder();
        String mDates="SELECT DATE FROM db2admin.Medicine WHERE" +
                " PatientId="+patientId+" GROUP BY DATE ORDER BY Date DESC";
        try{
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th style=\"font-family: italic; font-family: verdana\">Medicine Issue" +
                    " Dates:</th></thead><tbody>");
        rs=dbConn.getResultSet(mDates);
        while(rs.next())
        {
            output.append("<tr><td ><a href=\"#\" onclick=\"showMedicines('"+patientId+"','"+rs.getString(1)+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(1)+"\"></a></td><td >").append(rs.getString(1)).append("</td><td/><td/>");
            output.append("<tr><td colspan=\"4\"><div id='").append(rs.getString(1)).append("' style=\"display: none\"></div><td></tr>");

        }
        output.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }
        return output.toString();

    }
     public String ShowMedicineDetails(int patientId,String date)
     {
          StringBuilder output=new StringBuilder();
         String query="SELECT MedicineName,Type,Usage,Dose,PQuantity,IQuantity" +
                " FROM db2admin.Medicine WHERE PatientId="+patientId+" AND Date='"+date+"'";
         System.out.println("query:"+query);
         try{
            rs=dbConn.getResultSet(query);
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th>MedicineName</th><th>Type</th><th>Usage</th><th>Dose</th><th>PrescribedQntity</th><th>IssuedQntity</th></tr></thead><tbody>");
            while(rs.next())
            {
                output.append("<tr><td>").append(rs.getString(1)).append("</td>");
                output.append("<td>").append(rs.getString(2)).append("</td>");
                output.append("<td>").append(rs.getString(3)).append("</td>");
                output.append("<td>").append(rs.getString(4)).append("</td>");
                output.append("<td align=\"right\">").append(rs.getString(5)).append("</td>");
                output.append("<td align=\"right\">").append(rs.getString(6)).append("</td>");

            }
            output.append("</tbody></table>");


        }catch(SQLException se)
        {
            se.printStackTrace();
        }
         return output.toString();
     }
     public String getMedicineDates(int patientId)
     {
         StringBuffer output=new StringBuffer();
         String mDates="SELECT T.DATE FROM db2admin.Medicine T WHERE" +
                " T.PatientId="+patientId+" AND STATUS='TO BE ISSUED' GROUP BY T.DATE ORDER BY T.Date DESC";
         System.out.println("mDates"+mDates);
        try{
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th style=\"font-family: italic; font-family: verdana\">Tests Dates:</th></thead><tbody>");
        rs=dbConn.getResultSet(mDates);
        int count=0;
        while(rs.next())
        {
           count++;


            output.append("<tr><td ><a href=\"#\" onclick=\"showMedicines('"+patientId+"','"+rs.getString(1)+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(1)+"\"></a></td><td >").append(rs.getString(1)).append("</td>");
            output.append("<tr><td colspan=\"2\"><div id='").append(rs.getString(1)).append("' style=\"display: none\"></div><td></tr>");

        }
        if(count==0)
           {
               output.append("<script>alert('No Medicines Prescriped..!!')</script>");
           }
        output.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }

        return output.toString();

     }
}

