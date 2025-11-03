package com.cmoncrieffe.satstoryelement.entity.person;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "person_adventurer_level_early")
@Getter
public class AdventurerLevelEarly {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "text")
    private String text;
}
