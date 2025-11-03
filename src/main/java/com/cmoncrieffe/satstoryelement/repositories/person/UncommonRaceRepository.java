package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.UncommonRace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface UncommonRaceRepository extends JpaRepository<UncommonRace,Integer> {
    UncommonRace getUncommonRacesById(Integer id);
}
