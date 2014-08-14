/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Professor;
import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class ListarProfessorCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        String nome = request.getParameter("nome");
        
        List<Professor> professores = new ArrayList<>();
        
        try {
        professores = new UsuarioDAO().ListarProfessoresPorNome(nome);
        } catch (SQLException ex) {
            Logger.getLogger(ListarProfessorCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("professor", professores);
        System.out.println("+++++++++++++size + = " + professores.size());
        return ("ListarProfessorPorNome.jsp");
        
    }
    
    
}
