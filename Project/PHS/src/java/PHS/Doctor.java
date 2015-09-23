package PHS;
import java.util.*;
import java.sql.*;
import PHS.DbConnection;
public class Doctor {
    int doctorId;
    int patientId;
    String deptName;
    ArrayList nameList=new ArrayList();
    ArrayList idList=new ArrayList();
    ArrayList startTime=new ArrayList();
    ArrayList endTime=new ArrayList();
    Statement stmt;
    PreparedStatement pstmt;
    ResultSet rs;
    DbConnection dbConn;
    public Doctor()
    {
        dbConn=new DbConnection();

    }
    public void setPatientId(int patientId)
    {
        this.patientId=patientId;
        System.out.println("Setter method for patientId:"+patientId);
    }
    public void setDeptName(String deptName)
    {
        this.deptName=deptName;
        System.out.println("setDeptnameMethod:"+this.deptName);
    }
    public void setDoctorId(int doctorId)
    {
        this.doctorId=doctorId;
        System.out.println("Setter Method For doctorId:"+this.doctorId);
    }
    public void setAvailableDoctors()
    {
        /*String query="SELECT DoctorName,StartTime,EndTime" +
                " FROM Doctor D,WorkTimings W ,Department Dept" +
                " WHERE D.deptNo=Dept.DeptNo AND D.DoctorId=W.Uid AND FLAG='YES'" +
                " AND Day=UCASE(SUBSTR(DAYNAME(CURRENT DATE),1,3)) AND Dname="+"'UCASE("+deptName+")'";*/
        String query="SELECT DoctorId,DoctorName,StartTime,EndTime FROM db2admin.Doctor D,db2admin.WorkTimings W ,db2admin.Department dp" +
                " WHERE D.deptno=Dp.deptno AND D.DoctorId=W.Uid" +
                " AND Day=UCASE(SUBSTR(DayName(CURRENT DATE),1,3)) AND FLAG='YES' " +
                "AND DEPTNAME=UCASE('"+deptName+"')";
        System.out.println(query);
        try{
            rs=dbConn.getResultSet(query);
            while(rs.next())
            {
                nameList.add(rs.getString("DoctorName"));
                idList.add(rs.getInt("DoctorId"));
                startTime.add(rs.getTime("StartTime"));
                endTime.add(rs.getTime("endTime"));
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    public int updatePatient()
    {
        String query1="INSERT INTO db2admin.BillDetails (PatientId,Details,Amount,BillDate) " +
                "VALUES(?,'DOCTOR FEE',(SELECT ConsultationFee FROM db2admin.Doctor WHERE DoctorId="+doctorId+"),CURRENT DATE)";
        String query="UPDATE db2admin.PatientTreatmentDetails SET (DoctorId,Status)=("+doctorId+",'WAIT_TREATMENT') " +
                "WHERE PatientId="+patientId;
        System.out.println(query);
        int urows=0;
        try{
//            conn.setAutoCommit(false);
         urows=dbConn.getStatement().executeUpdate(query);
         pstmt=dbConn.getPreparedsStatement(query1);
         pstmt.setInt(1,patientId);
         pstmt.executeUpdate();
         dbConn.getDbConnection().commit();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return urows;
    }
    public ArrayList getNameList()
    {
        System.out.println(nameList);
        return nameList;
    }
    public ArrayList getIdList()
    {
        return idList;
    }
    public ArrayList getStartTime()
    {
        System.out.println(startTime);
        return startTime;
    }
    public ArrayList getendTime()
    {
        System.out.println(endTime);
        return endTime;
    }
    public String getDeptDoctors(String deptno)
    {
        StringBuilder output=new StringBuilder();
        String query="SELECT DOCTORID,DOCTORNAME,DESIGNATION FROM db2admin.Doctor WHERE DEPTNO="+deptno;
         try{
            output.append("<table align='center' style=\"border: 0\" id=\"phs_table\"><tbody>");
        rs=dbConn.getResultSet(query);
        while(rs.next())
        {
            output.append("<tr><td ><a href=\"#\" onclick=\"showAvailability('"+rs.getString(1)+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(1)+"\"></td><td>").append(rs.getString(2)).append("(<font style=\"font-family: italic ;font-size: small\">").append(rs.getString(3)).append(")</td>");
            output.append("<tr><td colspan=\"3\"><div id='").append(rs.getString(1)).append("' style=\"display:none\"></div><td></tr>");

        }
        output.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }


        return output.toString();
    }
    public String getAvailability(String doctorId)
    {
        StringBuilder output=new StringBuilder();
        String query="SELECT DAY,STARTTIME,ENDTIME FROM db2admin.WORKTIMINGS WHERE FLAG='YES' AND UID="+doctorId;
         try{
            output.append("<table align='center' style=\"border: 0\" id=\"phs_table\"><thead><th >Day</th><th >StartTime</th><th >EndTime</th></thead><tbody>");
        rs=dbConn.getResultSet(query);
        while(rs.next())
        {
            output.append("<tr><td>").append(rs.getString(1)).append("</td>");
                output.append("<td>").append(rs.getString(2)).append("</td>");
                output.append("<td>").append(rs.getString(3)).append("</td></tr>");
            }
        output.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }


        return output.toString();
        }

}
