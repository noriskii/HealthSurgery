package com.healthsurgery.controller;

import java.util.List;

import javax.inject.Inject;

import com.healthsurgery.dao.EspecialidadesDAO;
import com.healthsurgery.dao.LoginDAO;
import com.healthsurgery.dao.MedicoDAO;
import com.healthsurgery.model.Especialidade;
import com.healthsurgery.model.Login;
import com.healthsurgery.model.Medico;
import com.healthsurgery.model.MedicoAtual;
import com.healthsurgery.model.UsuarioLogado;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class UsuarioController {

	private final Result result;
	private final Validator validator;
	private final EspecialidadesDAO especialidadeDAO;
	private final MedicoDAO medicoDAO;
	private final LoginDAO loginDAO;
	private final UsuarioLogado usuarioLogado;
	private final MedicoAtual medicoAtual;
	
	@Inject
	public UsuarioController(Result result, Validator validator, EspecialidadesDAO especialidadesDAO, MedicoDAO medicoDAO, LoginDAO loginDAO, UsuarioLogado usuarioLogado, MedicoAtual medicoAtual) {
		this.result = result;
		this.validator = validator;
		this.especialidadeDAO = especialidadesDAO;
		this.medicoDAO = medicoDAO;
		this.loginDAO = loginDAO;
		this.usuarioLogado = usuarioLogado;
		this.medicoAtual = medicoAtual;
	}
	
	@Deprecated
	public UsuarioController() {
		this(null, null, null, null, null, null, null);
	}
	
	@Path("/usuario/medico")
	public Medico medico() {
		Medico medico = medicoDAO.carregaMedico(usuarioLogado.getUsuario().getRegProfissionalMedico());
		medicoAtual.setMedico(medico);
		return medico;
	}

	@Path("/usuario/novo")
	public List<Especialidade> novo() {
		return especialidadeDAO.lista();
	}
	
	@Path("/usuario/atualizar")
	public void atualizar(Medico medico) {
		medico.setRegProfissionalMedico(usuarioLogado.getUsuario().getRegProfissionalMedico());
		medicoDAO.atualiza(medico);
		result.include("msg", "Atualizado com sucesso");
		result.redirectTo(this).medico();
	}
	
	@Path("/usuario/recuperar")
	public void recuperar() {
		
	}
	
	@Path("/usuario/senha")
	public void senha() {
		
	}
	
	@Path("/usuario/novasenha")
	public void novasenha(String senhaAntiga, String senhaNova, String confirmaSenha) {
		if(senhaAntiga.equals(usuarioLogado.getUsuario().getSenha()) && senhaNova.equals(confirmaSenha)) {
			usuarioLogado.getUsuario().setSenha(senhaNova);
			loginDAO.atualiza(usuarioLogado.getUsuario());
			result.include("msg", "Senha alterada com sucesso");
			result.redirectTo(this).medico();
		} else {
			validator.add(new I18nMessage("Erro", "dados.incorretos"));
			validator.onErrorRedirectTo(this).senha();
		}
	}
	
	@Path("/usuario/especialidade")
	public void especialidade() {
		
	}
	
	@Path("/usuario/adiciona")
	public void adiciona(Medico medico, String email, String senha) {
		//validator.onErrorUsePageOf(this).novo();
		medicoDAO.adiciona(medico);
		Login login = new Login();
		login.setRegProfissionalMedico(medico.getRegProfissionalMedico());
		login.setEmail(email);
		login.setSenha(senha);
		loginDAO.adiciona(login);
		result.include("msg", "Médico criado com sucesso!");
		result.redirectTo(DashboardController.class).login();
	}
	
	@Path("/usuario/espec")
	public void espec(Especialidade especialidade) {
		validator.onErrorUsePageOf(this).especialidade();
		especialidadeDAO.adiciona(especialidade);
		result.include("msg", "Especialidade Adicionada");
		result.redirectTo(this).medico();
	}
	
}
