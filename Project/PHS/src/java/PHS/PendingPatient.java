package PHS;
import java.sql.*;
import java.util.*;
import java.io.*;
import PHS.DbConnection;
public class PendingPatient implements Serializable
{
    /*final String WAIT_ASSIGN="WAIT_ASSIGN";
    final String WAIT_TREATMENT="WAIT_TREATMENT";
    final String WAIT_MEDICINE="WAIT_MADICINE";
    final String WAIT_TEST="WAIT_TEST";
    final String MEDICINE_ISSUED="MEDICENE_ISSUED";
    final String TEST_CONDUCTED="TEST_CONDUCTED";*/
    Statement stmt;
    Connection conn=null;
    ResultSet rs;
    String role;
    int totalNum;
    ArrayList patientIdList=new ArrayList();
    ArrayList pnameList=new ArrayList();
    ArrayList status=new ArrayList();
    String pname;
    String condition;
    String symptoms;
    String healthHistory;
    String gender;
    int age;
    int patientId;
    int doctorId;
    DbConnection dbConn;
    /*ArrayList nameList=new ArrayList();
    ArrayList idList=new ArrayList();
    ArrayList startTime=new ArrayList();
    ArrayList endTime=new ArrayList();
    String deptName;*/
    public PendingPatient()
    {
        dbConn=new DbConnection();
        
    }
    public void setRole(String role)
    {
        this.role=role;
        System.out.println("Seetter Method For Role:"+this.role);
    }
    public void setDoctorId(int doctorId)
    {
        this.doctorId=doctorId;
        System.out.println("Seetter Method For doctorId:"+this.doctorId);
    }
    public void setPendingPatients()
    {
        String query="";
        if(role.equalsIgnoreCase("DepartmentAdmin"))
        {
            System.out.println("Deptadmin excecuted");
            query="SELECT PP.PatientId PatientID,Pname,Status" +
                    " FROM db2admin.PatientPersonal PP , db2admin.PatientTreatmentDetails PT" +
                    " WHERE PP.PatientId=PT.PatientID AND" +
                    " Status='WAIT_ASSIGN' ";
        }
        else if(role.equalsIgnoreCase("Doctor"))
        {
            query="SELECT PP.PatientId PatientID,Pname,Status" +
                    " FROM db2admin.PatientPersonal PP , db2admin.PatientTreatmentDetails PT" +
                    " WHERE PP.PatientId=PT.PatientID AND" +
                    " Status='WAIT_TREATMENT' AND PT.DoctorId="+doctorId;
        }
        else if(role.equalsIgnoreCase("LabTechnician"))
        {
            query="SELECT PP.PatientId PWAIT_TREATMENTatientID,Pname,Status" +
                    " FROM db2admin.PatientPersonal PP , db2admin.PatientTreatmentDetails PT" +
                    " WHERE PP.PatientId=PT.PatientID AND" +
                    " Status='WAIT_TEST' ";
        }
        else if(role.equalsIgnoreCase("Pharmacist"))
        {
            query="SELECT PP.PatientId PatientID,Pname,Status" +
                    " FROM db2admin.PatientPersonal PP , db2admin.PatientTreatmentDetails PT" +
                    " WHERE PP.PatientId=PT.PatientID AND" +
                    " Status='WAIT_MEDICINE' ";
        }
        else if(role.equalsIgnoreCase("InsuranceProvider"))
        {
            query="SELECT PP.PatientId PatientID,Pname,Status" +
                    " FROM db2admin.PatientPersonal PP , db2admin.PatientTreatmentDetails PT" +
                    " WHERE PP.PatientId=PT.PatientID AND" +
                    " Status='WAIT_CLAIM' ";
        }
        try{
        rs=dbConn.getResultSet(query);
        while(rs.next())
        {
//            System.out.println("trying to reading ........"+rs.getDouble("PatientID"));
           patientIdList.add(rs.getInt("PatientID"));
//           System.out.println("overrrr ........");
           pnameList.add(rs.getString("Pname"));
           status.add(rs.getString("Status"));
        }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    public void setTotalNum()
    {
        String query="";
        if(role.equalsIgnoreCase("DepartmentAdmin"))
        {
            System.out.println("total number method executing");
            query="SELECT COUNT(*) TotalNum "+
                    " FROM db2admin.PatientTreatmentDetails"+
                    " WHERE Status='WAIT_ASSIGN' ";
        }
        else if(role.equalsIgnoreCase("Doctor"))
        {
            query="SELECT COUNT(*) TotalNum "+
                    " FROM db2admin.PatientTreatmentDetails"+
                    " WHERE Status='WAIT_TREATMENT' AND DoctorId="+doctorId;
        }
        else if(role.equalsIgnoreCase("LabTechnician"))
        {
            query="SELECT COUNT(*) TotalNum "+
                    " FROM db2admin.PatientTreatmentDetails"+
                    " WHERE Status='WAIT_TEST' ";
        }
        else if(role.equalsIgnoreCase("Pharmacist"))
        {
            query="SELECT COUNT(*) TotalNum "+
                    " FROM db2admin.PatientTreatmentDetails"+
                    " WHERE Status='WAIT_MEDICINE' ";
        }
        else if(role.equalsIgnoreCase("IsuranceProvider"))
        {
            query="SELECT COUNT(*) TotalNum "+
                    " FROM db2admin.PatientTreatmentDetails"+
                    " WHERE Status='WAIT_CLAIM' ";
        }
        try{
            rs=dbConn.getResultSet(query);
            while(rs.next())
            {
                this.totalNum=rs.getInt("TotalNum");
            }
          }
        catch(SQLException e)
        {
            e.printStackTrace();
        }

    }
    public void setPatientDetails()
    {


        String query=" SELECT PP.Pname,PP.age,PP.gender,PT.HealthHistory,PT.Symptoms,PT.Condition" +
                " FROM db2admin.PatientPersonal PP,db2admin.PatientTreatmentDetails PT" +
                " WHERE PP.PatientId=PT.PatientID AND " +
                "PP.PatientID=" + patientId;

        System.out.println("q="+query);
        try{
            rs=dbConn.getResultSet(query);
            while(rs.next())
            {
                pname=rs.getString("Pname");
                age=rs.getInt("age");
                gender=rs.getString("gender");
                healthHistory=rs.getString("HealthHistory");
                symptoms=rs.getString("Symptoms");
                condition=rs.getString("Condition");
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    public void setPatientId(int patientId)
    {

        this.patientId=patientId;
        System.out.println("setPatientId method:"+patientId);
    }
    public int getPatientId()
    {
        return patientId;
    }
    public String getPname()
    {
        System.out.println("getPname:"+pname);
        return pname;
    }
    public int getAge()
    {
        System.out.println("getPname:"+age);
        return age;
    }
    public String getGender()
    {
        System.out.println("getPname:"+gender);
        return gender;
    }
    public String getHealthHistory()
    {
        return healthHistory;
    }
    public String getSymptoms()
    {
        return symptoms;
    }
    public String getCondition()
    {
        return condition;
    }
    public int getTotalNum()
    {
        return totalNum;
    }
    public ArrayList getPatientIDList()
    {
        return patientIdList;
    }
    public ArrayList getPnameList()
    {
       return pnameList;

    }
    public ArrayList getstatus()
    {
        return status;
    }     
}
