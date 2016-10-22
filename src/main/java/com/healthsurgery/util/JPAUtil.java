package com.healthsurgery.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	public static EntityManager criaEntityManager() {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("default");
		System.out.println("conectado");
		return factory.createEntityManager();
	}
	
}
