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
@Table(name="pedagoga")
public class Pedagoga implements BaseEntity, Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; 
    @Column
    private String nome;
    @Column
    private String usuario;
    @Column
    private String senha;
    @Column
    private int siape;
    
    

    public Pedagoga() {
    }
    
    public Pedagoga(int siape, String nome, String usuario, String senha, Long id){
        this.siape = siape;
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
        this.id = id;        
    }
    
    @Override
    public Long getId() {
	return id;
    }

    public void setId(Long id) {
	this.id = id;
    }    

    public int getSiape() {
        return siape;
    }

    public void setSiape(int siape) {
        this.siape = siape;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
}
