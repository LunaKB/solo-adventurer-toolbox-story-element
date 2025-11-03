package com.cmoncrieffe.satstoryelement.entity.person;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "person_classes")
@Getter
public class Classes {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "class_text")
    private String classText;
}
