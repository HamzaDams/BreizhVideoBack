package fr.hamza.breizhvideo.controller;

import fr.hamza.breizhvideo.model.Show;
import fr.hamza.breizhvideo.service.ShowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/show/*")
public class ShowController {

    @Autowired
    private ShowService showService;

    @GetMapping(value = "/shows")
    public ResponseEntity<Collection<Show>> getAllShow() {
        Collection<Show> shows = showService.getAllShows();
        return new ResponseEntity<Collection<Show>>(shows, HttpStatus.FOUND);
    }

    @PostMapping(value = "/shows")
    public ResponseEntity<Show> saveShow(@RequestBody Show show) {
        Show showSaved = showService.saveOrUpdate(show);
        return new ResponseEntity<Show>(showSaved, HttpStatus.CREATED);
    }
}
