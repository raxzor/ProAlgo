/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class LogoutCommand implements Icommand{

    @Override
    public String execute(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index.jsp";
    }
    
}
