package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Film;

import java.util.Collection;
import java.util.Optional;

public interface FilmService {

    Collection<Film> getAllFilms();

    Optional<Film> findFilmById(Long id);

}
