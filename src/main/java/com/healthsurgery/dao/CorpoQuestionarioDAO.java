package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.CorpoQuestionario;

public class CorpoQuestionarioDAO {

	private final EntityManager em;
	
	@Inject
	public CorpoQuestionarioDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public CorpoQuestionarioDAO() {
		this(null);
	}

	public void adiciona(CorpoQuestionario corpoquestionario) {
    	em.getTransaction().begin();
		em.persist(corpoquestionario);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<CorpoQuestionario> lista() {
		return em.createQuery("select cp from CorpoQuestionario cp").getResultList();
	}

	public void remove(CorpoQuestionario corpoquestionario) {
		em.getTransaction().begin();
		em.remove(busca(corpoquestionario));
		em.getTransaction().commit();
	}
	
	// mudar ai o paramentro que vai pesquisar
	public CorpoQuestionario busca(CorpoQuestionario corpoquestionario) {
		return em.find(CorpoQuestionario.class, corpoquestionario.getIdCorpo());
	}

	public void atualiza(CorpoQuestionario corpoquestionario) {
		em.getTransaction().begin();
		em.merge(corpoquestionario);
		em.getTransaction().commit();
	}
}