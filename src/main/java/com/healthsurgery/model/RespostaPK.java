package com.healthsurgery.model;

import java.io.Serializable;

public class RespostaPK implements Serializable{

	private static final long serialVersionUID = 1L;

	protected int idQuestionario;
	protected int idResposta;
	protected int idPergunta;
	
	public RespostaPK() {}
	
	public RespostaPK(int idQuestionario, int idResposta, int idPergunta) {
		super();
		this.idQuestionario = idQuestionario;
		this.idResposta = idResposta;
		this.idPergunta = idPergunta;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idPergunta;
		result = prime * result + idQuestionario;
		result = prime * result + idResposta;
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RespostaPK other = (RespostaPK) obj;
		if (idPergunta != other.idPergunta)
			return false;
		if (idQuestionario != other.idQuestionario)
			return false;
		if (idResposta != other.idResposta)
			return false;
		return true;
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
