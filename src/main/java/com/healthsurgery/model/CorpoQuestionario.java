package com.healthsurgery.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
@IdClass(CorpoQuestionarioPK.class)
public class CorpoQuestionario implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	private int idQuestionario;
	
	@Id
	private int idCorpo;
	
	public CorpoQuestionario() {}

	public CorpoQuestionario(int idQuestionario, int idCorpo) {
		this.idQuestionario = idQuestionario;
		this.idCorpo = idCorpo;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public int getIdCorpo() {
		return idCorpo;
	}

	public void setIdCorpo(int idCorpo) {
		this.idCorpo = idCorpo;
	}
	
	
}
