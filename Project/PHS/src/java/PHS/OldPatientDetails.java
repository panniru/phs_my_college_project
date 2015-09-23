/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHS;


import java.sql.*;
import java.io.*;
import PHS.DbConnection;
public class OldPatientDetails implements Serializable{
    Connection conn=null;
    PreparedStatement pstmt;
    Statement stmt;
    ResultSet rs;
     int patientId;
     String pName;
     String fName;
     int age;
     String gender;
     String maritualStatus;
     double mNumber;
     String mailId;
     String adress;
     double uniqueNumber;
     String condition="";
     String symptoms="",healthhistory="";
     DbConnection dbConn;
public OldPatientDetails()
{
    dbConn=new DbConnection();
}
public void setUniqueNumber(double uniqueNumber)
{

    this.uniqueNumber=uniqueNumber;
    System.out.println("Unique number is:"+this.uniqueNumber);
}
  public void setPatientId(int patientId)
    {
        this.patientId=patientId;
        System.out.println("Setter method for pname:"+this.patientId);
    }
    public void setPname(String pName)
    {
        this.pName=pName;
        System.out.println("Setter method for provider:"+this.pName);
    }
    public void setFName(String fName)
    {
        this.fName=fName;
        System.out.println("Setter method for insuranceid:"+this.fName);
    }
    public void setGender(String gender)
    {
        this.gender=gender;
        System.out.println("Setter method for claimAmount:"+this.gender);
    }
    public void setAge(int age)
    {
        this.age=age;
        System.out.println("Setter method for claimstatus:"+this.age);
    }
     public void setMaritualStatus(String maritualStatus)
    {
        this.maritualStatus=maritualStatus;
        System.out.println("Setter method for claimstatus:"+this.maritualStatus);
    }
      public void setMnumber(double mNumber)
    {
        this.mNumber=mNumber;
        System.out.println("Setter method for claimstatus:"+this.mNumber);
    }
      public void setMailId(String mailId)
    {
        this.mailId=mailId;
        System.out.println("Setter method for claimstatus:"+this.mailId);
    }
      public void setAdress(String adress)
    {
        this.adress=adress;
        System.out.println("Setter method for claimstatus:"+this.adress);
    }

     public void setCondition(String condition)
    {
        this.condition=condition;
    }
    public void setSymptoms(String symptoms)
    {
        this.symptoms=symptoms;
    }
    public void setHealthHistory(String healthhistory)
    {
        this.healthhistory=healthhistory;

    }
      public void insertOldPatient()
    {
       try{

           String insert="INSERT INTO db2admin.Patientpersonal(PatientId,pName,FRHName,gender,age,MobileNo, maritualStatus,EmailId,address)" +
                " VALUES(?,?,?,?,?,?,?,?,?)";
//         conn.setAutoCommit(false);
         pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setInt(1,patientId);
        pstmt.setString(2,pName);
        pstmt.setString(3,fName);
        pstmt.setString(4,gender);
        pstmt.setInt(5,age);
        pstmt.setDouble(6,mNumber);
        pstmt.setString(7, maritualStatus);
        pstmt.setString(8,mailId);
        pstmt.setString(9,adress);
        pstmt.executeUpdate();
        dbConn.getDbConnection().commit();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }


      }
   public void getOldPatientDetails()
    {
      try{
          
          String query="SELECT PatientId,pName,FRHName,age,gender,MbileNo,EmailId,address FROM db2admin.PatientPersonal WHERE patientId="+uniqueNumber+" OR MbileNo="+uniqueNumber;
          System.out.println(query);
          rs=dbConn.getResultSet(query);
               while(rs.next()){
                    patientId=rs.getInt("PatientId");
                    pName=rs.getString("pName");
                    fName=rs.getString("FRHName");
                    age=rs.getInt("age");
                    gender=rs.getString("gender");
                    mNumber=rs.getDouble("MobileNo");
                    mailId=rs.getString("Emailid");
                    adress=rs.getString("address");
      }
      }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        }
    public int getPatientId()
    {
        System.out.println(patientId);
        return patientId;

    }
    public String getpName()
    {
        System.out.println(pName);
        return pName;
    }
    public String getfName()
    {
        System.out.println(fName);
        return fName;
    }
    public int getAge()
    {
        System.out.println(age);
        return age;
    }
    public String getGender()
    {
        System.out.println(gender);
        return gender;
    }
    public String getmaritualStatus()
    {
        return maritualStatus;
    }
    public double getmNumber()
    {
        return mNumber;
    }
    public String getmailId()
    {
        return mailId;
    }
    public String getadress()
    {
        return adress;
    }

    
   
    

    public void updateOldPatientStatus()throws SQLException
    {
       dbConn.getStatement().executeUpdate(" update db2admin.patienttreatmentdetails set condition="+condition+" symptoms="+symptoms+" healthhistory="+healthhistory+" where patientid="+patientId);
    }

    
    }


    
    
    





 
    
    
    