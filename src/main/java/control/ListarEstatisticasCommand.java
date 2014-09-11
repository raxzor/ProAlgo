/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import beans.Aluno;
import beans.Jogada;
import beans.Tupla;
import beans.Usuario;
import dao.EstatisticasAlunoDAO;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gilmar
 */
public class ListarEstatisticasCommand implements Icommand {

    @Override
    public String execute(HttpServletRequest request) {
        EstatisticasAlunoDAO estatisticasAlunoDAO = new EstatisticasAlunoDAO();
        List<Jogada> estatisticas = null;
        try {
            estatisticas = estatisticasAlunoDAO.ListarEstatisticas(((Usuario) request.getSession().getAttribute("usuario")).getId());
        } catch (SQLException ex) {
            Logger.getLogger(ListarEstatisticasCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        List<Tupla> tuplas = new ArrayList<>();

        for (Jogada jogada : estatisticas) {
            for (Jogada j : estatisticas) {
                if (j.getJogador().equals(jogada.getJogador())) {

                    Tupla tupla = new Tupla();
                    tupla.setNomeAluno(j.getJogador().getNome());
                    tupla.setFluxograma(j.getFluxograma());
                    String[] split = j.getData().toString().split("-");
                    tupla.setData(split[2] + "/" + split[1] + "/" + split[0]);
                    tupla.setQtdacertos(0);
                    tupla.setQtderros(0);
                    if (j.getResultado() == true) {
                        tupla.setQtdacertos(tupla.getQtdacertos() + 1);
                    } else {
                        tupla.setQtderros(tupla.getQtderros() + 1);
                    }

                }
            }

        }
        request.setAttribute("estatisticas", estatisticas);
        return "EstatisticasAluno.jsp";




//        Tupla tupla = new Tupla();
//                    tupla.setNomeAluno(j.getJogador().getNome());
//                    tupla.setFluxograma(j.getFluxograma());
//                    String[] split = j.getData().toString().split("-");
//                    tupla.setData(split[2] + "/" + split[1] + "/" + split[0]);
//                    tupla.setQtdacertos(0);
//                    tupla.setQtderros(0);
//                    if(j.getResultado() == true){
//                        tupla.setQtdacertos(tupla.getQtdacertos() + 1);
//                    }else{
//                        tupla.setQtderros(tupla.getQtderros() + 1);
//                    }
//                    tuplas.add(tupla);

    }

    public void EstatisticaJogoInteiro(){
        List<Jogada> estatisticas = new ArrayList<>();
        List<Tupla> tuplas = new ArrayList<>();
        Aluno lulinha = new Aluno();
        lulinha.setNome("Lulinha");

        Aluno gilmar = new Aluno();
        gilmar.setNome("Gilmar");


        Jogada a = new Jogada();
        a.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        a.setFluxograma("Adição");
        a.setJogador(lulinha);
        a.setResultado(Boolean.TRUE);

        Jogada b = new Jogada();
        b.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        b.setFluxograma("Adição");
        b.setJogador(lulinha);
        b.setResultado(Boolean.FALSE);

        Jogada c = new Jogada();
        c.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        c.setFluxograma("Adição");
        c.setJogador(gilmar);
        c.setResultado(Boolean.TRUE);

        Jogada d = new Jogada();
        d.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        d.setFluxograma("Adição");
        d.setJogador(gilmar);
        d.setResultado(Boolean.FALSE);

        Jogada e = new Jogada();
        e.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        e.setFluxograma("Adição");
        e.setJogador(gilmar);
        e.setResultado(Boolean.TRUE);

        estatisticas.add(a);
        estatisticas.add(b);
        estatisticas.add(c);
        estatisticas.add(d);
        estatisticas.add(e);

        List<Tupla> listTuplas = new ArrayList<>();
        List<String> AuxArray = new ArrayList<>();

        for (Jogada jogada : estatisticas) {

            Tupla tupla = new Tupla();
            String aux = new String();
            for (Jogada j : estatisticas) {
                if (j.getJogador().equals(jogada.getJogador())) {
                    aux = jogada.getJogador().getNome();
                    tupla.setNomeAluno(jogada.getJogador().getNome());
                    tupla.setFluxograma(j.getFluxograma());
                    String[] split = j.getData().toString().split("-");
                    tupla.setData(split[2] + "/" + split[1] + "/" + split[0]);
                }
            }
            if (!AuxArray.contains(aux)) {
                AuxArray.add(aux);
                listTuplas.add(tupla);
                for (int i = 0; i < listTuplas.size(); i++) {
                    if (listTuplas.get(i).getNomeAluno().toString().equals(tupla.getNomeAluno().toString())) {
                        if (jogada.getResultado()) {
                            listTuplas.get(i).setQtdacertos(listTuplas.get(i).getQtdacertos() + 1);
                        } else {
                            listTuplas.get(i).setQtderros(listTuplas.get(i).getQtderros() + 1);
                        }
                    }
                }
            } else {
                for (int i = 0; i < listTuplas.size(); i++) {
                    if (listTuplas.get(i).getNomeAluno().toString().equals(tupla.getNomeAluno().toString())) {
                        if (jogada.getResultado()) {
                            listTuplas.get(i).setQtdacertos(listTuplas.get(i).getQtdacertos() + 1);
                        } else {
                            listTuplas.get(i).setQtderros(listTuplas.get(i).getQtderros() + 1);
                        }
                    }
                }
            }
        }
        System.out.println(listTuplas.size());
        System.out.println(listTuplas);
    }
    
    
    public static void main(String[] args) {
        List<Jogada> estatisticas = new ArrayList<>();
        List<Tupla> tuplas = new ArrayList<>();
        Aluno lulinha = new Aluno();
        lulinha.setNome("Lulinha");

        Aluno gilmar = new Aluno();
        gilmar.setNome("Gilmar");


        Jogada a = new Jogada();
        a.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        a.setFluxograma("Adição");
        a.setJogador(lulinha);
        a.setResultado(Boolean.TRUE);

        Jogada b = new Jogada();
        b.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        b.setFluxograma("Adição");
        b.setJogador(lulinha);
        b.setResultado(Boolean.FALSE);

        Jogada c = new Jogada();
        c.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        c.setFluxograma("Adição");
        c.setJogador(gilmar);
        c.setResultado(Boolean.TRUE);

        Jogada d = new Jogada();
        d.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        d.setFluxograma("Adição");
        d.setJogador(gilmar);
        d.setResultado(Boolean.FALSE);

        Jogada e = new Jogada();
        e.setData(new Date(Calendar.getInstance().getTimeInMillis()));
        e.setFluxograma("Adição");
        e.setJogador(gilmar);
        e.setResultado(Boolean.TRUE);

        estatisticas.add(a);
        estatisticas.add(b);
        estatisticas.add(c);
        estatisticas.add(d);
        estatisticas.add(e);

        List<Tupla> listTuplas = new ArrayList<>();
        List<String> AuxArray = new ArrayList<>();

        for (Jogada jogada : estatisticas) {

            Tupla tupla = new Tupla();
            String aux = new String();
            for (Jogada j : estatisticas) {
                if (j.getJogador().equals(jogada.getJogador())) {
                    aux = jogada.getJogador().getNome();
                    tupla.setNomeAluno(jogada.getJogador().getNome());
                    tupla.setFluxograma(j.getFluxograma());
                    String[] split = j.getData().toString().split("-");
                    tupla.setData(split[2] + "/" + split[1] + "/" + split[0]);
                }
            }
            if (!AuxArray.contains(aux)) {
                AuxArray.add(aux);
                listTuplas.add(tupla);
                for (int i = 0; i < listTuplas.size(); i++) {
                    if (listTuplas.get(i).getNomeAluno().toString().equals(tupla.getNomeAluno().toString())) {
                        if (jogada.getResultado()) {
                            listTuplas.get(i).setQtdacertos(listTuplas.get(i).getQtdacertos() + 1);
                        } else {
                            listTuplas.get(i).setQtderros(listTuplas.get(i).getQtderros() + 1);
                        }
                    }
                }
            } else {
                for (int i = 0; i < listTuplas.size(); i++) {
                    if (listTuplas.get(i).getNomeAluno().toString().equals(tupla.getNomeAluno().toString())) {
                        if (jogada.getResultado()) {
                            listTuplas.get(i).setQtdacertos(listTuplas.get(i).getQtdacertos() + 1);
                        } else {
                            listTuplas.get(i).setQtderros(listTuplas.get(i).getQtderros() + 1);
                        }
                    }
                }
            }
        }
        System.out.println(listTuplas.size());
        System.out.println(listTuplas);
    }
}
