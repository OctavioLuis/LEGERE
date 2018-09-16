package net.itinajero.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.itinajero.app.model.ReporteEnviado;
import net.itinajero.app.repository.ReporteEnviadoRepository;
@Service
public class ReporteEnviadoServiceImpl implements ReporteEnviadoService {

	@Autowired
	private ReporteEnviadoRepository repEnviadoRepo; 
	
	@Override
	public void insertarReporteEnviado(ReporteEnviado reporteEnviado) {
		repEnviadoRepo.save(reporteEnviado);
		
	}

	@Override
	public List<ReporteEnviado> listarReportes(int matricula) {
		// TODO Auto-generated method stub
		return repEnviadoRepo.listarReportesEnviados(matricula);
	}

}
