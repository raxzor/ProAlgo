/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Aluno;
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
public class AlunoDAO {
    
    ConnectionPostgres cp = new ConnectionPostgres();
    Connection con;
    
     public Integer inserirAluno(Aluno a) throws SQLException{
        
        con = cp.getconection();
        String sql = "INSERT INTO aluno(nome, curso, tipo_deficiencia, turma, instituicao, id_professor) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, a.getNome());
        ps.setString(2, a.getCurso());
        ps.setString(3, a.getTipoDeficiencia());
        ps.setString(4, a.getTurma());
        ps.setString(5, a.getInstituicao());
        ps.setInt(6, a.getProfessor().getId());
        
        
        ps.execute();
        ps = con.prepareStatement("SELECT MAX(id) FROM  aluno", ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ResultSet set = ps.executeQuery();
        Integer id = null;
        if(set.first()){
            
        id = set.getInt("max");
        }
        ps.close();
        con.close();
        return id;
    }
     
     public void atualizarAluno(Aluno a, Integer idAluno) throws SQLException{
        con = cp.getconection();
        String sql=" UPDATE aluno SET login = ?, senha = ?, nome = ?, curso = ?, tipo_deficiencia = ?, turma = ?, instituicao = ? where id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, a.getLogin());
        ps.setString(2, a.getSenha());
        ps.setString(3, a.getNome());
        ps.setString(4, a.getCurso());
        ps.setString(5, a.getTipoDeficiencia());
        ps.setString(6, a.getTurma());
        ps.setString(7, a.getInstituicao());
        ps.setInt(8, idAluno);
        
        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<Aluno> ListarAlunos() throws SQLException{
        con = cp.getconection();
        String sql = "SELECT * from aluno";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ResultSet rs = ps.executeQuery();
        Aluno a = null;
        List<Aluno> alunos = new ArrayList<Aluno>();
        while (rs.next()){
            a = new Aluno();
            a.setId(rs.getInt("id"));
            a.setNome(rs.getString("nome"));
            a.setCurso(rs.getString("curso"));
            a.setTipoDeficiencia(rs.getString("tipo_deficiencia"));
            a.setTurma(rs.getString("turma"));
            a.setInstituicao(rs.getString("instituicao"));
            a.setLogin(rs.getString("login"));
            a.setSenha(rs.getString("senha"));
            alunos.add(a);
            
            
        }
        return alunos;
    }
    
    public List<Aluno> ListarAlunosPorNome(String nome) throws SQLException{
        con = cp.getconection();
        String sql = "SELECT * from aluno";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ResultSet rs = ps.executeQuery();
        Aluno a = null;
        List<Aluno> alunos = new ArrayList<Aluno>();
        while (rs.next()){
            a = new Aluno();
            a.setId(rs.getInt("id"));
            a.setNome(rs.getString("nome"));
            a.setCurso(rs.getString("curso"));
            a.setTipoDeficiencia(rs.getString("tipo_deficiencia"));
            a.setTurma(rs.getString("turma"));
            a.setInstituicao(rs.getString("instituicao"));
            a.setLogin(rs.getString("login"));
            a.setSenha(rs.getString("senha"));
            alunos.add(a);
            
            
        }
        return alunos;
    }
    
     public Aluno getAlunoAutenticacao(String login, String senha) throws SQLException{
        con = cp.getconection();
        String sql="SELECT * from aluno where login ilike ? and senha ilike ?";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        
        ps.setString(1, login);
        ps.setString(2, senha);
       
        ResultSet rs = ps.executeQuery();
        Aluno aluno = null;
        if (rs.first()){
            aluno = new Aluno();
            aluno.setId(rs.getInt("id"));
            aluno.setNome(rs.getString("nome"));
            aluno.setCurso(rs.getString("curso"));
            aluno.setInstituicao(rs.getString("instituicao"));
            aluno.setTipoDeficiencia(rs.getString("tipo_deficiencia"));
            aluno.setTurma(rs.getString("turma"));
            aluno.setLogin(rs.getString("login"));
            aluno.setSenha(rs.getString("senha"));
            
            
        }
        return aluno;
    }
     
     public Aluno getAluno(Integer id) throws SQLException{
        con = cp.getconection();
        String sql="SELECT * from aluno where id = ?";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        
        ps.setInt(1, id);
       
        ResultSet rs = ps.executeQuery();
        Aluno aluno = null;
        if (rs.first()){
            aluno = new Aluno();
            
            aluno.setId(rs.getInt("id"));
            aluno.setNome(rs.getString("nome"));
            aluno.setCurso(rs.getString("curso"));
            aluno.setInstituicao(rs.getString("instituicao"));
            aluno.setTipoDeficiencia(rs.getString("tipo_deficiencia"));
            aluno.setTurma(rs.getString("turma"));
            
            
        }
        return aluno;
    }
     
     public void deletaAluno(Integer idAluno) throws SQLException{
        con = cp.getconection();
        String sql = "DELETE FROM aluno WHERE id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, idAluno);
        
        ps.executeUpdate();
        ps.close();
        con.close();
        
    }

}