package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity 
@Table(name="departamento")
public class Departamento {
 
	@Id 
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name="id_departamento")
	private int idDepartamento;
	@Column(name="departamento")
	private String Departamento;
	@Column(name="descripcion")
	private String Descripcion;
	
	public Departamento() {
		
	}

	public Departamento(int idDepartamento, String departamento, String descripcion) {
		this.idDepartamento = idDepartamento;
		this.Departamento = departamento;
		this.Descripcion = descripcion;
	}

	public int getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(int idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public String getDepartamento() {
		return Departamento;
	}

	public void setDepartamento(String departamento) {
		this.Departamento = departamento;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.Descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Departamento [idDepartamento=" + idDepartamento + ", Departamento=" + Departamento + ", Descripcion="
				+ Descripcion + "]";
	}
	
	
}
