package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Village;

import java.util.Collection;
import java.util.Optional;

public interface VillageService {

    Collection<Village> getAllVillages();

    Optional<Village> findVillageById(Long id);
    Optional<Village> findByPostalCode(int postalCode);

    Village saveOrUpdate(Village village);
}
