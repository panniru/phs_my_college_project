package PHS;
import java.sql.*;
import java.io.*;
import java.text.SimpleDateFormat;//<editor-fold defaultstate="collapsed" desc="comment">
     
        //</editor-fold>
;
import java.util.Date;
import PHS.DbConnection;
public class Patient implements Serializable{
    int rowcount;
    PreparedStatement pstmt;
    Statement stmt;
    ResultSet rs;
    Connection conn;
    long patientId;
    String pname;
    String fname;
    int age;
    String gender;
    String mstatus;
    long mnumber;
    String email;
    String symptoms;
    String condition;
    String address;
    DbConnection dbConn;
    public Patient()
    {
        dbConn=new DbConnection();
        //conn=dbConn.getDbConnection();
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
    public void setMstatus(String mstatus)
    {
        this.mstatus=mstatus;
        System.out.println("Setter method for mstatus:"+this.mstatus);
    }
    public void setGender(String gender)
    {
        this.gender=gender;
        System.out.println("Setter method for gender:"+this.gender);
    }
    public void setMnumber(long mnumber)
    {
        
        this.mnumber=mnumber;
        
    }
    public void setAddress(String address)
    {
        this.address=address;
        System.out.println("Setter method for address:"+this.address);
    }
    public void setEmail(String email)
    {
        this.email=email;
        System.out.println("Setter method for email:"+this.email);
    }
    public void setSymptoms(String symptoms)
    {
        this.symptoms=symptoms;
        System.out.println("Setter method for symptoms:"+this.symptoms);
    }

    public void setCondition(String condition)
    {
        this.condition=condition;
        System.out.println("Setter method for conditin:"+this.condition);
    }
    public long newPatientInsert()
    {
        
        String insert="INSERT INTO db2admin.PATIENTPERSONAL(PatientId,PName,FRHname,Age,Gender,MaritualStatus,mbileNO,EmailID,Address)" +
                " VALUES(?,?,?,?,?,?,?,?,?)";
       int count1=0;
       int count2=0;
       int count3=0;
      patientId=generatePatientId();
        if(patientId!=0){
             try{
            pstmt=dbConn.getPreparedsStatement(insert);
            pstmt.setLong(1,patientId);
            pstmt.setString(2,pname.toUpperCase());
            pstmt.setString(3,fname.toUpperCase());
            pstmt.setInt(4,age);
            pstmt.setString(5,gender.toUpperCase());
            pstmt.setString(6,mstatus.toUpperCase());
            pstmt.setLong(7,mnumber);
            pstmt.setString(8,email);
            pstmt.setString(9,address);
            count1=pstmt.executeUpdate();
          insert="INSERT INTO db2admin.PATIENTTREATMENTDETAILS(PatientId,Symptoms,Condition,Status) VALUES (?,?,?,?)";
            pstmt=dbConn.getPreparedsStatement(insert);
            pstmt.setLong(1,patientId);
            pstmt.setString(2,symptoms);
            pstmt.setString(3,condition);
            pstmt.setString(4,"WAIT_ASSIGN");
            count2=pstmt.executeUpdate();
             insert="INSERT INTO db2admin.BillDetails VALUES ("+patientId+",'Registration',300,CURRENT DATE,'NO')";
             count3=dbConn.getStatement().executeUpdate(insert);
            dbConn.getDbConnection().commit();
            }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
       }
       if(count1==1 && count2==1 && count3==1)
       {
           return patientId;
       }
       else
       {
          return 0;
       }



    }
    public long generatePatientId()
    {
        long currDate=0;
        SimpleDateFormat sd =new SimpleDateFormat("YYMMDD");
       Date date=new Date();
            String dateString=sd.format(date);
          String temp=null;
             currDate=Integer.parseInt(dateString);
             System.out.println("Pid"+currDate);
            String queryPID="SELECT NVL(MAX(PatientID),0) PatientId FROM db2admin.PatientPersonal";
            try{
                rs=dbConn.getResultSet(queryPID);
                while(rs.next())
                {
                     temp=rs.getString("PatientId");
                     System.out.println(temp);
                     if(!temp.equalsIgnoreCase("0"))
                            temp.substring(0,6);
//                     else
//                         temp=temp;

                }
            }catch(SQLException e)
            {
                e.printStackTrace();
            }
            if( currDate > Integer.valueOf(temp))
            {
                currDate=Long.parseLong(currDate+"001");
                System.out.println("generated Patient Id is:"+currDate);
                return currDate;
            }
            else
            {
             System.out.println("generated Patient Id is:"+(Long.valueOf(temp)+1));
             return (Long.valueOf(temp)+1);
            }
    }
    public String getHealthHistory(int patientId)
    {
        StringBuffer output=new StringBuffer();
        String query="SELECT Date FROM db2admin.PRESCRIPTION WHERE PATIENTID="+patientId+" GROUP BY Date ORDER BY Date DESC" ;
        System.out.println("query"+query);
        rs=dbConn.getResultSet(query);
        output.append("<table id=\"phs_table\" align=\"left\"><thead><th>Click On Dates</th></thead><tbody>");
        try{
            while(rs.next())
            {
                output.append("<tr><td  colspan=\"3\"><a href=\"#\" onclick=\"showHistory('"+rs.getString(1)+"','"+patientId+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(1)+"\">&nbsp;" ).append(rs.getString(1)).append("</td></tr>");
                output.append("<tr><td><div id=\""+rs.getString(1)+"\" style=\"display: none\"></td></tr>");
            }
            output.append("</tbody></table>");

        }catch(SQLException se)
        {
            se.printStackTrace();
        }
        return output.toString();
    }
    public String showDetailHistory(String date,int patientId)
    {
        StringBuffer output=new StringBuffer();
        String query="SELECT DOCTORID,NEXTVISIT,COMMENTS FROM db2admin.PRESCRIPTION WHERE PATIENTID="+patientId+" AND Date='"+date+"'" ;
        System.out.println("query"+query);
        rs=dbConn.getResultSet(query);
        output.append("<table id=\"phs_table\"><tbody>");
        try{
            while(rs.next())
            {
                output.append("<tr><td><textarea style=\"width: 715px; height: 54px;\" rows=\"3\" cols=\"20\" readonly>DoctrId:" ).append(rs.getString(1)).append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp NextVisit:").append(rs.getString(2)).append(" \n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                output.append(rs.getString(3)).append("</textarea></td></tr>");
            }
            output.append("</tbody></table>");

        }catch(SQLException se)
        {
            se.printStackTrace();
        }

        return output.toString();
    }
}
