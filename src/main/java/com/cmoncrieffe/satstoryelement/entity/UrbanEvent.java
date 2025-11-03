package com.cmoncrieffe.satstoryelement.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "event_urban")
@Getter
public class UrbanEvent {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "event_text")
    private String eventText;
}
