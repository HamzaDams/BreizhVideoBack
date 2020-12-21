package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Show;

import java.util.Collection;
import java.util.Optional;

public interface ShowService {

    Collection<Show> getAllShows();

    Optional<Show> findShowById(Long id);

    Show saveOrUpdate(Show show);

}
