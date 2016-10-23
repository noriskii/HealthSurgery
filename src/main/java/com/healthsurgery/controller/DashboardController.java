package com.healthsurgery.controller;

import javax.inject.Inject;

import com.healthsurgery.dao.LoginDAO;
import com.healthsurgery.model.Login;
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
	private final UsuarioLogado usuarioLogado;
	
	@Inject
	public DashboardController(Result result, Validator validator, LoginDAO loginDAO, UsuarioLogado usuarioLogado) {
		this.result = result;
		this.validator = validator;
		this.loginDAO = loginDAO;
		this.usuarioLogado = usuarioLogado;
	}
	
	@Deprecated
	DashboardController() {
		this(null, null, null, null);
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
		result.redirectTo(UsuarioController.class).medico(usuarioLogado.getUsuario().getRegProfissionalMedico());
	}
	
	//validator.onErrorUsePageOf(this).formulario();
	
	//dao.adiciona(produto);
	//result.include("msg", "Produto Adicionado com Sucesso!");
	//result.redirectTo(this).lista();
	
}
