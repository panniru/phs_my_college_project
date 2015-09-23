/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHS;
import java.sql.*;
import java.io.*;
import PHS.DbConnection;

public class ForgotPassword implements Serializable
{
    String url="jdbc:db2://localhOst:50000/PHSYSTEM";
    String driver="com.ibm.db2.jcc.DB2Driver";
    String user="db2admin";
    String pwd="db2admin";
    Connection conn=null;
    Statement stmt;
    ResultSet rs;

    String uid;
    String answer;
    String uname;
    String pass;
    DbConnection dbConn;
    public ForgotPassword()
    {
         dbConn=new DbConnection();
    }

    public void setUid(String uid)
    {
        this.uid=uid;
        System.out.println("Setter Method of patientId: "+this.uid);
    }
    public void setAnswer(String answer)
    {
        this.answer=answer;
        System.out.println("Setter Method of patientId: "+this.answer);
    }

    public void getPasswordDetails()
    {
        String query="SELECT username,password FROM db2admin.LOGIN WHERE Uid="+"'"+uid+"'"+" AND HintAnswer="+"'"+answer+"'";
        System.out.println(query);

        try
        {
            rs=dbConn.getResultSet(query);
            System.out.println(rs);
            while(rs.next())
            {
            uname=rs.getString("username");
            pass=rs.getString("password");

            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
     public String getUname()
    {
        System.out.println("getPatientId:"+uname);
        return uname;
    }
    public String getPass()
    {
        System.out.println("getPatientId:"+pass);
        return pass;
    }

}
