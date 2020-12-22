package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Preference;
import fr.hamza.breizhvideo.repo.PreferenceRepo;
import fr.hamza.breizhvideo.repo.ShowRepo;
import org.apache.commons.collections4.IteratorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;

@Service
public class PreferenceServiceImpl implements PreferenceService{

    private PreferenceRepo preferenceRepo;
    private ShowRepo showRepo;

    @Autowired
    public PreferenceServiceImpl(PreferenceRepo preferenceRepo) {
        super();
        this.preferenceRepo = preferenceRepo;
    }

    @Override
    public Collection<Preference> getAllPreference() {
        return IteratorUtils.toList(preferenceRepo.findAll().iterator());
    }

    @Override
    public Optional<Preference> findPreferenceById(Long id) {
        return preferenceRepo.findById(id);
    }

    @Override
    public Optional<Preference> findPreferenceByShowId(Long id) {
        Optional<Preference> preferenceFound = preferenceRepo.findById(id);
        if(showRepo.findById(id).isPresent()){
            return preferenceFound;
        }
        return null;
    }

    @Override
    public Preference savePreference(Preference preference) {
        return preferenceRepo.save(preference);
    }
}
