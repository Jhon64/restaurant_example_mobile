package com.jhon64.restaurant_example.controllers;

import com.jhon64.restaurant_example.entity.Usuario;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class WelcomeController {
    @GetMapping("")
    public Usuario welcome() {
        return new Usuario();
    }
}
