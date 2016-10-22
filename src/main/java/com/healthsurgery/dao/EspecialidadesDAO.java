package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Especialidade;

public class EspecialidadesDAO {
	
	private final EntityManager em;
	
	@Inject
	public EspecialidadesDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public EspecialidadesDAO() {
		this(null); // para uso do CDI
	}
	
    public void adiciona(Especialidade especialidade) {
    	em.getTransaction().begin();
		em.persist(especialidade);
		em.getTransaction().commit();
	}

	public void remove(Especialidade especialidade) {
		em.getTransaction().begin();
		em.remove(busca(especialidade));
		em.getTransaction().commit();
	}
	
	public void atualiza(Especialidade especialidade) {
		em.getTransaction().begin();
		em.merge(especialidade);
		em.getTransaction().commit();
	}
	
	public Especialidade busca(Especialidade especialidade) {
		return em.find(Especialidade.class, especialidade.getIdEspecialidade());
	}
	
	@SuppressWarnings("unchecked")
	public List<Especialidade> lista() {
		return em.createQuery("select espec from Especialidade espec").getResultList();
	}
	
	//@SuppressWarnings("unchecked")
	//public List<Especialidade> buscaNome(Especialidade especialidade) {
		//select m.* from Medico m inner join Especialidade e on m.idEspecialidade = e.idEspecialidade where e.idEspecialidade = 28
		//select e from Especialidade e inner join e.Medico m on m.idEspecialidade = e.idEspecialidade where e.nomeEspecialidade =
		//return em.createQuery("select e from Especialidade e inner join medico m on m.idEspecialidade = e.idEspecialidade where e.nomeEspecialidade = " + especialidade.getNomeEspecialidade()).getResultList();
	//}
	
	

}
