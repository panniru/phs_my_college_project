/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHSServlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import PHS.TestReport;

/**
 *
 * @author srikanth
 */
public class TestsToDisplay extends HttpServlet {
   
   
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        TestReport testReport=new TestReport();
        String initialTests="";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int patientId=Integer.parseInt(request.getParameter("patientId").toString());
        String date=request.getParameter("date");
        try {
            testReport.setPatientId(patientId);
            initialTests=testReport.getInitialTests(patientId,date);
            out.write(initialTests);
        } finally {
            
            out.close();
        }
    } 

  // </editor-fold>

}
