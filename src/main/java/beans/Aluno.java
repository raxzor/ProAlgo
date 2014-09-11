/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Gilmar
 */
public class Aluno extends Usuario{
    
    private String TipoDeficiencia;
    private int id;
    private String turma;
    private Usuario professor;

    public Usuario getProfessor() {
        return professor;
    }

    public void setProfessor(Usuario professor) {
        this.professor = professor;
    }
    
    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }

    public String getTipoDeficiencia() {
        return TipoDeficiencia;
    }

    public void setTipoDeficiencia(String TipoDeficiencia) {
        this.TipoDeficiencia = TipoDeficiencia;
    }

    @Override
    public String toString() {
        return "Aluno{" + "TipoDeficiencia=" + TipoDeficiencia + ", id=" + id + ", turma=" + turma + ", professor=" + professor + '}';
    }

    
    
}
