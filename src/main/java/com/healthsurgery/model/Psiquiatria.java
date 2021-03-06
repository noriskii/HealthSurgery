package com.healthsurgery.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Psiquiatria {

	@Id
	private int idQuestionario;
	
	private Date anoPsiquiatria;
	
	private int duracaoPsiquiatria;
	
	private int internacao;
	
	public Psiquiatria() {}

	public Psiquiatria(int idQuestionario, Date anoPsiquiatria, int duracaoPsiquiatria, int internacao) {
		this.idQuestionario = idQuestionario;
		this.anoPsiquiatria = anoPsiquiatria;
		this.duracaoPsiquiatria = duracaoPsiquiatria;
		this.internacao = internacao;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public Date getAnoPsiquiatria() {
		return anoPsiquiatria;
	}

	public void setAnoPsiquiatria(Date anoPsiquiatria) {
		this.anoPsiquiatria = anoPsiquiatria;
	}

	public int getDuracaoPsiquiatria() {
		return duracaoPsiquiatria;
	}

	public void setDuracaoPsiquiatria(int duracaoPsiquiatria) {
		this.duracaoPsiquiatria = duracaoPsiquiatria;
	}

	public int getInternacao() {
		return internacao;
	}

	public void setInternacao(int internacao) {
		this.internacao = internacao;
	}


}
