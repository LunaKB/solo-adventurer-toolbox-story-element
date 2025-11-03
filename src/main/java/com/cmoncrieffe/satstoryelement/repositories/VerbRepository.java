package com.cmoncrieffe.satstoryelement.repositories;

import com.cmoncrieffe.satstoryelement.entity.Verb;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface VerbRepository extends JpaRepository<Verb,Integer> {
    Verb getVerbById(int id);
}
