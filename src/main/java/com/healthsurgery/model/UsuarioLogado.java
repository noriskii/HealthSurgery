package com.healthsurgery.model;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@SessionScoped
@Named
public class UsuarioLogado implements Serializable {

private static final long serialVersionUID = 1L;
	
	private Login usuario;

	public Login getUsuario() {
		return usuario;
	}

	public void setUsuario(Login usuario) {
		this.usuario = usuario;
	}
}
