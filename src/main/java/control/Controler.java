/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gilmar
 */
public class Controler extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer acao = new Integer(request.getParameter("action"));
        String nextPage = "Inicio.jsp";
        System.out.println("ACTION = " + acao);
        if(request.getSession().getAttribute("usuario") == null){
            if(acao == 10){
                nextPage = Helper.getInstance().getCommand(acao).execute(request);
                System.out.println("NEXTPAGE = " + nextPage);
            }else{
//                hhhh
                System.out.println("NENHUMA AÇÃO REALIZADA PQ NÃO EXISTE USUARIO LOGADO");
            }
        }else{
            nextPage = Helper.getInstance().getCommand(acao).execute(request);
        }
        request.getRequestDispatcher(nextPage).forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
}
