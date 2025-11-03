package com.cmoncrieffe.satstoryelement.controller.utils;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;
import com.cmoncrieffe.satstoryelement.event.ElementType;
import com.cmoncrieffe.satstoryelement.repositories.CreatureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CreatureRepo {
    private static CreatureRepository creatureRepository;

    @Autowired
    CreatureRepo(CreatureRepository creatureRepository) {
        CreatureRepo.creatureRepository = creatureRepository;
    }

    public static String[] get() {
        int roll = DieRoller.roll1Based(DieSize.D20, 2)
                .stream()
                .mapToInt(Integer::intValue)
                .sum();
        return new String[] {
                ElementType.CREATURE.toString(),
                creatureRepository.getCreatureById(roll).getName()
        };
    }
}
