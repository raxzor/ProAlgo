/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Professor;
import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class PrepareEditProfessorCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        Professor professor = new Professor();
        Integer idProfessor = new  Integer(request.getParameter("idProfessor"));
        try {
           professor = new UsuarioDAO().getProfessor(idProfessor);
        } catch (SQLException ex) {
            Logger.getLogger(PrepareEditProfessorCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("professor", professor);
        return ("CadastrarProfessor.jsp");
    
    }
    
}
