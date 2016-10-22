package com.healthsurgery.controller;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.Entity;
import javax.persistence.EntityManager;

import com.healthsurgery.dao.EspecialidadesDAO;
import com.healthsurgery.model.Especialidade;
import com.healthsurgery.util.JPAUtil;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class UsuarioController {

	private final EspecialidadesDAO especialidadeDAO;
	
	@Inject
	public UsuarioController(EspecialidadesDAO especialidadesDAO) {
		this.especialidadeDAO = especialidadesDAO;
	}
	
	@Deprecated
	public UsuarioController() {
		this(null);
	}
	
	@Path("/usuario/medico")
	public void medico() {
		
	}

	@Path("/usuario/novo")
	public List<Especialidade> novo() {
		return especialidadeDAO.lista();
	}
	
	@Path("/usuario/recuperar")
	public void recuperar() {
		
	}
	
	@Path("/usuario/senha")
	public void senha() {
		
	}
	
	@Path("/usuario/especialidade")
	public void especialidade() {
		
	}
}
