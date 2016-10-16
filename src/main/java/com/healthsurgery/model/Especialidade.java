package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Especialidade {

	@Id
	private int idEspecialidade;
	
	@NotEmpty
	private String nomeEspecialidade;
	
	public Especialidade() {}

	public Especialidade(int idEspecialidade, String nomeEspecialidade) {
		this.idEspecialidade = idEspecialidade;
		this.nomeEspecialidade = nomeEspecialidade;
	}

	public int getIdEspecialidade() {
		return idEspecialidade;
	}

	public void setIdEspecialidade(int idEspecialidade) {
		this.idEspecialidade = idEspecialidade;
	}

	public String getNomeEspecialidade() {
		return nomeEspecialidade;
	}

	public void setNomeEspecialidade(String nomeEspecialidade) {
		this.nomeEspecialidade = nomeEspecialidade;
	}
	
	
}
