package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Medico;

public class MedicoDAO {

	private final EntityManager em;
	
	@Inject
	public MedicoDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public MedicoDAO() {
		this(null);
	}

	public void adiciona(Medico medico) {
    	em.getTransaction().begin();
		em.persist(medico);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Medico> lista() {
		return em.createQuery("select med from Medico med").getResultList();
	}

	public void remove(Medico medico) {
		em.getTransaction().begin();
		em.remove(busca(medico));
		em.getTransaction().commit();
	}
	
	public Medico busca(Medico medico) {
		return em.find(Medico.class, medico.getRegProfissionalMedico());
	}

	public void atualiza(Medico medico) {
		em.getTransaction().begin();
		em.merge(medico);
		em.getTransaction().commit();
	}

	public Medico carregaMedico(int registoMedico) {
		return em.find(Medico.class, registoMedico);
	}
}