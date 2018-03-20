package com.developer.EventoRest.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.developer.EventoRest.models.Evento;

public interface EventoRepository extends JpaRepository<Evento, String>{

	Evento findOneByCodigo(Long id);

}
