package com.healthsurgery.interceptor;

//@Intercepts
public class AutorizadorInterceptor {
	
	/*
	@Inject private UsuarioLogado usuarioLogado;
	@Inject private Result result;
	@Inject private ControllerMethod controllerMethod;
	
	@Accepts
	public boolean accepts(){
		return !controllerMethod.containsAnnotation(Public.class);
	}
	
	@AroundCall
	public void intercepta(SimpleInterceptorStack stack){
		if(usuarioLogado.getUsuario() == null) {
			result.redirectTo(LoginController.class).formulario();
			return;
		}
		//antes de executar o código
		stack.next(); // permite a execução do código
		//depois executar o código
	}
	
	@AroundCall
	public void intercepta2(SimpleInterceptorStack stack){
		if(usuarioLogado.getUsuario() != null){
			stack.next();
		}
		result.redirectTo(LoginController.class).formulario();
	}*/
	
}
