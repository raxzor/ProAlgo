/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class EditarAlunoCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        Aluno aluno = new Aluno();
        
        
        
        return ("CadastrarAluno.jsp");
    }
    
}
