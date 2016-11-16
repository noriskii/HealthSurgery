package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Resposta;

public class RespostaDAO {

	private final EntityManager em;
	
	@Inject
	public RespostaDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public RespostaDAO() {
		this(null);
	}

	public void adiciona(Resposta resposta) {
    	em.getTransaction().begin();
		em.persist(resposta);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Resposta> lista() {
		return em.createQuery("select resp from Resposta resp").getResultList();
	}

public void remove(Resposta resposta) {
		em.getTransaction().begin();
		em.remove(busca(resposta));
		em.getTransaction().commit();
	}
	
	public Resposta busca(Resposta resposta) {
		return em.find(Resposta.class, resposta.getIdResposta());
	}

	public void atualiza(Resposta resposta) {
		em.getTransaction().begin();
		em.merge(resposta);
		em.getTransaction().commit();
	}
}