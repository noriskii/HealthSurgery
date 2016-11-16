package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Psiquiatria;

public class PsiquiatriaDAO {

	private final EntityManager em;
	
	@Inject
	public PsiquiatriaDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public PsiquiatriaDAO() {
		this(null);
	}

	public void adiciona(Psiquiatria psiquiatria) {
    	em.getTransaction().begin();
		em.persist(psiquiatria);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Psiquiatria> lista() {
		return em.createQuery("select psiq from Psiquiatria psiq").getResultList();
	}

public void remove(Psiquiatria psiquiatria) {
		em.getTransaction().begin();
		em.remove(busca(psiquiatria));
		em.getTransaction().commit();
	}
	
	public Psiquiatria busca(Psiquiatria psiquiatria) {
		return em.find(Psiquiatria.class, psiquiatria.getIdQuestionario());
	}

	public void atualiza(Psiquiatria psiquiatria) {
		em.getTransaction().begin();
		em.merge(psiquiatria);
		em.getTransaction().commit();
	}
}