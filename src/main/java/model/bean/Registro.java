/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import model.dao.BaseEntity;

/**
 *
 * @author Junior
 */
@Entity
@Table(name="registro")
public class Registro implements BaseEntity, Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; 
    @Column
    private String matricula;
    @Column
    private String data;
    @Column
    private String tipoDeOcorrencia;
    @Column
    private String descricao;
    
    @ManyToOne
    private Aluno aluno;
    
    public Registro(){
        
    }

    public Registro(String matricula, String data, String tipoDeOcorrencia, String descricao) {
        this.matricula = matricula;
        this.data = data;
        this.tipoDeOcorrencia = tipoDeOcorrencia;
        this.descricao = descricao;
    }

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getTipoDeOcorrencia() {
        return tipoDeOcorrencia;
    }

    public void setTipoDeOcorrencia(String tipoDeOcorrencia) {
        this.tipoDeOcorrencia = tipoDeOcorrencia;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }    
    
}
