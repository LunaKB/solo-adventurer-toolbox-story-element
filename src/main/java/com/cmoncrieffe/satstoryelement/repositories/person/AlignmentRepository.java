package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.Alignment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface AlignmentRepository extends JpaRepository<Alignment,Integer> {
    Alignment getAlignmentById(Integer id);
}
