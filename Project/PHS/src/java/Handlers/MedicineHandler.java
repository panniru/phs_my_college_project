/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Handlers;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.TagSupport;
import javax.servlet.jsp.tagext.Tag;
import java.sql.*;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Anil
 */

public class MedicineHandler extends TagSupport {
    private int patientId;
    private String date;
    private PageContext pagecontext;

    /**
     * Creates new instance of tag handler
     */
    public MedicineHandler() {
        super();

    }
   /* public void setBodyContent(BodyContent bc)
    {
        this.bc=bc;
    }*/
    public void doInit()
    {

    }
    public  ResultSet getResultSet()
    {
        String url="jdbc:db2://localhOst:50000/PHSYSTEM";
        String driver="com.ibm.db2.jcc.DB2Driver";
        String user="db2admin";
        String pwd="db2admin";
        Connection conn=null;
        Statement stmt=null;
        ResultSet rs=null;
        String query="SELECT MedicineName,Type,Usage,Dose,PQuantity,IQuantity" +
                " FROM db2admin.Medicine WHERE PatientId="+patientId+" AND Date='"+date+"'";
        System.out.println(query);
        try{
            Class.forName(driver);
            conn=DriverManager.getConnection(url,user,pwd);
            System.out.println(conn);
            stmt=conn.createStatement();
            rs=stmt.executeQuery(query);
            System.out.println(rs);
           }
        catch(SQLException e)
        {
            System.out.println("Sql Exception Occuerd");
            e.printStackTrace();
        }
        catch(Exception e)
        {
            System.out.println("Exception Occured");
            e.printStackTrace();
        }

        return rs;
    }
    @Override
    public int doStartTag() throws JspException
    {
        try {
               JspWriter out = pageContext.getOut();
            ResultSet rs=getResultSet();
            System.out.println(rs);
            out.println("<table align='center' border='1' class=\"phs_table\"><tr><thead><th>MedicineName</th><th>Type</th><th>Usage</th><th>Dose</th><th>PrescribedQntity</th><th>IssuedQntity</th></tr></thead><tbody>");
            while(rs.next())
            {
                out.println("<tr><td>");
                out.println(rs.getString("MedicineName")+"</td><td>");
                out.println(rs.getString("Type")+"</td><td>");
                out.println(rs.getString("Usage")+"</td><td>");
                out.println(rs.getString("Dose")+"</td><td>");
                out.println(rs.getInt("PQuantity")+"</td><td>");
                out.println(rs.getInt("IQuantity")+"</td></tr>");
            }
            out.println("</tbody></table>");
           } catch (Exception ex) {
            ex.printStackTrace();
        }

        return SKIP_BODY;
    }
    @Override
    public int doEndTag() throws JspException
    {
        return SKIP_BODY;
    }
    /*@Override
    public int doAfterBody() throws JspException {
        try {
            // This code is generated for tags whose bodyContent is "JSP"
            BodyContent bodyCont = getBodyContent();
            JspWriter out = bodyCont.getEnclosingWriter();
            ResultSet rs=getResultSet();
            System.out.println("doAfterMethod Excecuted");
            out.println("<table align="+"center"+"border="+"1><tr><thead><th>MedicineName</th><th>Type</th><th>Usage</th><th>Dose</th><th>PrescribedQntity</th><th>IssuedQntity</th></tr></thead><tbody>");
            while(rs.next())
            {
                out.println("<tr><td>");
                out.println(rs.getString("MedicineName")+"</td><td>");
                out.println(rs.getString("Type")+"</td><td>");
                out.println(rs.getString("Usage")+"</td><td>");
                out.println(rs.getString("Dose")+"</td><td>");
                out.println(rs.getInt("PQuantity")+"</td><td>");
                out.println(rs.getInt("IQuantity")+"</td></tr>");
            }
            out.println("</tbody></table>");
           } catch (Exception ex) {
            ex.printStackTrace();
        }

        return SKIP_BODY;
    }*/

    /**
     * Handles exception from processing the body content.
     */
    public void setPatientId(int patientId) {
        this.patientId = patientId;
        System.out.println("setPatientId Mathod:"+this.patientId);
    }
    public void setDate(String date)
    {
        this.date=date;
        System.out.println("SetDate Method:"+this.date);
    }
}
