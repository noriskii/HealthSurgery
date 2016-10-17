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
		this(null); // para uso do CDI
	}
	
	public void adiciona(Medico medico) {
		em.persist(medico);
	}
	
	public void atualiza(Medico medico) {
		 em.merge(medico);
	}

	public void remove(Medico medico) {
		em.remove(busca(medico));
	}

	@SuppressWarnings("unchecked")
	public List<Medico> busca(Medico medico) {
		return (List<Medico>) em.find(Medico.class, medico.getRegProfissionalMedico());
	}

	@SuppressWarnings("unchecked")
	public List<Medico> buscaNome(Medico medico) {
		return (List<Medico>) em.createQuery("select med from medico med where nomeMedico like ” + medico.getNomeMedico()).getResultList()");
	}

	/*public void busca(Medico medico) {
        em.find(Produto.class, medico.getRegProfissionalMedico());
    }*/

	@SuppressWarnings("unchecked")
	public List<Medico> lista() {
		return (List<Medico>) em.createQuery("select med from medico med”).getResultList()");
	}
	
}
