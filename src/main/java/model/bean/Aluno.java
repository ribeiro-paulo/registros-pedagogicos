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
@Table(name="aluno")
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
    
    

    public Aluno() {
    }
    
    public Aluno(String matricula, String nome, String nivel, String turma, Long id){
        this.matricula = matricula;
        this.nome = nome;
        this.nivel = nivel;
        this.turma = turma;
        this.id = id;        
    }

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
}
