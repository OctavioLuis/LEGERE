package net.itinajero.app.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import net.itinajero.app.model.ReporteEnviado;
@Repository
public interface ReporteEnviadoRepository extends JpaRepository<ReporteEnviado, Integer> {
	
	@Query("select REE from ReporteEnviado REE where REE.matricula=?1")
	List <ReporteEnviado> listarReportesEnviados(int matricula);
	
	

}
