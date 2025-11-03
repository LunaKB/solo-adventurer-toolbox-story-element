package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.AdventurerLevelLate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface AdventurerLevelLateRepository extends JpaRepository<AdventurerLevelLate,Integer> {
    AdventurerLevelLate getAdventurerLevelLateById(Integer id);
}
