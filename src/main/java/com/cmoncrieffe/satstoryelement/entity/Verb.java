package com.cmoncrieffe.satstoryelement.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "verbs")
@Getter
public class Verb {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "verb_text")
    private String verbText;
}
