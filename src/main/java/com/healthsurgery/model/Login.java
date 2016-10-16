package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Login {

	private int regProfissionalMedico;
	
	@Id @NotEmpty
	private String email;
	
	@NotEmpty
	private String senha;
	
	public Login() {};

	public Login(int regProfissionalMedico, String email, String senha) {
		this.regProfissionalMedico = regProfissionalMedico;
		this.email = email;
		this.senha = senha;
	}

	public int getRegProfissionalMedico() {
		return regProfissionalMedico;
	}

	public void setRegProfissionalMedico(int regProfissionalMedico) {
		this.regProfissionalMedico = regProfissionalMedico;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
