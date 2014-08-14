/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.AlunoDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class DeletarAlunoCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        Integer id = new Integer(request.getParameter("idAluno"));
        try {
            new AlunoDAO().deletaAluno(id);
        } catch (SQLException ex) {
            Logger.getLogger(DeletarAlunoCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ("ListarAlunosPorNome.jsp");
    }
    }

