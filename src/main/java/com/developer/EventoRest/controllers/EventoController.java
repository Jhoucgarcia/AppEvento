package com.developer.EventoRest.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.developer.EventoRest.models.Evento;
import com.developer.EventoRest.repositories.EventoRepository;

@Controller
@RequestMapping("/evento")
public class EventoController {

	@Autowired
	private EventoRepository er;

	
	@ResponseBody
	@GetMapping(value = "/{id}")
	public Evento buscaEvento(@PathVariable Long id) {
		Evento ev = er.findOneByCodigo(id);
		return ev;
	}

	@RequestMapping(method = RequestMethod.GET)
		public String listaEvento(Model model) {
		Iterable<Evento> eventos = er.findAll();

		model.addAttribute("eventos", eventos);
		return "lista";
	}

	@PostMapping()
	public ModelAndView salva(@Valid Evento evento, BindingResult bindingResult) {
		ModelAndView mv = new ModelAndView();

		if (bindingResult.hasErrors()) {

			System.out.println(bindingResult.getFieldError());
			mv.addObject("mensagemCadastroInvalido", true);
			mv.setViewName("lista");
			Iterable<Evento> eventos = er.findAll();
			mv.addObject("eventos", eventos);
			return mv;
		}

		er.save(evento);
		return new ModelAndView("redirect:/evento");

	}

	@DeleteMapping(value = "/{id}")
	public ResponseEntity<String> deleta(@PathVariable Long id) {
		try {
			Evento evento = er.findOneByCodigo(id);
			er.delete(evento);
			return new ResponseEntity<String>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

	}

}
