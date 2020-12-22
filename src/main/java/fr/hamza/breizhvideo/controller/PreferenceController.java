package fr.hamza.breizhvideo.controller;

import fr.hamza.breizhvideo.model.Preference;
import fr.hamza.breizhvideo.repo.PreferenceRepo;
import fr.hamza.breizhvideo.service.PreferenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/preference/*")
public class PreferenceController {

    @Autowired
    private PreferenceService preferenceService;

    @PostMapping(value = "/preferences")
    public ResponseEntity<Preference> savePreference(@RequestBody Preference preference) {
        Preference preferenceSaved = preferenceService.savePreference(preference);
        return new ResponseEntity<Preference>(preferenceSaved, HttpStatus.FOUND);
    }

    @GetMapping(value = "/preferences")
    public ResponseEntity<Collection<Preference>> getAllPreference() {
        Collection<Preference> preferences = preferenceService.getAllPreference();
        return new ResponseEntity<Collection<Preference>>(preferences, HttpStatus.FOUND);
    }

    @GetMapping(value = "/preferences/shows/{id}")
    public ResponseEntity<Preference> findPreferenceByShowId(@PathVariable(value = "id") Long id) {
        Optional<Preference> preferenceFound = preferenceService.findPreferenceByShowId(id);
        return new ResponseEntity<Preference>(preferenceFound.get(), HttpStatus.FOUND);
    }
}
