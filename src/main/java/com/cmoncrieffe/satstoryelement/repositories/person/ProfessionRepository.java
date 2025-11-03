package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.Profession;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ProfessionRepository extends JpaRepository<Profession,Integer> {
    Profession getProfessionById(Integer id);
}
