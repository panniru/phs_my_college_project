
package PHS;
import java.sql.*;
import java.util.*;
import PHS.DbConnection;
//import java.io.*;
public class BillDetails
{
   
    ResultSet rs;
    Statement stmt;
    PreparedStatement pstmt;
    Connection conn=null;
    String paymode;
    int advancePaid;
    int pid;
    String pname;
    ArrayList bdate= new ArrayList();
    ArrayList pmode=new ArrayList();
    ArrayList advpaid=new ArrayList();
    ArrayList claimedamount=new ArrayList();
    ArrayList bno=new ArrayList();
    ArrayList details=new ArrayList();
    ArrayList amt=new ArrayList();
    ArrayList claim=new ArrayList();
    DbConnection dbConn;
    public BillDetails()
    {
         dbConn=new DbConnection();
        
    }
    public void setPid(int pid)
    {
        this.pid=pid;
        System.out.println("setter method for patientID:"+this.pid);
    }
    public void setadvancePaid(int advancePaid)
    {
        this.advancePaid=advancePaid;
        System.out.println("setter method for Advance Paid:"+this.advancePaid);
    }
    public void setPaymode(String paymode)
    {
        this.paymode=paymode;
        System.out.println("setter method for Advance Paid:"+this.paymode);
    }
    public void setBillDetails()
    {

      String query="SELECT Details, Amount, BillDate, Claim FROM db2admin.BillDetails WHERE PatientID="+pid;
      String query1="SELECT BillNO, BillDate, PaymentMode, AdvPaid, ClaimAmount FROM db2admin.Bill WHERE PatientID="+pid;
      try
         {
            rs=dbConn.getResultSet(query);
            while(rs.next())
            {
                details.add(rs.getString("Details"));
                amt.add(rs.getInt("Amount"));
                bdate.add(rs.getString("BillDate"));
                claim.add(rs.getString("Claim"));
            }
            rs=dbConn.getResultSet(query1);
            while(rs.next())
            {
                bno.add(rs.getInt("BillNO"));
                bdate.add(rs.getString("BillDate"));
                pmode.add(rs.getString("PaymentMode"));
                advpaid.add(rs.getInt("AdvPaid"));
                claimedamount.add(rs.getInt("ClaimAmount"));
            }
         }
      catch(SQLException e)
      {
          e.printStackTrace();
      }
    }
    public String getPatientName()
    {
        try
        {
            rs=dbConn.getResultSet("SELECT Pname FROM db2admin.Patientpersonal WHERE PatientId="+pid);
            while(rs.next())
            {
                pname=rs.getString("pname");
                System.out.println("Patient name:"+pname);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return  pname;
    }    
    public int UpdateAmount()
    {
        int rowCount=0;
        try
        {
            String insert="INSERT INTO db2admin.Bill(BillNo,PatientID,BillDate,PaymentMode,AdvPaid,ClaimAmount)"+
                    "VALUES((SELECT MAX(BillNo)+1 FROM db2admin.Bill),"+pid+",CURRENT DATE,'"+paymode+"',"+advancePaid+","+0+")";
          System.out.println("insert"+insert);
//            conn.setAutoCommit(false);
           /* pstmt=conn.prepareStatement(insert);
            pstmt.setInt(2, pid);
            pstmt.setString(4,paymode);
            pstmt.setInt(5,advancePaid);*/
            rowCount=dbConn.getStatement().executeUpdate(insert);
            dbConn.getDbConnection().commit();
        }
        catch(SQLException e)
        {
            e.printStackTrace();  
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    return rowCount;
    }
    public ArrayList getDetails()
    {
        System.out.println(details);
        return details;
    }
    public ArrayList getBillDate()
    {
        return bdate;
    }
    public ArrayList getAmount()
    {
        return amt;
    }
    public ArrayList getClaim()
    {
        return claim;
    }
    public ArrayList getBillNo()
    {
        return bno;
    }
    public ArrayList getPaymentMode()
    {
        return pmode;
    }
    public ArrayList getAdvPaid()
    {
        return advpaid;
    }
    public ArrayList getClaimedAmount()
    {
        return claimedamount;
    }
    public String getBillDetails(int patientId)
    {
        StringBuilder output=new StringBuilder();
        String query="SELECT DETAILS,AMOUNT,BILLDATE,CLAIM FROM db2admin.BILLDetails WHERE PatientId="+patientId+" ORDER BY BILLDATE DESC";
        try{
            rs=dbConn.getResultSet(query);
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th >Particulars</th><th >Amount</th><th >Date</th><th>IsClaim</th></thead><tbody>");
            while(rs.next())
            {
                output.append("<tr><td>").append(rs.getString(1)).append("</td>");
                output.append("<td align=\"right\">").append(rs.getString(2)).append("</td>");
                output.append("<td>").append(rs.getString(3)).append("</td>");
                output.append("<td>").append(rs.getString(4)).append("</td></tr>");

            }
            output.append("<tr><td/><td/><td><a href=\"#\" onclick=\"showTransaction()\">View Transactions</a></td><td/></tr>");
            output.append("</tbody></table>");


        }catch(SQLException se)
        {
            se.printStackTrace();
        }
        return output.toString();
    }
    public String getTransactions(int patientId)
    {
        StringBuilder output=new StringBuilder();
        String query="SELECT BILLNO,PAYMENTMODE,ADVPAID,CLAIMAMOUNT,BILLDATE FROM db2admin.BILL WHERE PatientId="+patientId+" ORDER BY BILLDATE";
        System.out.println("query"+query);
        try{
            rs=dbConn.getResultSet(query);
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th >Bill No</th><th >PayementDetails</th><th >PaidAmount</th><th>Claimed Amount</th><th>Date</th></thead><tbody>");
            while(rs.next())
            {
                output.append("<tr><td align=\"right\">").append(rs.getString(1)).append("</td>");
                output.append("<td >").append(rs.getString(2)).append("</td>");
                output.append("<td align=\"right\">").append(rs.getString(3)).append("</td>");
                output.append("<td align=\"right\">").append(rs.getString(4)).append("</td>");
                output.append("<td>").append(rs.getString(5)).append("</td></tr>");

            }
//            output.append("<tr><td><input type=\"button\" value=\"ok\" name=\"ok\" class=\"phs_button\" onclick=\"hidedata()\"/></td></tr>");
            output.append("</tbody></table>");


        }catch(SQLException se)
        {
            se.printStackTrace();
        }

        return output.toString();
    }
}
