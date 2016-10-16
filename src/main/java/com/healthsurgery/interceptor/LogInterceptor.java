package com.healthsurgery.interceptor;

import br.com.caelum.vraptor.Intercepts;

@Intercepts
public class LogInterceptor {
	/*
	private final ControllerMethod controllerMethod;
	
	@Inject
	public LogInterceptor(ControllerMethod controllerMethod) {
		this.controllerMethod = controllerMethod;
	}
	
	@Deprecated
	LogInterceptor() {
		this(null);
	}
	
	@Accepts
	public boolean accepts() {
		return controllerMethod.containsAnnotation(Log.class);
	}
	
	@BeforeCall
	public void before() {
		String nomeDoMetodo = controllerMethod.getMethod().getName();
		System.out.println("Executando o método: " + nomeDoMetodo);
	}
	
	*/
}
