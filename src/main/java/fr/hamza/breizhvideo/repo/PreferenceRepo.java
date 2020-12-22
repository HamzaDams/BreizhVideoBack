package fr.hamza.breizhvideo.repo;

import fr.hamza.breizhvideo.model.Preference;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PreferenceRepo extends JpaRepository<Preference, Long> {
}
