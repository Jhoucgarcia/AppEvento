package com.developer.EventoRest.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.developer.EventoRest.models.Usuario;
import com.developer.EventoRest.repositories.UsuarioRepository;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private UsuarioRepository ur;

	@GetMapping
	public String telaLogin() {
		return "login2";
	}

	@PostMapping("/cadastrar")
	public ResponseEntity<String> salvaLogin(@Valid Usuario usuario, BindingResult bindingResult, Model model) {
		
		if (bindingResult.hasErrors()) {
			System.out.println(bindingResult.getFieldError());
			return new ResponseEntity<String>("Verifique os dados informados",HttpStatus.BAD_REQUEST);
		}

		System.out.println("Tentando salvar");
		System.out.println(usuario);
		usuario.setSenha(new BCryptPasswordEncoder().encode(usuario.getSenha()));
		Usuario u = ur.findByLogin(usuario.getLogin());
		if (u == null) {
			ur.save(usuario);
		} else {
			
			System.out.println("Já cadastrado!");
			return new ResponseEntity<String>("Usuário já cadastrado", HttpStatus.BAD_REQUEST);
		}

		System.out.println("Salvo");
		model.addAttribute("salvo", true);
		return new ResponseEntity<String>("Cadastro com sucesso", HttpStatus.OK);

	}

}
