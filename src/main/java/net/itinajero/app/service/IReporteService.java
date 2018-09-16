package net.itinajero.app.service;

import net.itinajero.app.model.Reporte;

public interface IReporteService {
	void insertar(Reporte reporte);
	Reporte consultaPorMatricula(int matricula);
	void eliminar(int idReporte);

}
