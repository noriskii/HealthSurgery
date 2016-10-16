package com.healthsurgery.interceptor;

//@AcceptsWithAnnotations(Log.class)
//@Intercepts(after={AutorizadorInterceptor.class, LogInterceptor.class})
//Este código se encontra comentado devido a testes do plugin vraptor-jpa... que faz o que o próprio interceptor faz para nós
public class ControleDeTransacaoInterceptor {

//	private final EntityManager em;
//
//    @Inject
//    public ControleDeTransacaoInterceptor(EntityManager em) {
//        this.em = em;
//    }
//    
//    @Deprecated
//    ControleDeTransacaoInterceptor() {
//        this(null); // para uso do CDI
//    }

    /*@AroundCall
    public void intercept(SimpleInterceptorStack stack) {
        em.getTransaction().begin();
        stack.next();
        em.getTransaction().commit();
    }*/
    
//	@BeforeCall
//	public void before(){
//		em.getTransaction().begin();
//	}
//	
//	@AfterCall
//	public void after(){
//		em.getTransaction().commit();
//	}
}
