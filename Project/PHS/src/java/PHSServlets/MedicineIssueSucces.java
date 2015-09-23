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
import PHS.MedicinePrescribe;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author srikanth
 */
public class MedicineIssueSucces extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        MedicinePrescribe medicine=new MedicinePrescribe();
        response.setContentType("text/html;charset=UTF-8");
        int patientId=Integer.parseInt(request.getParameter("patientId").toString());
        int total=Integer.parseInt(request.getParameter("total").toString());
        String cart=request.getParameter("cart");
        String[] cartSpilt=null;
        cartSpilt=cart.split(",");
        HashMap mMap=new HashMap();
       String output="";
        
         for(int i=0;i<cartSpilt.length;i++)
         {
             String[] innerSplit=null;
             innerSplit=cartSpilt[i].split("_");
             mMap.put(innerSplit[0],innerSplit[1]);

         }

        PrintWriter out = response.getWriter();
        output=medicine.updateMedicineIssued(mMap, patientId, total);
        out.write(output);
        try {
           
        } finally { 
            out.close();
        }
    } 

    
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
