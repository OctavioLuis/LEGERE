package net.itinajero.app.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import net.itinajero.app.model.Reporte;


@Repository
public interface ReporteRepository extends JpaRepository<Reporte, Integer> {
	
	@Query("select RE from Reporte RE where RE.matricula = ?1")
	Optional <Reporte> avanceReporte(int matricula);

}
