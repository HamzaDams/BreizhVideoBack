package fr.hamza.breizhvideo.model;

import javax.persistence.*;

@Entity
@Table(name = "preference")
public class Preference {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private int vote;
}
