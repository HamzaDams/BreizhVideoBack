package fr.hamza.breizhvideo.service;

import fr.hamza.breizhvideo.model.Show;
import fr.hamza.breizhvideo.repo.ShowRepo;
import org.apache.commons.collections4.IteratorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;

@Service
public class ShowServiceImpl implements ShowService{

    private ShowRepo showRepo;

    @Autowired
    public ShowServiceImpl(ShowRepo showRepo) {
        super();
        this.showRepo = showRepo;
    }

    @Override
    public Collection<Show> getAllShows() {
        return IteratorUtils.toList(showRepo.findAll().iterator());
    }

    @Override
    public Optional<Show> findShowById(Long id) {
        return Optional.empty();
    }

    @Override
    public Show saveOrUpdate(Show show) {
        return showRepo.save(show);
    }
}
