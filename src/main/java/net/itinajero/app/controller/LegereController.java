package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/legere")
public class LegereController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "LEGERE/index";
	}
	
	@RequestMapping(value = "/alumno", method = RequestMethod.GET)
	public String alumno() {
		return "LEGERE/alumno";
	}
	
	@RequestMapping(value = "/reportes", method = RequestMethod.GET)
	public String reportes() {
		return "LEGERE/reportes";
	}
	
}
