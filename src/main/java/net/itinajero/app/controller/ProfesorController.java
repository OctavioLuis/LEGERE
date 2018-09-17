package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/profesor")
public class ProfesorController {

	@RequestMapping(value = "/profesor", method = RequestMethod.GET)
	public String profesor() {
		return "profesor/profesor";
	}
	
	@RequestMapping(value = "/evaluacionReporte", method = RequestMethod.GET)
	public String evaluacionReporte() {
		return "profesor/evaluacionReporte";
	}	
}
