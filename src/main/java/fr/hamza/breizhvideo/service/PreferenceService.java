package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Preference;

import java.util.Collection;
import java.util.Optional;

public interface PreferenceService {

    Collection<Preference> getAllPreference();

    Optional<Preference> findPreferenceById(Long id);

    Optional<Preference> findPreferenceByShowId(Long id);

    Preference savePreference(Preference preference);

}
