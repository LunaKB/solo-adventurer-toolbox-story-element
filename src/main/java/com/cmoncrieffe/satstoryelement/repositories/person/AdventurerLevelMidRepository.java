package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.AdventurerLevelMid;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface AdventurerLevelMidRepository extends JpaRepository<AdventurerLevelMid,Integer> {
    AdventurerLevelMid getAdventurerLevelMidById(Integer id);
}
