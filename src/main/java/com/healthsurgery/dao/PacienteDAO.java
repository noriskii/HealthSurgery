package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Paciente;

public class PacienteDAO {

	private final EntityManager em;
	
	@Inject
	public PacienteDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public PacienteDAO() {
		this(null);
	}

	public void adiciona(Paciente paciente) {
    	em.getTransaction().begin();
		em.persist(paciente);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Paciente> lista() {
		return em.createQuery("select pac from Paciente pac").getResultList();
	}
	
	public void remove(Paciente paciente) {
		em.getTransaction().begin();
		em.remove(busca(paciente));
		em.getTransaction().commit();
	}
	
	public Paciente busca(Paciente paciente) {
		return em.find(Paciente.class, paciente.getIdPaciente());
	}

	public void atualiza(Paciente paciente) {
		em.getTransaction().begin();
		em.merge(paciente);
		em.getTransaction().commit();
	}
	
	public Paciente carregaPaciente(int idPaciente) {
		return em.find(Paciente.class, idPaciente);
	}
	
	public int carregaID(Paciente paciente) {
		return (int) em.createQuery("SELECT p.idPaciente FROM Paciente p "
				+ "WHERE CPFPaciente = '"+ paciente.getCPFPaciente() 
				+ "' AND nomePaciente = '" + paciente.getNomePaciente()
				+ "' AND sexoBiologicoPaciente = '" + paciente.getSexoBiologicoPaciente()
				+ "' AND orientacaoSexualPaciente = '" + paciente.getOrientacaoSexualPaciente()
				+ "' AND identidadeGeneroPaciente = '" + paciente.getIdentidadeGeneroPaciente()
				+ "' AND estadoCivilPaciente = '" + paciente.getEstadoCivilPaciente()
				+ "' AND etniaPaciente = '" + paciente.getEtniaPaciente()
				+ "' AND escolaridadePaciente = '" + paciente.getEscolaridadePaciente()
				+ "' AND profissaoPaciente = '" + paciente.getProfissaoPaciente()
				+ "' AND cepPaciente = '" + paciente.getCepPaciente()
				+ "' AND cidadePaciente = '" + paciente.getCidadePaciente()
				+ "' AND estadoPaciente = '" + paciente.getEstadoPaciente()
				+ "' AND paisPaciente = '" + paciente.getPaisPaciente()
				+ "' AND obsPaciente = '" + paciente.getObsPaciente()
				+ "' AND dtNascimentoPaciente = '" + paciente.getDtNascimentoPaciente() + "'").getSingleResult();
		
	}
}