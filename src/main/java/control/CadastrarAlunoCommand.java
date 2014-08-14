/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import beans.Usuario;
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
public class CadastrarAlunoCommand implements Icommand{
    
     Aluno aluno = new Aluno();
    
    @Override
    public String execute(HttpServletRequest request) {
        
        String nome =  request.getParameter("nome");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String instituicao = request.getParameter("instituicao");
        String tipoDeficiencia = request.getParameter("tipoDeficiencia");
        String turma = request.getParameter("t");
        String curso = request.getParameter("curso");
        
        String idAluno = request.getParameter("id_aluno");
        
        aluno.setNome(nome);
        aluno.setLogin(login);
        aluno.setSenha(senha);
        aluno.setInstituicao(instituicao);
        aluno.setTipoDeficiencia(tipoDeficiencia);
        aluno.setTurma(turma);
        aluno.setCurso(curso);
        aluno.setProfessor((Usuario) request.getSession().getAttribute("usuario"));
        try {
            AlunoDAO alunoDAO = new AlunoDAO(); 
             if(idAluno == null){
               aluno.setId(alunoDAO.inserirAluno(aluno));
                new AutenticacaoDAO().inserirAutenticacao(aluno);
            }else{
                alunoDAO.atualizarAluno(aluno, new Integer(idAluno));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarAlunoCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ("CadastrarAluno.jsp");
        
    }
}
