package fr.hamza.breizhvideo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "actor_id")
    private Long id;

    private String firstName;
    private String lastName;

    @ManyToMany(mappedBy = "actorList")
    @JsonIgnore
    private List<Film> filmsA;

}
