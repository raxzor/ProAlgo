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
public interface Icommand {
    
    public String execute(HttpServletRequest request);
    
}
