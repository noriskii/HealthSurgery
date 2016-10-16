package com.healthsurgery.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;

@Controller
public class FirstController {

	@Path("/first/hello")
	public void hello(){
		
	}

	@Get("/")
    public void index() {
        System.out.println("primeiro projeto com VRaptor 4!");
        //return "Primeiro Teste, Olá mundo!";
    }
}
