package PHS;

import java.sql.*;
import java.io.*;
import PHS.DbConnection;
public class Insurance implements Serializable {
    String url="jdbc:db2://localhOst:50000/PHSYSTEM";
    String driver="com.ibm.db2.jcc.DB2Driver";
    String user="db2admin";
    String pwd="db2admin";
    int rowcount;
    Statement stmt;
    PreparedStatement pstmt;
    Connection conn=null;
    int patientId;
    String provider;
    int insuranceId;
    double claimAmount;
    String claimStatus;
    String pname;
     DbConnection dbConn;
    public Insurance()
    {
        dbConn=new DbConnection();
    }
    public void setPatientId(int patientId)
    {
        this.patientId=patientId;
        System.out.println("Setter method for pname:"+this.patientId);
    }
    public void setProvider(String provider)
    {
        this.provider=provider;
        System.out.println("Setter method for provider:"+this.provider);
    }
    public void setInsuranceId(int insuranceId)
    {
        this.insuranceId=insuranceId;
        System.out.println("Setter method for insuranceid:"+this.insuranceId);
    }
    public void setClaimAmount(double claimAmount)
    {
        this.claimAmount=claimAmount;
        System.out.println("Setter method for claimAmount:"+this.claimAmount);
    }
    public void setClaimStatus(String claimStatus)
    {
        this.claimStatus=claimStatus;
        System.out.println("Setter method for claimstatus:"+this.claimStatus);
    }
      public void insuranceProviderInsert()
    {
       try{

           String insert="INSERT INTO db2admin.Insurance(PatientId,Provider,InsuranceId,ClaimStatus,TotalClaim)" +
                " VALUES(?,?,?,?,?)";
         pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setInt(1,patientId);
        pstmt.setString(2,provider);
        pstmt.setInt(3,insuranceId);
        pstmt.setDouble(5,claimAmount);
        pstmt.setString(4,claimStatus);
        pstmt.executeUpdate();
        dbConn.getDbConnection().commit();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }


      }
    public void getInsuranceDetails()
    {
      try{
           stmt=conn.createStatement();
          String query="select pp.Pname,i.patientId,i.Provider,i.InsuranceId,i.TotalClaim,i.ClaimStatus from db2admin.Insurance i,db2admin.patientpersonal pp where i.patientId=pp.patientId and i.patientId="+patientId;
        ResultSet rs=dbConn.getResultSet(query);
                while(rs.next()){
                    pname=rs.getString("pname");
                    patientId=rs.getInt("PatientId");
                    provider=rs.getString("Provider");
                    insuranceId=rs.getInt("InsuranceId");
                    claimAmount=rs.getDouble("TotalClaim");
                    claimStatus=rs.getString("ClaimStatus");
                }
      }catch(SQLException e)
      {
          e.printStackTrace();
        }
    }
    public int getPatientId()
    {
        System.out.println("get PatientId method:"+patientId);
        return patientId;
    }
    public String getProvider()
    {
        return provider;
    }
    public int getInsuranceId()
    {
        return insuranceId;
    }
    public double getClaimAmount()
    {
        return claimAmount;
    }
    public String getClaimStatus()
    {
        return claimStatus;
    }
public String getPname()
{
    return pname;
}
    }




    


