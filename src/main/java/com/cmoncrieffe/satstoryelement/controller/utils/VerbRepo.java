package com.cmoncrieffe.satstoryelement.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satstoryelement.event.ElementType;
import com.cmoncrieffe.satstoryelement.repositories.VerbRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class VerbRepo {
    private static VerbRepository verbRepository;

    @Autowired
    public VerbRepo(VerbRepository verbRepository) {
        VerbRepo.verbRepository = verbRepository;
    }

    public static String[] get() {
        return new String[] {
                ElementType.VERB.toString(),
                verbRepository
                        .getVerbById(getValue1() + getValue2())
                        .getVerbText()
        };
    }

    private static int getValue1() {
        int value = DiceRoller.roll1Based(DiceSize.D10);
        if (value < 3)
            return 0;
        else if (value < 5)
            return 100;
        else if (value < 7)
            return 200;
        else if (value < 9)
            return 300;
        else
            return 400;
    }

    private static int getValue2() {
        return DiceRoller.roll0Based(DiceSize.D100);
    }
}
