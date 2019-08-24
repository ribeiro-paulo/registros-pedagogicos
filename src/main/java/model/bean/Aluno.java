package model.bean;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import model.dao.BaseEntity;

/**
 *
 * @author eddunic
 */
@Entity
@Table(name = "aluno")
public class Aluno implements BaseEntity, Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String nome;
    @Column
    private String matricula;
    @Column
    private String nivel;
    @Column
    private String turma;
    @Column
    private boolean pasta;
    @Column
    private int qtdRegistro;
    
    
    public Aluno() {
        this.pasta = false;
        this.qtdRegistro = 0;
    }

    public Aluno(String matricula, String nome, String nivel, String turma, Long id, boolean pasta) {
        this.pasta = false;
        this.matricula = matricula;
        this.nome = nome;
        this.nivel = nivel;
        this.turma = turma;
        this.id = id;
        this.pasta = pasta;
    }

    public int getQtdRegistro() {
        return qtdRegistro;
    }

    public void setQtdRegistro(int qtdRegistro) {
        this.qtdRegistro = qtdRegistro;
    }

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }

    public boolean isPasta() {
        return pasta;
    }

    public void setPasta(boolean pasta) {
        this.pasta = pasta;
    }

}