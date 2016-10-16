package com.healthsurgery.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Questionario {

	@Id @GeneratedValue
	private int idQuestionario;
	
	private int idPaciente;
	
	private int idMedico;
	
	private Date dataQuestionario;

	public Questionario() {}
	
	public Questionario(int idPaciente, int idMedico, Date dataQuestionario) {
		this.idPaciente = idPaciente;
		this.idMedico = idMedico;
		this.dataQuestionario = dataQuestionario;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public int getIdMedico() {
		return idMedico;
	}

	public void setIdMedico(int idMedico) {
		this.idMedico = idMedico;
	}

	public Date getDataQuestionario() {
		return dataQuestionario;
	}

	public void setDataQuestionario(Date dataQuestionario) {
		this.dataQuestionario = dataQuestionario;
	}
	
	
}
