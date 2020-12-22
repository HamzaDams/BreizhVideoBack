package fr.hamza.breizhvideo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id")
    private Long id;

    private String name;

    @ManyToMany(cascade = CascadeType.DETACH)
    @JoinTable(name="film_category", joinColumns = @JoinColumn(name="film_id"), inverseJoinColumns = @JoinColumn(name = "category_id"))
    private List<Film> filmCategory;

}
