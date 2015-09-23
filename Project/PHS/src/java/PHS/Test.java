
package PHS;
import java.sql.*;
import java.io.*;
import java.util.*;
import PHS.DbConnection;
public class Test implements Serializable {
    PreparedStatement pstmt;
    Connection conn=null;
    Statement stmt;
    ResultSet rs;
    ArrayList testsList=new ArrayList();
    int patientId;
    int doctorId;
    String testName;
    String comment;
    String nextVisit;
    int dd;
    int mm;
    int yyyy;
    java.util.Date date=new java.util.Date(00-00-0000);
    DbConnection dbConn;
    private int CommentedRecords;
    public Test()
    {
        dbConn=new DbConnection();
        
    }
    public void setPatientId(int patientId)
    {
        this.patientId=patientId;
        System.out.println("Setter Method of patientId: "+this.patientId);
    }
    public void setDoctorId(int doctorId)
    {
        this.doctorId=doctorId;
        System.out.println("Setter Method of patientId: "+this.doctorId);
    }
    public void setTestName(String testName)
    {
        this.testName=testName;
        System.out.println("Setter Method of patientId: "+this.testName);
    }
    public void setComment(String comment)
    {
        this.comment=comment;
        System.out.println("Setter Method For comment"+this.comment);
    }
    public void setdd(int dd)
    {
        this.dd=dd;
        System.out.println("Setter Mathod For DD:"+this.dd);
    }
    public void setmm(int mm)
    {
        this.mm=mm;
        System.out.println("Setter Mathod For MM:"+this.mm);
    }
    public void setyyyy(int yyyy)
    {
        this.yyyy=yyyy;
        System.out.println("Setter Mathod For YYYY:"+this.yyyy);
    }
    
    public int writeComment()
    {
        int rowCount=0;
        nextVisit=mm+"/"+dd+"/"+yyyy;
        String query="INSERT INTO db2admin.Prescription (PatientId,DoctorId,Date,NextVisit,Comments) " +
                "VALUES("+patientId+","+doctorId+",CURRENT DATE,'"+nextVisit+"','"+comment+"')";
        System.out.println("query"+query);
        try{
//            stmt=conn.createStatement();
            rowCount=dbConn.getStatement().executeUpdate(query);
            /*pstmt=conn.prepareStatement(query);
            pstmt.setInt(1,patientId);
            pstmt.setInt(2, doctorId);
            pstmt.setString(4,nextVisit);
            pstmt.setString(5,comment);
            rowCount=pstmt.executeUpdate();*/
            dbConn.getDbConnection().commit();
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return rowCount;
    }
    public ArrayList setTestsList()
    {
        String query="SELECT TestName FROM db2admin.TestInfo";
        try{
            rs=dbConn.getResultSet(query);
            while(rs.next())
            {
                testsList.add(rs.getString("TestName"));
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return testsList;
    }
    public int updatePatientrecord()
    {
        int rowCount=0;
        String query="INSERT INTO db2admin.TestPrescribed(PatientId,DoctorId,TestId,Date,Status) " +
                "VALUES(?,?,(SELECT TestId FROM db2admin.TestInfo WHERE TestName='"+testName+"'),CURRENT TIMESTAMP,'WAIT_TEST')";
        System.out.println(query);
        try{
        pstmt=dbConn.getPreparedsStatement(query);
        pstmt.setInt(1,patientId);
        pstmt.setInt(2,doctorId);
        rowCount=pstmt.executeUpdate();
        System.out.println("Prepared Statement Return:"+pstmt);
        dbConn.getDbConnection().commit();
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return rowCount;
    }

    /**
     * @return the CommentedRecords
     */
    public int getCommentedRecords() {
        return CommentedRecords;
    }
}
