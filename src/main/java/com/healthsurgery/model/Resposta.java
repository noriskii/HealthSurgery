package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
@IdClass(RespostaPK.class)
public class Resposta {

	@Id
	private int idQuestionario;
	
	@Id
	private int idResposta;
	
	@Id
	private int idPergunta;

	public Resposta() {}
	
	public Resposta(int idQuestionario, int idResposta, int idPergunta) {
		super();
		this.idQuestionario = idQuestionario;
		this.idResposta = idResposta;
		this.idPergunta = idPergunta;
	}

	public int getIdQuestionario() {
		return idQuestionario;
	}

	public void setIdQuestionario(int idQuestionario) {
		this.idQuestionario = idQuestionario;
	}

	public int getIdResposta() {
		return idResposta;
	}

	public void setIdResposta(int idResposta) {
		this.idResposta = idResposta;
	}

	public int getIdPergunta() {
		return idPergunta;
	}

	public void setIdPergunta(int idPergunta) {
		this.idPergunta = idPergunta;
	}
	
	
}
