package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Medico {

	@Id
	private int regProfissionalMedico;
	
	@NotEmpty
	private String nomeMedico;
	
	@NotEmpty
	private String instituicaoMedico;
	
	@NotEmpty
	private String cidadeMedico;
	
	@NotEmpty
	private String estadoMedico;
	
	@NotEmpty
	private String cepMedico;
	
	@NotEmpty
	private String paisMedico;
	
	private int idEspecialidade;

	public Medico() {}
	
	public Medico(int regProfissionalMedico, String nomeMedico, String instituicaoMedico, String cidadeMedico,
			String estadoMedico, String cepMedico, String paisMedico, int idEspecialidade) {
		this.regProfissionalMedico = regProfissionalMedico;
		this.nomeMedico = nomeMedico;
		this.instituicaoMedico = instituicaoMedico;
		this.cidadeMedico = cidadeMedico;
		this.estadoMedico = estadoMedico;
		this.cepMedico = cepMedico;
		this.paisMedico = paisMedico;
		this.idEspecialidade = idEspecialidade;
	}

	public int getRegProfissionalMedico() {
		return regProfissionalMedico;
	}

	public void setRegProfissionalMedico(int regProfissionalMedico) {
		this.regProfissionalMedico = regProfissionalMedico;
	}

	public String getNomeMedico() {
		return nomeMedico;
	}

	public void setNomeMedico(String nomeMedico) {
		this.nomeMedico = nomeMedico;
	}

	public String getInstituicaoMedico() {
		return instituicaoMedico;
	}

	public void setInstituicaoMedico(String instituicaoMedico) {
		this.instituicaoMedico = instituicaoMedico;
	}

	public String getCidadeMedico() {
		return cidadeMedico;
	}

	public void setCidadeMedico(String cidadeMedico) {
		this.cidadeMedico = cidadeMedico;
	}

	public String getEstadoMedico() {
		return estadoMedico;
	}

	public void setEstadoMedico(String estadoMedico) {
		this.estadoMedico = estadoMedico;
	}

	public String getCepMedico() {
		return cepMedico;
	}

	public void setCepMedico(String cepMedico) {
		this.cepMedico = cepMedico;
	}

	public String getPaisMedico() {
		return paisMedico;
	}

	public void setPaisMedico(String paisMedico) {
		this.paisMedico = paisMedico;
	}

	public int getIdEspecialidade() {
		return idEspecialidade;
	}

	public void setIdEspecialidade(int idEspecialidade) {
		this.idEspecialidade = idEspecialidade;
	}
	
	
}
