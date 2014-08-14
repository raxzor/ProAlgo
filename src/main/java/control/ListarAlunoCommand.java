/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import dao.AlunoDAO;
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
public class ListarAlunoCommand implements Icommand{
    
    @Override
    public String execute(HttpServletRequest request) {
        String nome = request.getParameter("nome");
        
        List<Aluno> alunos = new ArrayList<>();
        
        try {
            alunos = new AlunoDAO().ListarAlunosPorNome(nome);
        } catch (SQLException ex) {
            Logger.getLogger(ListarAlunoCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("aluno", alunos);
        System.out.println("+++++++++++++size + = " + alunos.size());
        return ("ListarAlunosPorNome.jsp");
        
    }
    
}
