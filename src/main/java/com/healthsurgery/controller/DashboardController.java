package com.healthsurgery.controller;

import javax.inject.Inject;

import com.healthsurgery.dao.LoginDAO;
import com.healthsurgery.dao.MedicoDAO;
import com.healthsurgery.model.Login;
import com.healthsurgery.model.Medico;
import com.healthsurgery.model.MedicoAtual;
import com.healthsurgery.model.Paciente;
import com.healthsurgery.model.PacienteAtual;
import com.healthsurgery.model.UsuarioLogado;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class DashboardController {
	
	private final Result result;
	private final Validator validator;
	private final LoginDAO loginDAO;
	private final MedicoDAO medicoDAO;
	private final UsuarioLogado usuarioLogado;
	private final MedicoAtual medicoAtual;
	private final PacienteAtual pacienteAtual;
	
	@Inject
	public DashboardController(Result result, Validator validator, LoginDAO loginDAO, MedicoDAO medicoDAO, UsuarioLogado usuarioLogado, MedicoAtual medicoAtual, PacienteAtual pacienteAtual) {
		this.result = result;
		this.validator = validator;
		this.loginDAO = loginDAO;
		this.medicoDAO = medicoDAO;
		this.usuarioLogado = usuarioLogado;
		this.medicoAtual = medicoAtual;
		this.pacienteAtual =pacienteAtual;
	}
	
	@Deprecated
	DashboardController() {
		this(null, null, null, null, null, null, null);
	}

	@Path("/dashboard/login")
	public void login() {
		
	}	

	@Path("/dashboard/esqueceu")
	public void esqueceu() {
		
	}

	@Get("/dashboard/enviar")
	public void enviar(String email) {
		validator.onErrorUsePageOf(this).esqueceu();

		result.include("msg", "E-mail enviado para " + email);
		result.redirectTo(this).login();
	}
	
	@Path("/dashboard/logar")
	public void logar(Login login) {
		if(!loginDAO.existe(login)){
			validator.add(new I18nMessage("Login", "login.invalido"));
			validator.onErrorUsePageOf(this).login();
		}
		usuarioLogado.setUsuario(loginDAO.getRegistro(login));
		medicoAtual.setMedico(medicoDAO.carregaMedico(usuarioLogado.getUsuario().getRegProfissionalMedico()));
		if (medicoAtual.getMedico().isAdmin()) {
			System.out.println("É ADMIN  - " + medicoAtual.getMedico().isAdmin());
		} else {
			System.out.println("NÃO É ADMIN  - " + medicoAtual.getMedico().isAdmin());
		}
		result.redirectTo(UsuarioController.class).medico();
	}
	
	@Path("/dashboard/desconectar")
	public void desconectar() {
		usuarioLogado.setUsuario(new Login());
		medicoAtual.setMedico(new Medico());
		pacienteAtual.setPaciente(new Paciente());
		result.redirectTo(this).login();
	}
	
	//validator.onErrorUsePageOf(this).formulario();
	
	//dao.adiciona(produto);
	//result.include("msg", "Produto Adicionado com Sucesso!");
	//result.redirectTo(this).lista();
	
}
