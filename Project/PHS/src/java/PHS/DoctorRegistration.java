/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PHS;

/**
 *+
 * @author Kranthi
 */
import java.sql.*;
import java.io.*;
import PHS.DbConnection;
public class DoctorRegistration implements Serializable{
    String url="jdbc:db2://localhost:50000/PHSYSTEM";
    String driver="com.ibm.db2.jcc.DB2Driver";
    String user="db2admin";
    String pwd="db2admin";
    int rowcount;
    PreparedStatement pstmt;
    Connection conn=null;
    int doctorID;
    String dname;
    double contactno;
    String uname;
    String pword;
    String splz;
    int exp;
    String hquestion;
    String hanswer;
    DbConnection dbConn;
    public DoctorRegistration()
    {
        dbConn=new DbConnection();
    }
    public void setDname(String dname)
    {
        this.dname=dname;
        System.out.println("Setter method for dname:"+this.dname);
    }
    public void setContactno(double contactno)
    {
        this.contactno=contactno;
        System.out.println("Setter method for mobile:"+this.contactno);
    }
    public void setUname(String uname)
    {
        this.uname=uname;
        System.out.println("Setter method for uname:"+this.uname);
    }
    public void setPword(String pword)
    {
        this.pword=pword;
        System.out.println("Setter method for pwd:"+this.pword);
    }
    public void setSpecialization(String splz)
    {
        this.splz=splz;
        System.out.println("Setter method for splz:"+this.splz);
    }
    public void setExperience(int exp)
    {
        this.exp=exp;
        System.out.println("Setter method for exp:"+this.exp);
    }
    public void setHquestion(String hquestion)
    {
        this.hquestion=hquestion;
        System.out.println("Setter method for hquestion:"+this.hquestion);
    }
    public void setHanswer(String hanswer)
    {
        this.hanswer=hanswer;
        System.out.println("Setter method for hanswer:"+this.hanswer);
    }
    /*private int generateID()
    {

        return doctorID;
    }*/
    public void doctorReg()
    {
       try{
           System.out.println("doctorreg method");

           String insert="INSERT INTO db2admin.DOCTORREGISTRATION (DName,ContactNO,UserName,Password,Specialization,Experience,HintQuestion,HintAnswer)" +
                " VALUES(?,?,?,?,?,?,?,?)";
//        conn.setAutoCommit(false);
        pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setString(1,dname);
        pstmt.setDouble(2,contactno);
        pstmt.setString(3,uname);
        pstmt.setString(4,pword);
        pstmt.setString(5,splz);
        pstmt.setInt(6,exp);
        pstmt.setString(7,hquestion);
        pstmt.setString(8,hanswer);
        pstmt.executeUpdate(); 
        dbConn.getDbConnection().commit();
        System.out.println("doctorReg:"+pstmt);
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

    }


