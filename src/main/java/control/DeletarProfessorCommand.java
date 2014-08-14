/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;


/**
 *
 * @author Gilmar
 */
public class DeletarProfessorCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        
        Integer id = new Integer(request.getParameter("idProfessor"));
        try {
            new UsuarioDAO().deletaProfessor(id);
        } catch (SQLException ex) {
            Logger.getLogger(DeletarProfessorCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ("ListarProfessorPorNome.jsp");
    }

}