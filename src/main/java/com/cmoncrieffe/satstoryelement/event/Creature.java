package com.cmoncrieffe.satstoryelement.event;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;

import java.util.Map;

public class Creature {
    private final Map<Integer, String> creatures = Map.ofEntries(
            Map.entry(2, "Monster!"),
            Map.entry(3, "Bear"),
            Map.entry(4, "Cat"),
            Map.entry(5, "Dire Wolf"),
            Map.entry(6, "Dog"),
            Map.entry(7, "Draft Horse"),
            Map.entry(8, "Eagle"),
            Map.entry(9, "Elephant"),
            Map.entry(10, "Elk"),
            Map.entry(11, "Flying Snake"),
            Map.entry(12, "Ape"),
            Map.entry(13, "Giant Ape"),
            Map.entry(14, "Giant Badger"),
            Map.entry(15, "Giant Boar"),
            Map.entry(16, "Giant Eagle"),
            Map.entry(17, "Giant Elk"),
            Map.entry(18, "Giant Fire Beetle"),
            Map.entry(19, "Giant Frog"),
            Map.entry(20, "Giant Lizard"),
            Map.entry(21, "Giant Owl"),
            Map.entry(22, "Giant Rat"),
            Map.entry(23, "Giant Spider"),
            Map.entry(24, "Goat"),
            Map.entry(25, "Hawk"),
            Map.entry(26, "Mastiff"),
            Map.entry(27, "Mule"),
            Map.entry(28, "Owl"),
            Map.entry(29, "Riding Horse"),
            Map.entry(30, "Panther"),
            Map.entry(31, "Poisonous Snake"),
            Map.entry(32, "Pony"),
            Map.entry(33, "Rat"),
            Map.entry(34, "Raven"),
            Map.entry(35, "Swarm of Insects"),
            Map.entry(36, "Swarm of rats"),
            Map.entry(37, "Swarm of ravens"),
            Map.entry(38, "Vulture"),
            Map.entry(39, "Weasel"),
            Map.entry(40, "Wolf"));

    public String[] getCreature() {
        return new String[] {
                ElementType.CREATURE.toString(),
                creatures.get(DieRoller.roll1Based(DieSize.D20, 2)
                        .stream()
                        .mapToInt(Integer::intValue).sum())
        };
    }
}
