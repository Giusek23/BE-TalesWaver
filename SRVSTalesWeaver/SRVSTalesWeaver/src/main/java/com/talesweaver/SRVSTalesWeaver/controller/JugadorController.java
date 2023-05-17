package com.talesweaver.SRVSTalesWeaver.controller;

import com.talesweaver.SRVSTalesWeaver.model.Jugador;
import com.talesweaver.SRVSTalesWeaver.repository.IJugadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class JugadorController {
    @Autowired
    IJugadorRepository IobjJugadorRepository;
    @GetMapping("/api/obteberUsuarios")
    public List<Jugador> obtenerUsuarios() {
        return IobjJugadorRepository.findAll();
    }

    @PostMapping("/api/guardarUsuario")
    public Jugador guardarJugador(@RequestBody Jugador objJugador) {
        return IobjJugadorRepository.save(objJugador);
    }
}
