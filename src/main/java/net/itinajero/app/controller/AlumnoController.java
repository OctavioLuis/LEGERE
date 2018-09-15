package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/alumno")
public class AlumnoController {
	
	@RequestMapping(value = "/alumno", method = RequestMethod.GET)
	public String alumno() {
		return "alumno/alumno";
	}
	
	@RequestMapping(value = "/reportes", method = RequestMethod.GET)
	public String verReportes() {
		return "alumno/reportes";
	}
	
	@RequestMapping(value = "/bibioteca", method = RequestMethod.GET)
	public String listarLibros() {
		return "alumno/bibioteca";
	}

}