/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHS;


import java.sql.*;
import java.io.*;
import PHS.DbConnection;
public class InsuranceDetails implements Serializable {
     String url="jdbc:db2://localhOst:50000/PHSYSTEM";
    String driver="com.ibm.db2.jcc.DB2Driver";
    String user="db2admin";
    String pwd="db2admin";
    int patientId;
    int insuranceId;
    String provider;
    double claimAmount;
    String claimStatus;
    Connection conn=null;
    PreparedStatement pstmt;
      DbConnection dbConn;
    public InsuranceDetails()
    {
         dbConn=new DbConnection();
        
    }
    public void setInsuranceDetails(int pid)
    {
      try{
          String query="select PatientId,Provider,InsuranceId,TotalClaim,ClaimStatus from db2admin.Insurance where patientId="+pid;
        ResultSet rs=dbConn.getResultSet(query);
                while(rs.next()){
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
    public double getTotalClaim()
    {
        return claimAmount;
    }
    public String getClaimStatus()
    {
        return claimStatus;
    }
    
    }
