/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.EstatisticasAlunoDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class ListarEstatisticas implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        EstatisticasAlunoDAO estatisticasAlunoDAO = new EstatisticasAlunoDAO();
       
        try {
            request.setAttribute("estatisticas", estatisticasAlunoDAO.getTodasJogadas());
        } catch (SQLException ex) {
            Logger.getLogger(ListarEstatisticas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "EstatisticasAluno.jsp";
    }
    
}
