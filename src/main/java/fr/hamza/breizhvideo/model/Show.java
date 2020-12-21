package fr.hamza.breizhvideo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "shows")
public class Show {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name="release_date")
    private Date releaseDate;

    @OneToMany(cascade = CascadeType.DETACH)
    @JoinTable(name="preference", joinColumns = @JoinColumn(name="show_id"))
    private List<Preference> preference;
}
