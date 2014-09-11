/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Gilmar
 */
public class Tupla {
    private String nomeAluno;
    private String data;
    private String fluxograma;
    private int qtderros;
    private int qtdacertos;

    public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getFluxograma() {
        return fluxograma;
    }

    public void setFluxograma(String fluxograma) {
        this.fluxograma = fluxograma;
    }

    public int getQtderros() {
        return qtderros;
    }

    public void setQtderros(int qtderros) {
        this.qtderros = qtderros;
    }

    public int getQtdacertos() {
        return qtdacertos;
    }

    public void setQtdacertos(int qtdacertos) {
        this.qtdacertos = qtdacertos;
    }

    @Override
    public String toString() {
        return "Tupla{" + "nomeAluno=" + nomeAluno + ", data=" + data + ", fluxograma=" + fluxograma + ", qtderros=" + qtderros + ", qtdacertos=" + qtdacertos + '}';
    }
    
    
}
