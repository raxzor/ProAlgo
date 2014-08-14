/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Usuario;
import conectionbd.ConnectionPostgres;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gilmar
 */
public class UsuarioDAO {
    
    ConnectionPostgres cp = new ConnectionPostgres();
    Connection con;
    
     public void inserirProfessor(Usuario p) throws SQLException{
        
        con = cp.getconection();
        String sql = "INSERT INTO professor(login, senha, nome, curso, instituicao) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, p.getLogin());
        ps.setString(2, p.getSenha());
        ps.setString(3, p.getNome());
        ps.setString(4, p.getCurso());
        ps.setString(5, p.getInstituicao());

        ps.execute();
        ps.close();
        con.close();
    }
     
     public void atualizarProfessor(Usuario p, Integer idProfessor) throws SQLException{
        con = cp.getconection();
        String sql=" UPDATE professor SET login = ?, senha = ?, nome = ?, curso = ?, instituicao = ? where id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, p.getLogin());
        ps.setString(2, p.getSenha());
        ps.setString(3, p.getNome());
        ps.setString(4, p.getCurso());
        ps.setString(5, p.getInstituicao());
        ps.setInt(6, idProfessor);
        
        
        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<Usuario> ListarProfessores() throws SQLException{
        con = cp.getconection();
        String sql = "SELECT * from professor";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ResultSet rs = ps.executeQuery();
        Usuario p = null;
        List<Usuario> professores = new ArrayList<Usuario>();
        while (rs.next()){
            p = new Usuario();
            p.setId(rs.getInt("id"));
            p.setNome(rs.getString("nome"));
            p.setCurso(rs.getString("curso"));
            p.setInstituicao(rs.getString("instituicao"));
            p.setLogin(rs.getString("login"));
            p.setSenha(rs.getString("senha"));
            professores.add(p);
            
            
        }
        return professores;
    }
    
    public List<Usuario> ListarProfessoresPorNome(String nome) throws SQLException{
        con = cp.getconection();
        String sql = "SELECT * from professor where nome ilike ?";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ps.setString(1, nome);
        ResultSet rs = ps.executeQuery();
        Usuario p = null;
        List<Usuario> professores = new ArrayList<Usuario>();
        while (rs.next()){
            p = new Usuario();
            p.setId(rs.getInt("id"));
            p.setNome(rs.getString("nome"));
            p.setCurso(rs.getString("curso"));
            p.setInstituicao(rs.getString("instituicao"));
            p.setLogin(rs.getString("login"));
            p.setSenha(rs.getString("senha"));
            professores.add(p);
            
            
        }
        return professores;
    }
    
    
     
     public Usuario getProfessor(Integer id) throws SQLException{
        con = cp.getconection();
        String sql="SELECT * from professor where id = ?";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        
        ps.setInt(1, id);
       
        ResultSet rs = ps.executeQuery();
        Usuario professor = null;
        if (rs.first()){
            professor = new Usuario();
            
            professor.setId(rs.getInt("id"));
            professor.setNome(rs.getString("nome"));
            professor.setCurso(rs.getString("curso"));
            professor.setInstituicao(rs.getString("instituicao"));
            
            
        }
        return professor;
    }
     
     public void deletaProfessor(Integer idProfessor) throws SQLException{
        con = cp.getconection();
        String sql = "DELETE FROM professor WHERE id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, idProfessor);
        
        ps.executeUpdate();
        ps.close();
        con.close();
        
    }
}
