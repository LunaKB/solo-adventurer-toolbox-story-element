package com.cmoncrieffe.satstoryelement.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "creatures")
@Getter
public class Creature {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;
}
