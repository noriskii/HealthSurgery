package com.healthsurgery.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import com.healthsurgery.dao.CorpoDAO;
import com.healthsurgery.dao.CorpoQuestionarioDAO;
import com.healthsurgery.dao.PsicoterapiaDAO;
import com.healthsurgery.dao.PsiquiatriaDAO;
import com.healthsurgery.dao.QuestionarioDAO;
import com.healthsurgery.dao.RespostaDAO;
import com.healthsurgery.dao.ResultadoQuestionarioDAO;
import com.healthsurgery.model.Psicoterapia;
import com.healthsurgery.model.Psiquiatria;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class FuzzyController {
	
	private final Result result;
	private final Validator validator;
	//CRIAR AS DAOS RESPECTIVAS CORRETAMENTE
	private final CorpoDAO corpoDAO;
	private final CorpoQuestionarioDAO corpoQuestionarioDAO;
	private final PsicoterapiaDAO psicoterapiaDAO;
	private final PsiquiatriaDAO psiquiatriaDAO;
	private final QuestionarioDAO questionarioDAO;
	private final RespostaDAO respostaDAO ;
	private final ResultadoQuestionarioDAO resultadoQuestionarioDAO;

	@Inject
	public FuzzyController(Result result, Validator validator, CorpoDAO corpoDAO,
			CorpoQuestionarioDAO corpoQuestionarioDAO, PsicoterapiaDAO psicoterapiaDAO, PsiquiatriaDAO psiquiatriaDAO,
			QuestionarioDAO questionarioDAO, RespostaDAO respostaDAO,
			ResultadoQuestionarioDAO resultadoQuestionarioDAO) {
		this.result = result;
		this.validator = validator;
		this.corpoDAO = corpoDAO;
		this.corpoQuestionarioDAO = corpoQuestionarioDAO;
		this.psicoterapiaDAO = psicoterapiaDAO;
		this.psiquiatriaDAO = psiquiatriaDAO;
		this.questionarioDAO = questionarioDAO;
		this.respostaDAO = respostaDAO;
		this.resultadoQuestionarioDAO = resultadoQuestionarioDAO;
	}
	
	@Deprecated
	FuzzyController() {
		this(null, null, null, null, null, null, null, null, null);
	}

	@Path("/fuzzy/questionario")
	public void questionario() {
		
	}
	
	@Path("/fuzzy/adiciona")
	public void adiciona(List<String> mapaCorpo, String questao1, String questao2, List<String> questao3, List<String> questao4, String questao5, String questao6, Psiquiatria psiquiatria, String anoPsiquiatria, Psicoterapia psicoterapia, String anoPsicoterapia) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		System.out.println("Descricoes do mapa corporal - " + mapaCorpo);
		System.out.println("\nQUESTAO 1 - " + questao1);
		System.out.println("\nQUESTAO 2 - " + questao2);
		System.out.println("\nQUESTAO 3 - " + questao3);
		System.out.println("\nQUESTAO 4 - " + questao4);
		System.out.println("\nQUESTAO 5 - " + questao5);
		System.out.println("\nQUESTAO 6 - " + questao6);
		System.out.println("\nPsiquiatria - " + psiquiatria);
		Date parsePsiqui = sdf.parse(anoPsiquiatria);
		psiquiatria.setAnoPsiquiatria(new java.sql.Date(parsePsiqui.getTime()));
		System.out.println("\n\tAno - " + psiquiatria.getAnoPsiquiatria());
		System.out.println("\n\tDuracao - " + psiquiatria.getDuracaoPsiquiatria());
		System.out.println("\n\tInternacao - " + psiquiatria.getInternacao());
		System.out.println("\nPsicoterapia - " + psicoterapia);
		Date parsePsico = sdf.parse(anoPsicoterapia);
		psicoterapia.setAnoPsicoterapia(new java.sql.Date(parsePsico.getTime()));
		System.out.println("\n\tAno - " + psicoterapia.getAnoPsicoterapia());
		System.out.println("\n\tDuracao - " + psicoterapia.getDuracaoPsicoterapia());
		
		
	}
	
}
