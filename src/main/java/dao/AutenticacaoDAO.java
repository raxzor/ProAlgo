/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Aluno;
import beans.Usuario;
import conectionbd.ConnectionPostgres;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Gilmar
 */
public class AutenticacaoDAO {

    ConnectionPostgres cp = new ConnectionPostgres();
    Connection con;

    public Usuario getProfessorAutenticacao(String login, String senha) throws SQLException {
        con = cp.getconection();
        String sql = "SELECT * from autenticacao where login ilike ? and senha ilike ?";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);

        ps.setString(1, login);
        ps.setString(2, senha);

        ResultSet rs = ps.executeQuery();
        if (rs.first()) {
            Integer idAluno = rs.getInt("id_aluno");
            Integer idProfessor = rs.getInt("id_professor");
            Usuario professor;
            Aluno aluno;
            if (idAluno == null) {
                professor = new UsuarioDAO().getProfessor(idProfessor);
                professor.setLogin(rs.getString("login"));
                professor.setSenha(rs.getString("senha"));
                return professor;
            } else {
                aluno = new AlunoDAO().getAluno(idAluno);
                aluno.setLogin(rs.getString("login"));
                aluno.setSenha(rs.getString("senha"));
                return aluno;
            }
        }else{
            return null;
        }
    }
    
     public void inserirAutenticacao(Usuario p) throws SQLException{
        
        con = cp.getconection();
        String sql;
        PreparedStatement ps;
        if(!p.getClass().equals(Aluno.class)){
            sql = "INSERT INTO autenticacao(login, senha, id_professor) VALUES (?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(3, p.getId());
        }else{
            sql = "INSERT INTO autenticacao(login, senha, id_aluno) VALUES (?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(3, p.getId());
        }

        ps.setString(1, p.getLogin());
        ps.setString(2, p.getSenha());
        
        ps.execute();
        ps.close();
        con.close();
    }
}
