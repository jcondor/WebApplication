/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package App.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LAB704-00
 */
@WebServlet(name = "EnviarArchivoServlet", urlPatterns = {"/EnviarArchivoServlet"})
public class EnviarArchivoServlet extends HttpServlet {

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
                response.setHeader("Content-Disposition", "attachment; filename=html.pdf");
		response.setContentType("application/pdf");
		File dir = new File("c:\\"); // no olvidar los dobles slash
		File f = new File(dir, "html.pdf");
		byte[] bytearray = new byte[(int) f.length()];
		FileInputStream is = new FileInputStream(f);
		is.read(bytearray);
		OutputStream os = response.getOutputStream();
		os.write(bytearray);
		os.flush();

    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
