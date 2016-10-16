package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@IdClass(OpcoesRespostasPK.class)
public class OpcoesRespostas {

	@Id
	private int idOpcaoResposta;
	
	@Id
	private int idPergunta;
	
	@NotEmpty
	private String enunciadoResposta;

	
	
	public int getIdOpcaoResposta() {
		return idOpcaoResposta;
	}

	public void setIdOpcaoResposta(int idOpcaoResposta) {
		this.idOpcaoResposta = idOpcaoResposta;
	}

	public int getIdPergunta() {
		return idPergunta;
	}

	public void setIdPergunta(int idPergunta) {
		this.idPergunta = idPergunta;
	}

	public String getEnunciadoResposta() {
		return enunciadoResposta;
	}

	public void setEnunciadoResposta(String enunciadoResposta) {
		this.enunciadoResposta = enunciadoResposta;
	}
	
	
	
}
