package com.healthsurgery.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.healthsurgery.model.Login;

public class LoginDAO {

	private final EntityManager em;
	
	@Inject
	public LoginDAO(EntityManager em) {
		this.em = em;
	}
	
	@Deprecated
	public LoginDAO() {
		this(null);
	}

	public void adiciona(Login login) {
    	em.getTransaction().begin();
		em.persist(login);
		em.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Login> lista() {
		return em.createQuery("select log from Login log").getResultList();
	}

public void remove(Login login) {
		em.getTransaction().begin();
		em.remove(busca(login));
		em.getTransaction().commit();
	}
	
	public Login busca(Login login) {
		return em.find(Login.class, login.getRegProfissionalMedico());
	}

	public void atualiza(Login login) {
		em.getTransaction().begin();
		em.merge(login);
		em.getTransaction().commit();
	}

	public boolean existe(Login usuario) {
		return !em.createQuery("select u from Login u where u.email = :email and u.senha = :senha", Login.class)
				.setParameter("email", usuario.getEmail())
				.setParameter("senha", usuario.getSenha())
				.getResultList().isEmpty();
	}
	
	public Login getRegistro(Login usuario) {
		return em.createQuery("select u from Login u where u.email = :email and u.senha = :senha", Login.class)
				.setParameter("email", usuario.getEmail())
				.setParameter("senha", usuario.getSenha())
				.getSingleResult();
	}
}