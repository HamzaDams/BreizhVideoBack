package fr.hamza.breizhvideo.model;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;

@Entity
@Table(name = "preference")
public class Preference {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private int vote;

    @ManyToOne @JoinColumn(name = "film_id")
    @JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
    @JsonIdentityReference(alwaysAsId = true)
    private Film film;

    @ManyToOne @JoinColumn(name = "show_id")
    @JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
    @JsonIdentityReference(alwaysAsId = true)
    private Show show;

}
