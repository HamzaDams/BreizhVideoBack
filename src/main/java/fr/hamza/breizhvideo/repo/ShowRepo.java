package fr.hamza.breizhvideo.repo;

import fr.hamza.breizhvideo.model.Show;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShowRepo extends JpaRepository<Show, Long> {
}
