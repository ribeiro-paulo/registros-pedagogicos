/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Registro;
import util.ConnectionFactory;

/**
 *
 * @author Junior
 */
public class RegistroDAO {
    
    private static EntityManager manager = ConnectionFactory.getEntityManager();
    
    public List<Registro> findAll() {
        return manager.createQuery("FROM "
                + Registro.class.getName()).getResultList();
    }
}
