package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Corpo;

public class CorpoDAO {

	private final EntityManager em;
	
	@Inject
	public CorpoDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public CorpoDAO() {
		this(null);
	}

	public void adiciona(Corpo corpo) {
    	em.getTransaction().begin();
		em.persist(corpo);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Corpo> lista() {
		return em.createQuery("select corpo from Corpo corpo").getResultList();
	}

public void remove(Corpo corpo) {
		em.getTransaction().begin();
		em.remove(busca(corpo));
		em.getTransaction().commit();
	}
	
	public Corpo busca(Corpo corpo) {
		return em.find(Corpo.class, corpo.getIdCorpo());
	}

	public void atualiza(Corpo corpo) {
		em.getTransaction().begin();
		em.merge(corpo);
		em.getTransaction().commit();
	}
}