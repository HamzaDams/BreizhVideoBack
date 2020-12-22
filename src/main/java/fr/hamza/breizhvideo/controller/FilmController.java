package fr.hamza.breizhvideo.controller;


import fr.hamza.breizhvideo.model.Film;
import fr.hamza.breizhvideo.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/film/*")
public class FilmController {

    @Autowired
    private FilmService filmService;


    @GetMapping(value="/films")
    public ResponseEntity<Collection<Film>> getAllFilms(){
        Collection<Film> films = filmService.getAllFilms();
        return new ResponseEntity<Collection<Film>>(films, HttpStatus.FOUND);
    }

    @GetMapping(value = "{id}")
    public ResponseEntity<Film> findFilmById(@PathVariable(value = "id") Long id){
        Optional<Film> filmFound = filmService.findFilmById(id);
        return new ResponseEntity<Film>(filmFound.get(), HttpStatus.FOUND);
    }

}
