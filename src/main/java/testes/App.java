/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testes;

import beans.Aluno;
import beans.Professor;
import conectionbd.ConnectionPostgres;
import dao.AlunoDAO;
import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Gilmar
 */
public class App {
    
    
    public static void main(String[] args) throws SQLException {
//        ConnectionPostgres connectionPostgres = new ConnectionPostgres();
//        System.out.println(connectionPostgres.getconection() == null);
       
        UsuarioDAO professorDAO = new UsuarioDAO();
        Professor professor = new Professor();
//        professorDAO.inserirAluno(professor);
        AlunoDAO alunoDAO = new AlunoDAO();
        Aluno aluno = new Aluno();
//        alunoDAO.inserirAluno(aluno);
        
//        List<Professor> professores = professorDAO.ListarProfessores();
//        for(Professor p: professores){
//            System.out.println(p.getNome());
//            System.out.println(p.getLogin());
//            System.out.println(p.getSenha());
//            System.out.println(p.getCurso());
//            System.out.println(p.getInstituicao());
//            
//         }
        
//        List<Aluno> alunos  = alunoDAO.ListarAlunos();
//        for(Aluno a: alunos){
//            System.out.println(a.getNome());
//            System.out.println(a.getLogin());
//            System.out.println(a.getSenha());
//            System.out.println(a.getCurso());
//            System.out.println(a.getInstituicao());
//            System.out.println(a.getTipoDeficiencia());
//            System.out.println(a.getTuma());
//         }
//         
            professor.setNome("Viviano");
            professor.setLogin("vivi");
            professor.setSenha("123");
            professor.setCurso("ADS");
            professor.setInstituicao("IFPBAAAA");
            
          professorDAO.atualizarProfessor(professor, 1);
            
        
    }
    
}
