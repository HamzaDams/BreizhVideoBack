package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Film;
import fr.hamza.breizhvideo.repo.FilmRepo;
import org.apache.commons.collections4.IteratorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;

@Service
public class FilmServiceImpl implements FilmService{
    private FilmRepo filmRepo;

    @Autowired
    public FilmServiceImpl(FilmRepo filmRepo) {
        super();
        this.filmRepo = filmRepo;
    }

    @Override
    public Collection<Film> getAllFilms() {
        return IteratorUtils.toList(filmRepo.findAll().iterator());
    }

    @Override
    public Optional<Film> findFilmById(Long id) {
        return filmRepo.findById(id);
    }
}
