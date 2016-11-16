package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Psicoterapia;

public class PsicoterapiaDAO {

	private final EntityManager em;
	
	@Inject
	public PsicoterapiaDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public PsicoterapiaDAO() {
		this(null);
	}

	public void adiciona(Psicoterapia psicoterapia) {
    	em.getTransaction().begin();
		em.persist(psicoterapia);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Psicoterapia> lista() {
		return em.createQuery("select psic from Psicoterapia psic").getResultList();
	}

	public void remove(Psicoterapia psicoterapia) {
		em.getTransaction().begin();
		em.remove(busca(psicoterapia));
		em.getTransaction().commit();
	}
	
	public Psicoterapia busca(Psicoterapia psicoterapia) {
		return em.find(Psicoterapia.class, psicoterapia.getIdQuestionario());
	}

	public void atualiza(Psicoterapia psicoterapia) {
		em.getTransaction().begin();
		em.merge(psicoterapia);
		em.getTransaction().commit();	
	}
}