/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Professor;
import javax.servlet.http.HttpServletRequest;


/**
 *
 * @author Gilmar
 */
public class EditarProfessorCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        Professor professor = new Professor();
        
        
        
        return ("CadastrarProfessor.jsp");
    }
   
}
