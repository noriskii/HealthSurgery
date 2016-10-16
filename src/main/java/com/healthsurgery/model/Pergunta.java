package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pergunta {

	@Id @GeneratedValue
	private int idPergunta;
	
	private String enunciadoPergunta;

	public Pergunta() {}
	
	public Pergunta(String enunciadoPergunta) {
		this.enunciadoPergunta = enunciadoPergunta;
	}

	public int getIdPergunta() {
		return idPergunta;
	}

	public void setIdPergunta(int idPergunta) {
		this.idPergunta = idPergunta;
	}

	public String getEnunciadoPergunta() {
		return enunciadoPergunta;
	}

	public void setEnunciadoPergunta(String enunciadoPergunta) {
		this.enunciadoPergunta = enunciadoPergunta;
	}
	
	
}
