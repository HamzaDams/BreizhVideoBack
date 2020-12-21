package fr.hamza.breizhvideo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="film_id", updatable = false, nullable = false)
    private Long id;

    private String title;

    private String description;

    private int releaseYear;

    private int length;

    @ManyToMany(cascade = CascadeType.DETACH)
    @JoinTable(name="film_actor", joinColumns = @JoinColumn(name="film_id"), inverseJoinColumns = @JoinColumn(name = "actor_id"))
    private List<Actor> filmActor;

    @OneToMany(cascade = CascadeType.DETACH)
    @JoinTable(name="preference", joinColumns = @JoinColumn(name="film_id"))
    private List<Preference> preference;

}

