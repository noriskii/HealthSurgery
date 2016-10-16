package com.healthsurgery.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Psicoterapia {

	@Id
	private int idQuestionario;
	
	private Date anoPsicoterapia;
	
	private int duracaoPsicoterapia;
	
	public Psicoterapia() {}

	public Psicoterapia(int idQuestionario, Date anoPsicoterapia, int duracaoPsicoterapia) {
		this.idQuestionario = idQuestionario;
		this.anoPsicoterapia = anoPsicoterapia;
		this.duracaoPsicoterapia = duracaoPsicoterapia;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public Date getAnoPsicoterapia() {
		return anoPsicoterapia;
	}

	public void setAnoPsicoterapia(Date anoPsicoterapia) {
		this.anoPsicoterapia = anoPsicoterapia;
	}

	public int getDuracaoPsicoterapia() {
		return duracaoPsicoterapia;
	}

	public void setDuracaoPsicoterapia(int duracaoPsicoterapia) {
		this.duracaoPsicoterapia = duracaoPsicoterapia;
	}
	
	
}
