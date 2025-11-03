package com.cmoncrieffe.satstoryelement.repositories;

import com.cmoncrieffe.satstoryelement.entity.Creature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface CreatureRepository extends JpaRepository<Creature, Integer> {
    Creature getCreatureById(int id);
}
