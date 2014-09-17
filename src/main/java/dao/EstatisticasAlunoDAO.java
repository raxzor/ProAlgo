/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Aluno;
import beans.Jogada;
import conectionbd.ConnectionPostgres;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gilmar
 */
public class EstatisticasAlunoDAO {

    ConnectionPostgres cp = new ConnectionPostgres();
    Connection con;

    public void inserirEstatistics(Jogada j) throws SQLException {
        con = cp.getconection();
        String sql = "INSERT INTO jogada(data_jogada, jogador, fluxograma, acerto, erro) VALUES (?, ?, ?, ? ,?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, j.getJogador().getId());
        ps.setDate(2, j.getData());
        ps.setString(3, j.getFluxograma());
        ps.setInt(4, j.getErro());
        ps.setInt(5, j.getAcerto());
        ps.execute();
        ps.close();
        con.close();
    }

    public void AtualizarEstatistics(Jogada j, Integer id) throws SQLException {
        con = cp.getconection();
        String sql = "UPDATE jogada SET acerto = ?, erro = ? where id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, j.getAcerto());
        ps.setInt(2, j.getErro());
        ps.setInt(3, id);
        ps.executeUpdate();
        ps.close();
        con.close();
    }
    public Integer getEstatistica(Date data, Integer idJogador, String fluxograma) throws SQLException {
        con = cp.getconection();
        String sql = "select * from jogada where data_jogada = ? and jogador = ? and fluxograma ilike ? ";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ps.setInt(2, idJogador);
        ps.setDate(1, data);
        ps.setString(3, fluxograma);

        ResultSet rs = ps.executeQuery();
        if (rs.first()) {
            return rs.getInt("id");
        } else {
            return null;
        }



    }
    public Jogada ListarEstatistica(Integer id) throws SQLException {
        con = cp.getconection();
        String sql = "SELECT * FROM jogada WHERE id = ? ";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        Jogada j = null;
        if (rs.first()) {
            j = new Jogada();

            AlunoDAO alunoDAO = new AlunoDAO();
            Aluno jogador = alunoDAO.getAluno(rs.getInt("jogador"));
            j.setJogador(jogador);
            j.setData(rs.getDate("data_jogada"));
            j.setFluxograma(rs.getString("fluxograma"));
            j.setErro(rs.getInt("erro"));
            j.setAcerto(rs.getInt("acerto"));
        }
        return j;
    }

    public List<Jogada> ListarEstatisticas(Integer idProfessor) throws SQLException {
        con = cp.getconection();
        String sql = "SELECT * FROM jogada WHERE id = ? ";
        PreparedStatement ps = con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE, ResultSet.TYPE_SCROLL_SENSITIVE);
        ps.setInt(1, idProfessor);
        ResultSet rs = ps.executeQuery();
        Jogada j = null;
        List<Jogada> jogadas = new ArrayList<>();
        while (rs.next()) {
            j = new Jogada();

            AlunoDAO alunoDAO = new AlunoDAO();
            Aluno jogador = alunoDAO.getAluno(rs.getInt("jogador"));
            j.setJogador(jogador);
            j.setData(rs.getDate("data_jogada"));
            j.setFluxograma(rs.getString("fluxograma"));
            j.setErro(rs.getInt("erro"));
            j.setAcerto(rs.getInt("acerto"));
            jogadas.add(j);
        }
        return jogadas;
    }
}
