package fr.hamza.breizhvideo.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
public class Village {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String postalCode;

    @OneToMany
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    @JoinTable(name="shows")
    private List<Show> showList;
}
