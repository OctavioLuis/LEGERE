package net.itinajero.app.service;

import java.util.List;

import net.itinajero.app.model.ReporteEnviado;

public interface ReporteEnviadoService {
	void insertarReporteEnviado(ReporteEnviado reporteEnviado);
	List<ReporteEnviado> listarReportes(int matricula);

}
