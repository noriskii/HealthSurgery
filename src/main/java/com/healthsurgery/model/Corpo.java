package com.healthsurgery.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Corpo {

	@GeneratedValue @Id
	private int idCorpo;
	
	@NotEmpty
	private String coordenadasCorpo;
	
	@NotEmpty
	private String descricaoCorpo;
	
	public Corpo() {}
	
	public Corpo(String coordenadasCorpo, String descricaoCorpo) {
		this.coordenadasCorpo = coordenadasCorpo;
		this.descricaoCorpo = descricaoCorpo;
	}
	

	public int getIdCorpo() {
		return idCorpo;
	}

	public void setIdCorpo(int idCorpo) {
		this.idCorpo = idCorpo;
	}

	public String getCoordenadasCorpo() {
		return coordenadasCorpo;
	}

	public void setCoordenadasCorpo(String coordenadasCorpo) {
		this.coordenadasCorpo = coordenadasCorpo;
	}

	public String getDescricaoCorpo() {
		return descricaoCorpo;
	}

	public void setDescricaoCorpo(String descricaoCorpo) {
		this.descricaoCorpo = descricaoCorpo;
	}
	
	
	
}
