package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ResultadoQuestionario {

	@Id
	private int idQuestionario;
	
	private int nivelSofrimentoQuestionario;

	public ResultadoQuestionario() {}
	
	public ResultadoQuestionario(int idQuestionario, int nivelSofrimentoQuestionario) {
		super();
		this.idQuestionario = idQuestionario;
		this.nivelSofrimentoQuestionario = nivelSofrimentoQuestionario;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public int getNivelSofrimentoQuestionario() {
		return nivelSofrimentoQuestionario;
	}

	public void setNivelSofrimentoQuestionario(int nivelSofrimentoQuestionario) {
		this.nivelSofrimentoQuestionario = nivelSofrimentoQuestionario;
	}
	
	
}
