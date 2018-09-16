package net.itinajero.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.itinajero.app.service.IReporteService;

@Controller
public class HomeController {

	@Autowired
	private IReporteService serviceReport;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHome() {
		return "logeo";
	}

	@RequestMapping(value = "/logeo", method = RequestMethod.POST)
	public String logeo(@RequestParam("j_username") int usuario, Model model, RedirectAttributes attributes) {				
		if (serviceReport.consultaPorMatricula(usuario) != null) {
			model.addAttribute("reporte", serviceReport.consultaPorMatricula(usuario));
			return "alumno/alumno";
		}
		return "redirect:/alumno/alumno";

	}

}
