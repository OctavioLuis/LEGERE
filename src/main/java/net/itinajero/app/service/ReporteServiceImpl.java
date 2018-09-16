package net.itinajero.app.service;



import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.itinajero.app.model.Reporte;
import net.itinajero.app.repository.ReporteRepository;


@Service
public class ReporteServiceImpl implements IReporteService{

	@Autowired
	private ReporteRepository repositoryReporte;
	
	@Override
	public void insertar(Reporte reporte) {
		repositoryReporte.save(reporte);
		
	}

	@Override
	public Reporte consultaPorMatricula(int matricula) {
		Optional<Reporte> optional=repositoryReporte.avanceReporte(matricula);
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	@Override
	public void eliminar(int idReporte) {
		repositoryReporte.deleteById(idReporte);
		
	}

}
