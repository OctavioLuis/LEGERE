package net.itinajero.app.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reportesEnviados")
public class ReporteEnviado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto-increment MYSQL
	private int idReporte;
	private int matricula =2012060166;
	private String titulo;
	private String biografia;
	private String resumen;
	private String opinion;
	private String observaciones;
	private String calificacion;
	private Date fechaEntrega;
	private int nParcial;
	
	
	public ReporteEnviado() {}


	public int getIdReporte() {
		return idReporte;
	}


	public void setIdReporte(int idReporte) {
		this.idReporte = idReporte;
	}


	public int getMatricula() {
		return matricula;
	}


	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getBiografia() {
		return biografia;
	}


	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}


	public String getResumen() {
		return resumen;
	}


	public void setResumen(String resumen) {
		this.resumen = resumen;
	}


	public String getOpinion() {
		return opinion;
	}


	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}


	public String getObservaciones() {
		return observaciones;
	}


	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}


	public String getCalificacion() {
		return calificacion;
	}


	public void setCalificacion(String calificacion) {
		this.calificacion = calificacion;
	}


	public Date getFechaEntrega() {
		return fechaEntrega;
	}


	public void setFechaEntrega(Date fechaEntrega) {
		this.fechaEntrega = fechaEntrega;
	}


	public int getnParcial() {
		return nParcial;
	}


	public void setnParcial(int nParcial) {
		this.nParcial = nParcial;
	}


	@Override
	public String toString() {
		return "ReporteEnviado [idReporte=" + idReporte + ", matricula=" + matricula + ", titulo=" + titulo
				+ ", biografia=" + biografia + ", resumen=" + resumen + ", opinion=" + opinion + ", observaciones="
				+ observaciones + ", calificacion=" + calificacion + ", fechaEntrega=" + fechaEntrega + ", nParcial="
				+ nParcial + "]";
	}


	
	

}
