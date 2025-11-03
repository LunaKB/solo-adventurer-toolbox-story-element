package com.cmoncrieffe.satstoryelement.controller.utils;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;
import com.cmoncrieffe.satstoryelement.event.ElementType;
import com.cmoncrieffe.satstoryelement.repositories.UrbanEventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UrbanEventRepo {
    private static UrbanEventRepository urbanEventRepository;

    @Autowired
    public UrbanEventRepo(UrbanEventRepository urbanEventRepository) {
        UrbanEventRepo.urbanEventRepository = urbanEventRepository;
    }

    public static String[] get() {
        return new String[] {
                ElementType.EVENT.toString(),
                urbanEventRepository
                        .getUrbanEventById(DieRoller.roll1Based(DieSize.D100))
                        .getEventText()
        };
    }
}
