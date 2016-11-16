package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.ResultadoQuestionario;

public class ResultadoQuestionarioDAO {

	private final EntityManager em;
	
	@Inject
	public ResultadoQuestionarioDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public ResultadoQuestionarioDAO() {
		this(null);
	}

	public void adiciona(ResultadoQuestionario resultadoquestionario) {
    	em.getTransaction().begin();
		em.persist(resultadoquestionario);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<ResultadoQuestionario> lista() {
		return em.createQuery("select rq from ResultadoQuestionario rq").getResultList();
	}

	public void remove(ResultadoQuestionario resultadoquestionario) {
		em.getTransaction().begin();
		em.remove(busca(resultadoquestionario));
		em.getTransaction().commit();
	}
	
	public ResultadoQuestionario busca(ResultadoQuestionario resultadoquestionario) {
		return em.find(ResultadoQuestionario.class, resultadoquestionario.getIdQuestionario());
	}

	public void atualiza(ResultadoQuestionario resultadoquestionario) {
		em.getTransaction().begin();
		em.merge(resultadoquestionario);
		em.getTransaction().commit();
	}
}