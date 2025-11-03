package com.cmoncrieffe.satstoryelement.entity.person;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "person_dispositions")
@Getter
public class Dispositions {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "disposition_text")
    private String dispositionText;
}
