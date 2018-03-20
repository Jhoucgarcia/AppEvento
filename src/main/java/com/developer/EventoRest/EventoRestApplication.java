package com.developer.EventoRest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
@ComponentScan(basePackages={"com.developer.EventoRest"})
public class EventoRestApplication {

	public static void main(String[] args) {
		SpringApplication.run(EventoRestApplication.class, args);
		
	}
}
