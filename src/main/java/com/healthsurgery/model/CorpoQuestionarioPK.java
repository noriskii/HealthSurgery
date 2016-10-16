package com.healthsurgery.model;

import java.io.Serializable;

public class CorpoQuestionarioPK implements Serializable {
	//http://blog.algaworks.com/entendendo-o-equals-e-hashcode/
	private static final long serialVersionUID = 1L;

	protected int idQuestionario;
	protected int idCorpo;
	
	public CorpoQuestionarioPK() {}
	
	public CorpoQuestionarioPK(int idQuestionario, int idCorpo) {
		this.idQuestionario = idQuestionario;
		this.idCorpo = idCorpo;
	}	
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CorpoQuestionarioPK other = (CorpoQuestionarioPK) obj;
		if (idCorpo != other.idCorpo)
			return false;
		if (idQuestionario != other.idQuestionario)
			return false;
		return true;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idCorpo;
		result = prime * result + idQuestionario;
		return result;
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
