/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import dao.AlunoDAO;
import dao.AutenticacaoDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class EditarAlunoCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        try {
            Integer id = new Integer(request.getParameter("idAluno"));
            Aluno aluno = new AlunoDAO().getAluno(id);
            
            String[] s = new AutenticacaoDAO().autenticacaoAluno(id);
            aluno.setLogin(s[0]);
            aluno.setSenha(s[1]);
            request.setAttribute("aluno", aluno);
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(EditarAlunoCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ("CadastrarAluno.jsp");
    }
    
}
