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
import javax.servlet.RequestDispatcher;
import PHS.TestReport;
/**
 *
 * @author srikanth
 */
public class TestReportProcess extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        TestReport testReport=new TestReport();
        int patientId=Integer.parseInt(request.getParameter("patientId"));
        int testId=Integer.parseInt(request.getParameter("testId"));
        String testName=request.getParameter("testName").toString();
        String factor=request.getParameter("factor").toString();
        String factorValue=request.getParameter("factorValue").toString();
        String comments=request.getParameter("comments").toString();
        String isTestOver=request.getParameter("isTestOver").toString();
        testReport.setPatientId(patientId);
        testReport.setTestId(testId);
        testReport.setIsTestOver(isTestOver);
        testReport.setComments(comments);
        testReport.setFactor(factor);
        testReport.setFactorValue(factorValue);
        testReport.setTestName(testName);
        testReport.writeTestReport();
        request.setAttribute("patientId", patientId);
        request.setAttribute("testId", testId);
        request.setAttribute("testName", testName);
        if(isTestOver.equalsIgnoreCase("Yes"))
        {
            RequestDispatcher dispatcher=request.getRequestDispatcher("ViewTestReport.jsp");
            dispatcher.forward(request, response);
        }
        else
        {
            RequestDispatcher dispatcher=request.getRequestDispatcher("WriteTestReport.jsp");
            dispatcher.forward(request, response);
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
