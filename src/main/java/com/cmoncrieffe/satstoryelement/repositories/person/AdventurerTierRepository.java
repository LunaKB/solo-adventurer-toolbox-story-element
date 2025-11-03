package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.AdventurerTier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface AdventurerTierRepository extends JpaRepository<AdventurerTier,Integer> {
    AdventurerTier getAdventurerTierById(Integer id);
}
