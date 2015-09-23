/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHS; 
import java.sql.*;
import java.util.*;
import java.io.*;
import PHS.DbConnection;
public class TestReport implements Serializable
{
    Statement stmt;
    Connection conn=null;
    ResultSet rs;
    int patientId;
    int testId;
    private String testName;
    String factor;
    String factorValue;
    String comments;
    ArrayList testIdList=new ArrayList();
    ArrayList testNameList=new ArrayList();
    ArrayList dateList=new ArrayList();
    private String isTestOver;
    DbConnection dbConn;
    public TestReport()
    {
        dbConn=new DbConnection();
        
    }
    public void setPatientId(int patientId)
    {
        this.patientId=patientId;
        System.out.println("setter method for patientId:"+this.patientId);
    }
    public void setFactor(String factor)
    {
        this.factor=factor;
        System.out.println("setter method for factor:"+this.factor);
    }
    public void setFactorValue(String factorValue)
    {
        this.factorValue=factorValue;
        System.out.println("setter method for factorValue:"+this.factorValue);
    }
    public void setComments(String comments)
    {
        this.comments=comments;
        System.out.println("setter method for comments:"+this.comments);
    }
    
    public void setTestId(int testId)
    {
        this.testId=testId;
        System.out.println("setter method for testId:"+this.testId);
    }
    /*public void setTestName(ArrayList testName)
    {
        this.testName=testName;
        System.out.println("setter metho for testName:"+this.testName);
    }
   
    public void setDate(ArrayList date)
    {
        this.date=date;
        System.out.println("setter method for date:"+this.date);
    }*/
    public void getTestReport(int patientId)
    {
        String query="SELECT tp.testId,ti.testName,tp.date"+
                     " FROM db2admin.TestPrescribed tp,db2admin.TestInfo ti"+
                     " WHERE tp.testId=ti.testId AND tp.status='WAIT_TEST' AND tp.patientId="+patientId;
        System.out.println(query);
        try
        {
            rs=dbConn.getResultSet(query);
            System.out.println(rs);
            while(rs.next())
            {
            testIdList.add(rs.getInt("testId"));
            testNameList.add(rs.getString("testName"));
            dateList.add(rs.getString("date"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
     }
    public int getPatientId()
    {
        System.out.println("getPatientId:"+patientId);
        return patientId;
    }
//    public int getTestId1()
//    {
//        System.out.println("getTestId1:"+testId1);
//        return testId1;
//    }
//    public String getTestName1()
//    {
//        System.out.println("getTestName1:"+testName1);
//        return testName1;
//    }

    public ArrayList getTestIdList()
    {
        System.out.println("gettestId:"+testIdList);
        return testIdList;
    }
    public ArrayList getTestNameList()
    {
        System.out.println("getTestName:"+testNameList);
        return testNameList;
    }
    public ArrayList getDateList()
    {
        System.out.println("getDate:"+dateList);
        return dateList;
    }

    public void writeTestReport()
    {
         int rowcount=0;
         int updateCount=0;
          PreparedStatement pstmt;
          String insert="INSERT INTO db2admin.PatientTestReport(patientId,testId,factor,factorValue,date,comments)" +
                " VALUES(?,?,?,?,CURRENT TIMESTAMP,?)";
          String update="UPDATE db2admin.TESTPRESCRIBED SET STATUS='TEST_CUNDUCTED' WHERE PATIENTID="+patientId+" AND TESTID="+testId;
          String billInsert="INSERT INTO db2admin.BillDetails(PATIENTID,DETAILS,AMOUNT,BILLDATE )" +
                  " VALUES("+patientId+",'"+testName+" Test',(SELECT Cost FROM db2admin.TestInfo WHERE TestId="+testId+"),CURRENT DATE)";
      try
        {
         
          /*Connection con=null;
          Class.forName(driver);
          con=DriverManager.getConnection(url,user,pwd);*/
           
//        conn.setAutoCommit(false);
        pstmt=dbConn.getPreparedsStatement(insert);
        pstmt.setInt(1,patientId);
        pstmt.setInt(2,testId);
        pstmt.setString(3,factor);
        pstmt.setString(4,factorValue);
//        pstmt.setDate(5,date);
        pstmt.setString(5,comments);
        rowcount=pstmt.executeUpdate();
        dbConn.getDbConnection().commit();
        if(isTestOver.equalsIgnoreCase("Yes"))
        {
         pstmt=dbConn.getPreparedsStatement(update);
         updateCount=pstmt.executeUpdate();
         pstmt=dbConn.getPreparedsStatement(billInsert);
         updateCount=pstmt.executeUpdate();
         dbConn.getDbConnection().commit();
        }
        
      }

        catch(SQLException e)
        {
            e.printStackTrace();
        }
        catch(Exception e1)
        {
            e1.printStackTrace();
        }
    }

    /**
     * @param isTestOver the isTestOver to set
     */
    public void setIsTestOver(String isTestOver) {
        this.isTestOver = isTestOver;
    }

    /**
     * @param testName the testName to set
     */
    public void setTestName(String testName) {
        this.testName = testName;
    }
//    public void updateStatus()
//    {
//        String query="";
//        try
//        {
//            stmt=conn.createStatement();
//            rs=stmt.executeQuery(query);
//            System.out.println(rs);
//            while(rs.next())
//            {
//            testIdList.add(rs.getInt("testId"));
//            testNameList.add(rs.getString("testName"));
//            dateList.add(rs.getString("date"));
//            }
//        }
//        catch(SQLException e)
//        {
//            System.out.println(e);
//        }
//     }
    public String getTestsOnDates(int patientId)
    {
        StringBuffer output=new StringBuffer();
        String testNames="SELECT T.DATE FROM db2admin.TESTPRESCRIBED T WHERE" +
                " T.PatientId="+patientId+" AND STATUS='WAIT_TEST' GROUP BY T.DATE ORDER BY T.Date DESC";
        try{
            output.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th style=\"font-family: italic; font-family: verdana\">Tests Dates:</th></thead><tbody>");
        rs=dbConn.getResultSet(testNames);
        while(rs.next())
        {
            output.append("<tr><td ><a href=\"#\" onclick=\"showTests('"+patientId+"','"+rs.getString(1)+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(1)+"\"></a></td><td >").append(rs.getString(1)).append("</td>");
            output.append("<tr><td colspan=\"2\"><div id='").append(rs.getString(1)).append("' style=\"display: none\"></div><td></tr>");

        }
        output.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }

        return output.toString();

    }
    public String getInitialTests(int patientId,String date)
    {
        StringBuffer initialTests=new StringBuffer();
        String testNames="SELECT T.PATIENTID, T.TESTID ,T.DATE , TI.TESTNAME " +
                "FROM db2admin.TESTPRESCRIBED T, db2admin.TESTINFO TI " +
                "WHERE T.TestID=TI.TestID AND T.PatientId="+patientId+"  AND T.Date='"+date+"'";
        try{
            initialTests.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><tbody>");
        rs=dbConn.getResultSet(testNames);
        while(rs.next())
        {
            initialTests.append("<tr><td ><a href=\"#\" onclick=\"showTestReport('"+patientId+"','"+rs.getString(2)+"','"+date+"')\"><img src=\"images/plus.jpg\" id=\"img"+rs.getString(2)+"\"></td><td><a href=\"#\" onclick=\"showTestReport('"+patientId+"','"+rs.getString(2)+"','"+date+"')\">").append(rs.getString(4)).append("</td>");
            initialTests.append("<tr><td colspan=\"2\"><div id='").append(rs.getString(2)).append("' style=\"display:none\"></div><td></tr>");
            
        }
        initialTests.append("</tbody></table>");
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }
        
        return initialTests.toString();
    }
    public String getDetailReport(int patientId,int testId,String date)
    {
        StringBuffer outReport=new StringBuffer();
        String query="SELECT FACTOR, FACTORVALUE ,COMMENTS FROM db2admin.PATIENTTESTREPORT WHERE PatientId="+patientId+"  AND Date='"+date+"' AND TestId="+testId;
        try{
            rs=dbConn.getResultSet(query);
            outReport.append("<table align='left' style=\"border: 0\" id=\"phs_table\"><thead><th >Factor</th><th >Factor Value</th><th >Comments </th></thead><tbody>");
            while(rs.next())
            {
                outReport.append("<tr><td>").append(rs.getString(1)).append("</td>");
                outReport.append("<td>").append(rs.getString(2)).append("</td>");
                outReport.append("<td>").append(rs.getString(3)).append("</td></tr>");

            }
            outReport.append("</tbody></table>");


        }catch(SQLException se)
        {
            se.printStackTrace();
        }
        return outReport.toString();
    }


        
    }
