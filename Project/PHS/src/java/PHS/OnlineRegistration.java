/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PHS;


import java.sql.*;
import java.io.*;
import PHS.DbConnection;
public class OnlineRegistration implements Serializable{
    int rowcount;
    PreparedStatement pstmt;
    Connection conn=null;
    int patientID;
    String pname;
    String fname;
    int age;
    String gender;
    double mobileno;
    String uname;
    String pword;
    String address;
    String hquestion;
    String hanswer;
    DbConnection dbConn;
    public OnlineRegistration()
    {
        dbConn=new DbConnection();
        
    }
    public void setPname(String pname)
    {
        this.pname=pname;
        System.out.println("Setter method for pname:"+this.pname);
    }
    public void setFname(String fname)
    {
        this.fname=fname;
        System.out.println("Setter method for fname:"+this.fname);
    }
    public void setAge(int age)
    {
        this.age=age;
        System.out.println("Setter method for age:"+this.age);
    }
     public void setGender(String gender)
    {
        this.gender=gender;
        System.out.println("Setter method for gender:"+this.gender);
    }
    public void setMobileno(double mobileno)
    {
        this.mobileno=mobileno;
        System.out.println("Setter method for mobile:"+this.mobileno);
    }
    public void setUname(String uname)
    {
        this.uname=uname;
        System.out.println("Setter method for uname:"+this.uname);
    }
    public void setPword(String pword)
    {
        this.pword=pword;
        System.out.println("Setter method for symptoms:"+this.pword);
    }
    public void setAddress(String address)
    {
        this.address=address;
        System.out.println("Setter method for address:"+this.address);
    }
    public void setHquestion(String hquestion)
    {
        this.hquestion=hquestion;
        System.out.println("Setter method for conditin:"+this.hquestion);
    }
    public void setHanswer(String hanswer)
    {
        this.hanswer=hanswer;
        System.out.println("Setter method for conditin:"+this.hanswer);
    }
    private int generateID()
    {

        return patientID;
    }
    public void onlinePatientRegistration()
    {
       try{
           System.out.println("Method of onlinePatientRegistration");

           String insert="INSERT INTO db2admin.PATIENTREGISTRATION (PName,FName,Age,Gender,MobileNO,UserName,Password,Address,HintQuestion,HintAnswer)" +
                " VALUES(?,?,?,?,?,?,?,?,?,?)";
//        conn.setAutoCommit(false);
        pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setString(1,pname);
        pstmt.setString(2,fname);
        pstmt.setInt(3,age);
        pstmt.setString(4,gender);
        pstmt.setDouble(5,mobileno);
        pstmt.setString(6,uname);
        pstmt.setString(7,pword);
        pstmt.setString(8,address);
        pstmt.setString(9,hquestion);
        pstmt.setString(10,hanswer);
        pstmt.executeUpdate();
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
       }

    }


