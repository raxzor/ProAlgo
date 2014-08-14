/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Usuario;
import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class CadastrarProfessorCommand implements Icommand {
    
    Usuario professor = new Usuario();
    @Override
    public String execute(HttpServletRequest request) {
        
        String nome =  request.getParameter("nome");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String instituicao = request.getParameter("instituicao");
        String curso = request.getParameter("curso");
        
        Integer idProfessor = new Integer(request.getParameter("id_professor"));
        
        professor.setNome(nome);
        professor.setLogin(login);
        professor.setSenha(senha);
        professor.setInstituicao(instituicao);
        professor.setCurso(curso);
        try {
            UsuarioDAO professorDAO = new UsuarioDAO(); 
            if(idProfessor == null){
                professorDAO.inserirProfessor(professor);
            }else{
                professorDAO.atualizarProfessor(professor, idProfessor);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarProfessorCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ("CadastrarProfessor.jsp");
        
    }
    
    
}
