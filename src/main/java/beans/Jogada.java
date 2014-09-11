/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Date;

/**
 *
 * @author Gilmar
 */
public class Jogada {
    
    private Aluno jogador;
    private String fluxograma;
    private Date data;
    private Integer erro;
    private Integer acerto;

    public Aluno getJogador() {
        return jogador;
    }

    public void setJogador(Aluno jogador) {
        this.jogador = jogador;
    }

    public String getFluxograma() {
        return fluxograma;
    }

    public void setFluxograma(String fluxograma) {
        this.fluxograma = fluxograma;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Integer getErro() {
        return erro;
    }

    public void setErro(Integer erro) {
        this.erro = erro;
    }

    public Integer getAcerto() {
        return acerto;
    }

    public void setAcerto(Integer acerto) {
        this.acerto = acerto;
    }

    @Override
    public String toString() {
        return "Jogada{" + "jogador=" + jogador + ", fluxograma=" + fluxograma + ", data=" + data + ", erro=" + erro + ", acerto=" + acerto + '}';
    }

   

    
    
    
}
