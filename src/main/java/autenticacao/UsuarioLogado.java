/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package autenticacao;

import beans.Aluno;
import beans.Usuario;

/**
 *
 * @author Gilmar
 */
public class UsuarioLogado {

    private static UsuarioLogado u;
    private Usuario usuario;

    private UsuarioLogado() {
    }
    
    public static UsuarioLogado getUsuarioLogado() {
        if (u == null) {
            u = new UsuarioLogado();

        }
        return u;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
