package fr.hamza.breizhvideo.controller;

import fr.hamza.breizhvideo.model.Village;
import fr.hamza.breizhvideo.repo.VillageRepo;
import fr.hamza.breizhvideo.service.VillageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/village/*")
public class VillageController {

    @Autowired
    private VillageService villageService;

    @GetMapping(value = "/villages")
    public ResponseEntity<Collection<Village>> getAllVillage() {
        Collection<Village> villages = villageService.getAllVillages();
        return new ResponseEntity<Collection<Village>>(villages, HttpStatus.FOUND);
    }

    @PostMapping(value="/villages")
    @Transactional
    public ResponseEntity<Village> saveVillage(@RequestBody Village village) {
        Village villageSaved = villageService.saveVillage(village);
        return new ResponseEntity<Village>(villageSaved, HttpStatus.CREATED);
    }

    @DeleteMapping(value = "/villages")
    public ResponseEntity<Void> deleteVillage(@RequestParam(value = "id", required = true) Long id) {
        villageService.deleteVillageById(id);
        return new ResponseEntity<Void>(HttpStatus.GONE);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<Village> findVillageById(@PathVariable(value = "id") Long id) {
        Optional<Village> villageFound = villageService.findVillageById(id);
        return new ResponseEntity<Village>(villageFound.get(), HttpStatus.FOUND);
    }

}
