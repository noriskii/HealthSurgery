package com.healthsurgery.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;

import com.healthsurgery.dao.PacienteDAO;
import com.healthsurgery.model.Paciente;
import com.healthsurgery.model.PacienteAtual;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class PacienteController {
	
	private final Result result;
	private final Validator validator;
	private final PacienteDAO pacienteDAO;
	private final PacienteAtual pacienteAtual;

	@Inject
	public PacienteController(Result result, Validator validator, PacienteDAO pacienteDAO,
			PacienteAtual pacienteAtual) {
		this.result = result;
		this.validator = validator;
		this.pacienteDAO = pacienteDAO;
		this.pacienteAtual = pacienteAtual;
	}
	
	@Deprecated
	public PacienteController() {
		this(null, null, null, null);
	}

	@Path("/paciente/novo")
	public void novo() {
	}
	
	@Path("/paciente/dados")
	public Paciente dados() {
		//Paciente paciente = pacienteDAO.carregaPaciente()
		return null;
	}	
	
	@Path("/paciente/adiciona")
	public void adiciona(Paciente paciente, String data) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = sdf.parse(data);
		//System.out.println(parsed);
		paciente.setDtNascimentoPaciente(new java.sql.Date(parsed.getTime()));
		/*System.out.println("DADOS DO PACIENTE\n" + 
				"\n CPF: - " + paciente.getCPFPaciente() + 
				"\n NOME: - " + paciente.getNomePaciente() + 
				"\n SexoBio: - " + paciente.getSexoBiologicoPaciente() + 
				"\n OrientaçãoSex: - " + paciente.getOrientacaoSexualPaciente() + 
				"\n identidadeGen: - " + paciente.getIdentidadeGeneroPaciente() + 
				"\n dtNasc: - " + paciente.getDtNascimentoPaciente() + 
				"\n EstadoCivil: - " + paciente.getEstadoCivilPaciente() + 
				"\n etniaPac: - " + paciente.getEtniaPaciente() +
				"\n escolaridadePac: - " + paciente.getEscolaridadePaciente() +
				"\n profissaoPac: - " + paciente.getProfissaoPaciente() +
				"\n cepPac: - " + paciente.getCepPaciente() +
				"\n cidadePac: - " + paciente.getCidadePaciente() +
				"\n estadoPac: - " + paciente.getEstadoPaciente() +
				"\n paisPac: - " + paciente.getPaisPaciente() +
				"\n obsPac: - " + paciente.getObsPaciente() + "\n");*/
		//System.out.println("============================================= " + paciente.getDtNascimentoPaciente() + " =============================================");
		pacienteAtual.setPaciente(pacienteDAO.adiciona(paciente));
		result.redirectTo(FuzzyController.class).questionario();
	}
	
	
}
