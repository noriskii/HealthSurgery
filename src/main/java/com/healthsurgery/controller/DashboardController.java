package com.healthsurgery.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class DashboardController {
	
	private final Result result;
	private final Validator validator;
	
	@Inject
	public DashboardController(Result result, Validator validator) {
		this.result = result;
		this.validator = validator;
	}
	
	@Deprecated
	DashboardController() {
		this(null, null);
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
	//validator.onErrorUsePageOf(this).formulario();
	
	//dao.adiciona(produto);
	//result.include("msg", "Produto Adicionado com Sucesso!");
	//result.redirectTo(this).lista();
	
}
