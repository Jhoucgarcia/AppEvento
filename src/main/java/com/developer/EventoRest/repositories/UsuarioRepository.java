package com.developer.EventoRest.repositories;

import org.springframework.data.repository.CrudRepository;

import com.developer.EventoRest.models.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, String>{
	
	Usuario findByLogin(String login);

	
}
