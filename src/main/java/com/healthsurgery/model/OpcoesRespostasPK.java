package com.healthsurgery.model;

import java.io.Serializable;

public class OpcoesRespostasPK implements Serializable{

	private static final long serialVersionUID = 1L;

	protected int idOpcaoResposta;
	protected int idPergunta;

	public OpcoesRespostasPK() {}
	
	public OpcoesRespostasPK(int idOpcaoResposta, int idPergunta) {
		this.idOpcaoResposta = idOpcaoResposta;
		this.idPergunta = idPergunta;
	}

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idOpcaoResposta;
		result = prime * result + idPergunta;
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
		OpcoesRespostasPK other = (OpcoesRespostasPK) obj;
		if (idOpcaoResposta != other.idOpcaoResposta)
			return false;
		if (idPergunta != other.idPergunta)
			return false;
		return true;
	}

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

	
	
}
