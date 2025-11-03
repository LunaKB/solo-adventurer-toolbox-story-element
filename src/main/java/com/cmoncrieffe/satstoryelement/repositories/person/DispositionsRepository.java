package com.cmoncrieffe.satstoryelement.repositories.person;

import com.cmoncrieffe.satstoryelement.entity.person.Dispositions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface DispositionsRepository extends JpaRepository<Dispositions,Integer> {
    Dispositions getDispositionsById(Integer id);
}
