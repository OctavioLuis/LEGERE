package net.itinajero.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.itinajero.app.model.Reporte;
import net.itinajero.app.model.ReporteEnviado;
import net.itinajero.app.service.IReporteService;
import net.itinajero.app.service.ReporteEnviadoService;

@Controller
@RequestMapping("/alumno")
public class AlumnoController {
	
	@Autowired
	private IReporteService serviceReport;
	
	@Autowired
	private ReporteEnviadoService serviceReporteEnviado;

	@RequestMapping(value = "/alumno", method = RequestMethod.GET)
	public String alumno(@ModelAttribute Reporte reporte) {
		return "alumno/alumno";
	}

	@RequestMapping(value = "/reportes", method = RequestMethod.GET)
	public String verReportes(Model model) {
		model.addAttribute("reporte", serviceReporteEnviado.listarReportes(2012060166));
		System.out.println("Reportes :" + serviceReporteEnviado.listarReportes(2012060166));
		return "alumno/reportes";
	}

	@RequestMapping(value = "/bibioteca", method = RequestMethod.GET)
	public String listarLibros() {
		return "alumno/bibioteca";
	}

	@RequestMapping(value = "/perfil", method = RequestMethod.GET)
	public String verPerfil() {
		return "alumno/perfil";
	}

	@PostMapping("/guardarEnviarDespues")
	public String guardar(@ModelAttribute Reporte reporte, BindingResult result, RedirectAttributes attributes,
			@RequestParam("botom") String name) {

		if (result.hasErrors()) {
			return "docPdf/formPdf";
		}		
		reporte.setAvance(1);
		if(Integer.parseInt(name)==1) {			
			serviceReport.insertar(reporte);
		}else {
			serviceReport.insertar(reporte);
			ReporteEnviado reporteenviado=new ReporteEnviado();
			reporteenviado.setTitulo(reporte.getTitulo());
			reporteenviado.setBiografia(reporte.getBiografia());
			reporteenviado.setResumen(reporte.getResumen());
			reporteenviado.setOpinion(reporte.getOpinion());
			reporteenviado.setFechaEntrega(reporte.getFechaEntrega());
			reporteenviado.setnParcial(reporte.getnParcial());
			reporteenviado.setObservaciones("No evaluado");
			reporteenviado.setCalificacion("No evaluado");
			reporteenviado.setFechaEntrega(new Date());
			serviceReporteEnviado.insertarReporteEnviado(reporteenviado);
			serviceReport.eliminar(reporte.getIdReporte());
		}
		
		
		attributes.addFlashAttribute("msg", "Registro Guardado");
		return "redirect:/alumno/alumno";
	}
	

	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

}
