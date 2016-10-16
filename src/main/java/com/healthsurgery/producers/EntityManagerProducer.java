package com.healthsurgery.producers;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;

import com.healthsurgery.util.JPAUtil;

public class EntityManagerProducer {
	@Produces @RequestScoped
	public EntityManager criaEM(){
		return JPAUtil.criaEntityManager();
	}
	
}
