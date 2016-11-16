package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Questionario;

public class QuestionarioDAO {

	private final EntityManager em;
	
	@Inject
	public QuestionarioDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public QuestionarioDAO() {
		this(null);
	}

	public void adiciona(Questionario questionario) {
    	em.getTransaction().begin();
		em.persist(questionario);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Questionario> lista() {
		return em.createQuery("select quest from Questionario quest").getResultList();
	}

public void remove(Questionario questionario) {
		em.getTransaction().begin();
		em.remove(busca(questionario));
		em.getTransaction().commit();
	}
	
	public Questionario busca(Questionario questionario) {
		return em.find(Questionario.class, questionario.getIdQuestionario());
	}

	public void atualiza(Questionario questionario) {
		em.getTransaction().begin();
		em.merge(questionario);
		em.getTransaction().commit();
	}
}