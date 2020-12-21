package fr.hamza.breizhvideo.repo;

import fr.hamza.breizhvideo.model.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmRepo extends JpaRepository<Film, Long>{
}
