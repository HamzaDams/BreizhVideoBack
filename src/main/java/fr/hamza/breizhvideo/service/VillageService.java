package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Village;

import java.util.Collection;
import java.util.Optional;

public interface VillageService {

    Collection<Village> getAllVillages();

    Optional<Village> findVillageById(Long id);
    Optional<Village> findByPostalCode(int postalCode);

    Village saveVillage(Village village);

    void deleteVillageById(Long id);
}
