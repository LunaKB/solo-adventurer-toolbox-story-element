package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.AdventurerLevelEarly;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface AdventurerLevelEarlyRepository extends JpaRepository<AdventurerLevelEarly,Integer> {
    AdventurerLevelEarly getAdventurerLevelEarlyById(Integer id);
}
