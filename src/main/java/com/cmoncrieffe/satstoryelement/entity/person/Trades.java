package com.cmoncrieffe.satstoryelement.entity.person;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "person_trades")
@Getter
public class Trades {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "trade_text")
    private String tradeText;
}
