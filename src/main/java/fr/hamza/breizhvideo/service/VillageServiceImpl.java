package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Village;
import fr.hamza.breizhvideo.repo.VillageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;
import org.apache.commons.collections4.IteratorUtils;

@Service
public class VillageServiceImpl implements VillageService {

    private VillageRepo villageRepo;

    @Autowired
    public VillageServiceImpl(VillageRepo villageRepo) {
        super();
        this.villageRepo = villageRepo;
    }

    @Override
    public Collection<Village> getAllVillages() {
        return IteratorUtils.toList(villageRepo.findAll().iterator());
    }

    @Override
    public Optional<Village> findVillageById(Long id) {
        return Optional.empty();
    }

    @Override
    public Optional<Village> findByPostalCode(int postalCode) {
        return Optional.empty();
    }

    @Override
    public Village saveOrUpdate(Village village) {
        return villageRepo.save(village);
    }
}
