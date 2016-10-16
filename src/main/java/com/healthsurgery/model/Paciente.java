package com.healthsurgery.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Paciente {

	@Id @GeneratedValue
	private int idPaciente;
	
	@NotEmpty
	private String CPFPaciente;
	
	@NotEmpty
	private String nomePaciente;
	
	@NotEmpty
	private String sexoBiologicoPaciente;
	
	@NotEmpty
	private String orientacaoSexualPaciente;
	
	@NotEmpty
	private String identidadeGeneroPaciente;
	
	@NotEmpty
	private Date dtNascimentoPaciente;
	
	@NotEmpty
	private String estadoCivilPaciente;
	
	@NotEmpty
	private String etniaPaciente;
	
	@NotEmpty
	private String escolaridadePaciente;
	
	@NotEmpty
	private String profissaoPaciente;
	
	@NotEmpty
	private String cepPaciente;
	
	@NotEmpty
	private String cidadePaciente;
	
	@NotEmpty
	private String estadoPaciente;
	
	@NotEmpty
	private String paisPaciente;
	
	@NotEmpty
	private String obsPaciente;
	
	public Paciente() {}
	
	public Paciente(String CPFPaciente, String nomePaciente, String sexoBiologicoPaciente,
			String orientacaoSexualPaciente, String identidadeGeneroPaciente, Date dtNascimentoPaciente,
			String estadoCivilPaciente, String etniaPaciente, String escolaridadePaciente, String profissaoPaciente,
			String cepPaciente, String cidadePaciente, String estadoPaciente, String paisPaciente, String obsPaciente) {
		this.CPFPaciente = CPFPaciente;
		this.nomePaciente = nomePaciente;
		this.sexoBiologicoPaciente = sexoBiologicoPaciente;
		this.orientacaoSexualPaciente = orientacaoSexualPaciente;
		this.identidadeGeneroPaciente = identidadeGeneroPaciente;
		this.dtNascimentoPaciente = dtNascimentoPaciente;
		this.estadoCivilPaciente = estadoCivilPaciente;
		this.etniaPaciente = etniaPaciente;
		this.escolaridadePaciente = escolaridadePaciente;
		this.profissaoPaciente = profissaoPaciente;
		this.cepPaciente = cepPaciente;
		this.cidadePaciente = cidadePaciente;
		this.estadoPaciente = estadoPaciente;
		this.paisPaciente = paisPaciente;
		this.obsPaciente = obsPaciente;
	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public String getCPFPaciente() {
		return CPFPaciente;
	}

	public void setCPFPaciente(String cPFPaciente) {
		CPFPaciente = cPFPaciente;
	}

	public String getNomePaciente() {
		return nomePaciente;
	}

	public void setNomePaciente(String nomePaciente) {
		this.nomePaciente = nomePaciente;
	}

	public String getSexoBiologicoPaciente() {
		return sexoBiologicoPaciente;
	}

	public void setSexoBiologicoPaciente(String sexoBiologicoPaciente) {
		this.sexoBiologicoPaciente = sexoBiologicoPaciente;
	}

	public String getOrientacaoSexualPaciente() {
		return orientacaoSexualPaciente;
	}

	public void setOrientacaoSexualPaciente(String orientacaoSexualPaciente) {
		this.orientacaoSexualPaciente = orientacaoSexualPaciente;
	}

	public String getIdentidadeGeneroPaciente() {
		return identidadeGeneroPaciente;
	}

	public void setIdentidadeGeneroPaciente(String identidadeGeneroPaciente) {
		this.identidadeGeneroPaciente = identidadeGeneroPaciente;
	}

	public Date getDtNascimentoPaciente() {
		return dtNascimentoPaciente;
	}

	public void setDtNascimentoPaciente(Date dtNascimentoPaciente) {
		this.dtNascimentoPaciente = dtNascimentoPaciente;
	}

	public String getEstadoCivilPaciente() {
		return estadoCivilPaciente;
	}

	public void setEstadoCivilPaciente(String estadoCivilPaciente) {
		this.estadoCivilPaciente = estadoCivilPaciente;
	}

	public String getEtniaPaciente() {
		return etniaPaciente;
	}

	public void setEtniaPaciente(String etniaPaciente) {
		this.etniaPaciente = etniaPaciente;
	}

	public String getEscolaridadePaciente() {
		return escolaridadePaciente;
	}

	public void setEscolaridadePaciente(String escolaridadePaciente) {
		this.escolaridadePaciente = escolaridadePaciente;
	}

	public String getProfissaoPaciente() {
		return profissaoPaciente;
	}

	public void setProfissaoPaciente(String profissaoPaciente) {
		this.profissaoPaciente = profissaoPaciente;
	}

	public String getCepPaciente() {
		return cepPaciente;
	}

	public void setCepPaciente(String cepPaciente) {
		this.cepPaciente = cepPaciente;
	}

	public String getCidadePaciente() {
		return cidadePaciente;
	}

	public void setCidadePaciente(String cidadePaciente) {
		this.cidadePaciente = cidadePaciente;
	}

	public String getEstadoPaciente() {
		return estadoPaciente;
	}

	public void setEstadoPaciente(String estadoPaciente) {
		this.estadoPaciente = estadoPaciente;
	}

	public String getPaisPaciente() {
		return paisPaciente;
	}

	public void setPaisPaciente(String paisPaciente) {
		this.paisPaciente = paisPaciente;
	}

	public String getObsPaciente() {
		return obsPaciente;
	}

	public void setObsPaciente(String obsPaciente) {
		this.obsPaciente = obsPaciente;
	}
	
	
	
}
