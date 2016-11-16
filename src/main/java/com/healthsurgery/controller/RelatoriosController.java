package com.healthsurgery.controller;

import java.util.List;

import javax.inject.Inject;

import com.healthsurgery.dao.MedicoDAO;
import com.healthsurgery.dao.PacienteDAO;
import com.healthsurgery.model.Medico;
import com.healthsurgery.model.Paciente;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

@Controller
public class RelatoriosController {
	
	private final PacienteDAO pacienteDAO;
	private final MedicoDAO medicoDAO;
	
	@Inject
	public RelatoriosController(PacienteDAO pacienteDAO, MedicoDAO medicoDAO) {
		this.pacienteDAO = pacienteDAO;
		this.medicoDAO = medicoDAO;
	}

	@Deprecated
	public RelatoriosController() {
		this(null, null);
	}
	
	@Path("/relatorios/pacientes")
	public List<Paciente> pacientes() {
		return pacienteDAO.lista();
	}
	
	@Path("/relatorios/medicos")
	public List<Medico> medicos() {
		return medicoDAO.lista();
	}
	
	@Path("/relatorios/questionarios")
	public void questionarios() {
		
	}
	
	@Path("/relatorios/resultados")
	public void resultados() {
		
	}
	
}
