/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import autenticacao.UsuarioLogado;
import beans.Aluno;
import beans.Usuario;
import dao.AutenticacaoDAO;
import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class LogonCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        Usuario u = null;
        try {
            u = new AutenticacaoDAO().getProfessorAutenticacao(login, senha);
        } catch (SQLException ex) {
            Logger.getLogger(LogonCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(u != null){
            String url = "";
            if(u.getClass().equals(Aluno.class)){
                url = "Aluno.jsp";
            }else if(u.getClass().equals(Usuario.class)){
                url = "Professor.jsp";
            }
            request.getSession().setAttribute("usuario", u);
            return url;
        }else{
            return "Inicio.jsp";
        }
    }
    
}
