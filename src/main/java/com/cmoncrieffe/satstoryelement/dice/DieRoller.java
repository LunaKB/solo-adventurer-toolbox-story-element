package com.cmoncrieffe.satstoryelement.dice;

import java.util.ArrayList;
import java.util.List;

// TODO: Turn this into a module so other microservices can use it.
public class DieRoller {
    public static List<Integer> roll0Based(DieSize dieSize, int dieAmount) {
        List<Integer> results = new ArrayList<>();
        for (int count = 1; count <= dieAmount; count++) {
            results.add((int)(Math.random() * dieSize.getSize()));
        }
        return results;
    }

    public static List<Integer> roll1Based(DieSize dieSize, int dieAmount) {
        return roll0Based(dieSize, dieAmount)
                .stream()
                .map(integer -> integer + 1)
                .toList();
    }

    public static int roll0Based(DieSize dieSize) {
        return (int)(Math.random() * dieSize.getSize());
    }

    public static int roll1Based(DieSize dieSize) {
        return roll0Based(dieSize) + 1;
    }
}
