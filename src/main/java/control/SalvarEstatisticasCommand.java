/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import beans.Jogada;
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
        String user = "Nome " + ((Usuario) request.getSession().getAttribute("usuario")).getNome() + " Data " +Calendar.getInstance().getTime()+ " Algoritmo " +request.getParameter("algoritmo") + " Resultado " + request.getParameter("result");
        
        EstatisticasAlunoDAO estatisticasAlunoDAO = new EstatisticasAlunoDAO();
        try {
            Jogada est = estatisticasAlunoDAO.getEstatistica(new Date(Calendar.getInstance().getTimeInMillis()), ((Usuario) request.getSession().getAttribute("usuario")).getId(), request.getParameter("algoritmo"));
            if(est == null){
                Jogada jogada = new Jogada();
                jogada.setData(new Date(Calendar.getInstance().getTimeInMillis()));
                jogada.setFluxograma(request.getParameter("algoritmo"));
                jogada.setJogador((Aluno) request.getSession().getAttribute("usuario"));
                if(new Boolean(request.getParameter("result"))){
                    jogada.setAcerto(1);
                    jogada.setErro(0);
                }else{
                    jogada.setAcerto(0);
                    jogada.setErro(1);
                }
                estatisticasAlunoDAO.inserirEstatistics(jogada);
            }else{
                Jogada jogada = new EstatisticasAlunoDAO().ListarEstatistica(est.getId());
                if(new Boolean(request.getParameter("result"))){
                    jogada.setAcerto(jogada.getAcerto() +1);
                }else{
                    jogada.setErro(jogada.getErro() +1);
                }
                estatisticasAlunoDAO.AtualizarEstatistics(jogada, est.getId());
            }
        } catch (SQLException ex) {
            Logger.getLogger(SalvarEstatisticasCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
//        System.out.println("");
        return "Aluno.jsp";
    }
    
}
