package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.EconomicStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface EconomicStatusRepository extends JpaRepository<EconomicStatus,Integer> {
    EconomicStatus getEconomicStatusById(Integer id);
}
