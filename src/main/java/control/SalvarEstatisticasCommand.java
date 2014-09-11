/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Usuario;
import dao.EstatisticasAlunoDAO;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class SalvarEstatisticasCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        String viviano = "Nome " + ((Usuario) request.getSession().getAttribute("usuario")).getNome() + " Data " +Calendar.getInstance().getTime()+ " Algoritmo " +request.getParameter("algoritmo") + " Resultado " + request.getParameter("result");
        
        EstatisticasAlunoDAO estatisticasAlunoDAO = new EstatisticasAlunoDAO();
        try {
            System.out.println("=-=-=-=--=-=-=-=--=-");
            System.out.println(estatisticasAlunoDAO.getEstatistica(new Date(Calendar.getInstance().getTimeInMillis()), ((Usuario) request.getSession().getAttribute("usuario")).getId(), request.getParameter("algoritmo")));
        } catch (SQLException ex) {
            Logger.getLogger(SalvarEstatisticasCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
//        System.out.println("");
        return viviano;
    }
    
}
