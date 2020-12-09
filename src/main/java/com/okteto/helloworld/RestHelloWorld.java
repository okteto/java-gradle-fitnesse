package com.okteto.helloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestHelloWorld {
	
	@GetMapping("/")
	public String sayHello() {
		return "Hello world!";
	}

	@GetMapping("/echo")
	public String sayEcho(@RequestParam(defaultValue = "test") String message) {
		return "You said: " + message;
	}
}
