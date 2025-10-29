package com.cmoncrieffe.satstoryelement.event;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;

import java.util.List;

public class Person {
    private final List<String> trades = List.of(
            "Farmer",
            "Farmer",
            "Artist",
            "Artist",
            "Herbalist",
            "Herbalist",
            "Horse trainer",
            "Horse trainer",
            "Blacksmith",
            "Blacksmith",
            "Finesmith",
            "Finesmith",
            "Locksmith",
            "Locksmith",
            "Jeweller",
            "Jeweller",
            "Entertainer",
            "Entertainer",
            "Teacher",
            "Teacher",
            "Armourer",
            "Armourer",
            "Cook",
            "Cook",
            "Tailor",
            "Tailor",
            "Ropemaker",
            "Ropemaker",
            "Fletcher",
            "Fletcher",
            "Cooper",
            "Cooper",
            "Cartwright",
            "Cartwright",
            "Carpenter",
            "Carpenter",
            "Gravedigger / Undertaker",
            "Gravedigger / Undertaker",
            "Winemaker",
            "Winemaker",
            "Ferryman",
            "Ferryman",
            "Boatbuilder",
            "Boatbuilder",
            "Ship’s Captain",
            "Ship’s Captain",
            "Fortune Teller",
            "Fortune Teller",
            "Handmaiden",
            "Handmaiden",
            "Miller",
            "Miller",
            "Executioner",
            "Executioner",
            "Restauranteur",
            "Restauranteur",
            "Priest / Cultist",
            "Priest / Cultist",
            "Engineer",
            "Engineer",
            "Scribe",
            "Scribe",
            "Soldier",
            "Soldier",
            "Banker",
            "Banker",
            "Apothecary",
            "Apothecary",
            "Woodcutter",
            "Woodcutter",
            "Tax Collector",
            "Tax Collector",
            "Prostitute",
            "Prostitute",
            "Fishmonger",
            "Fishmonger",
            "Butcher",
            "Butcher",
            "Fruiterer",
            "Fruiterer",
            "Conman",
            "Conman",
            "Petty thief",
            "Petty thief",
            "Healer",
            "Healer",
            "Butler",
            "Butler",
            "Clerk",
            "Clerk",
            "Baker",
            "Baker",
            "Cheesemaker",
            "Cheesemaker",
            "Innkeeper",
            "Innkeeper",
            "Dung Shoveller",
            "Dung Shoveller",
            "Courier",
            "Courier");
    private final List<String> classes = List.of(
            "Barbarian",
            "Bard",
            "Cleric",
            "Druid",
            "Fighter",
            "Monk",
            "Paladin",
            "Ranger",
            "Rogue",
            "Sorcerer",
            "Warlock",
            "Wizard");
    private final List<String> dispositions = List.of(
            "Shy",
            "Shy",
            "Aloof / Superior",
            "Aloof / Superior",
            "Foolish / idiotic",
            "Foolish / idiotic",
            "Foolish / idiotic",
            "Foolish / idiotic",
            "Cocky / Arrogant",
            "Cocky / Arrogant",
            "Envious",
            "Envious",
            "Grumpy",
            "Grumpy",
            "Mischievous (good or evil)",
            "Mischievous (good or evil)",
            "Playful / Joking",
            "Playful / Joking",
            "Playful / Joking",
            "Playful / Joking",
            "Insane",
            "Insane",
            "Abrupt / Unpredictable",
            "Abrupt / Unpredictable",
            "Melancholic / Airy",
            "Melancholic / Airy",
            "Romantic",
            "Romantic",
            "Romantic",
            "Romantic",
            "Frustrated",
            "Frustrated",
            "Stressed",
            "Stressed",
            "Weird",
            "Weird",
            "Serene / Peaceful",
            "Serene / Peaceful",
            "Serene / Peaceful",
            "Serene / Peaceful",
            "Cagy / Mysterious",
            "Cagy / Mysterious",
            "Distracted",
            "Distracted",
            "Sad",
            "Sad",
            "Single-Minded",
            "Single-Minded",
            "Single-Minded",
            "Single-Minded",
            "Angry",
            "Angry",
            "Blase",
            "Blase",
            "Joyous",
            "Joyous",
            "Vengeful",
            "Vengeful",
            "Vengeful",
            "Vengeful",
            "Malicious",
            "Malicious",
            "Afraid",
            "Afraid",
            "Disgusted",
            "Disgusted",
            "Resignation",
            "Resignation",
            "Resignation",
            "Resignation",
            "Nostalgic",
            "Nostalgic",
            "Envious",
            "Envious",
            "Determined",
            "Determined",
            "Pity",
            "Pity",
            "Pity",
            "Pity",
            "Disdain",
            "Disdain",
            "Hopelessness",
            "Hopelessness",
            "Hopelessness",
            "Amused",
            "Amused",
            "Amused",
            "Reckless",
            "Reckless",
            "Reckless",
            "Reckless",
            "Lonely",
            "Lonely",
            "Lonely",
            "Frivolous",
            "Frivolous",
            "Frivolous",
            "Disoriented",
            "Disoriented");

    private enum AdventurerLevel {
        TIER_EARLY(14, "Early"),
        TIER_MID(18, "Mid"),
        TIER_LATE(20, "Late"),
        LEVEL_1(6, "1"),
        LEVEL_2(11, "2"),
        LEVEL_3(15, "3"),
        LEVEL_4(18, "4"),
        LEVEL_5_EARLY(20, "5"),
        LEVEL_5_MID(3, "5"),
        LEVEL_6(6, "6"),
        LEVEL_7(8, "7"),
        LEVEL_8(10, "8"),
        LEVEL_9(12, "9"),
        LEVEL_10(14, "10"),
        LEVEL_11(16, "11"),
        LEVEL_12(17, "12"),
        LEVEL_13(18, "13"),
        LEVEL_14(19, "14"),
        LEVEL_15(20, "15"),
        LEVEL_16(6, "16"),
        LEVEL_17(11, "17"),
        LEVEL_18(15, "18"),
        LEVEL_19(18, "19"),
        LEVEL_20(20, "20");

        final int value;
        final String text;
        AdventurerLevel(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    private enum Alignment {
        LAWFUL_GOOD(15, "Lawful Good"),
        NEUTRAL_GOOD(20, "Neutral Good"),
        CHAOTIC_GOOD(25, "Chaotic Good"),
        LAWFUL_NEUTRAL(30, "Lawful Neutral"),
        TRUE_NEUTRAL(50, "True Neutral"),
        CHAOTIC_NEUTRAL(60, "Chaotic Neutral"),
        LAWFUL_EVIL(70, "Lawful Evil"),
        NEUTRAL_EVIL(90, "Neutral Evil"),
        CHAOTIC_EVIL(100, "Chaotic Evil");

        final int value;
        final String text;
        Alignment(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    private enum EconomicStatus {
        HOMELESS(4, "Destitute / homeless"),
        POOR(12, "Poor"),
        GETTING_BY(20, "Just getting by"),
        SUPPORTS_SELF(30, "Can support themselves"),
        CLIMBING(40, "Climbing the ladder"),
        COMFORTABLE(52, "Comfortable"),
        WELL_OFF(62, "Well-off"),
        RICH(74, "Rich"),
        EXTREMELY_WEALTHY(88, "Extremely Wealthy"),
        ROYALTY(100, "Royalty-level wealth");

        final int value;
        final String text;
        EconomicStatus(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    private enum Profession {
        COMMONER(25, "Commoner (Unemployed)"),
        TRADESPERSON(90, "Tradesperson"),
        ADVENTURER(100, "Adventurer");

        final int value;
        final String text;
        Profession(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    private enum Race {
        HUMAN(80, "Human"),
        HALFLING(87, "Halfling"),
        DWARF(92, "Dwarf"),
        OTHER(100, "Other");

        final int value;
        final String text;
        Race(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    private enum UncommonRace {
        ELF(3, "Elf"),
        HALF_ELF(6, "Half elf"),
        GNOME(8, "Gnome"),
        ORC(10, "Orc"),
        HALF_ORC(11, "Half Orc"),
        GOBLIN(12, "Goblin"),
        DROW(13, "Drow"),
        TABAXI(14, "Tabaxi"),
        KENKU(15, "Kenku"),
        TIEFLING(16, "Tiefling"),
        AASIMAR(17, "Aasimar"),
        DRAGONBORN(18, "Dragonborn"),
        GOLIATH(19, "Goliath"),
        AARAKOCRA(20, "Aarakocra");

        final int value;
        final String text;
        UncommonRace(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }

    public String[] getPerson() {
        return new String[]{
                ElementType.PERSON.toString(),
                String.format(
                        "Race:%s Gender:%s Alignment:%s Profession:%s Disposition:%s Economic Status:%s",
                        getRace(),
                        getGender(),
                        getAlignment(),
                        getProfession(),
                        getDisposition(),
                        getEconomicStatus()
                )
        };
    }

    private String getRace() {
        int roll = DieRoller.roll1Based(DieSize.D100);
        if (roll <= Race.HUMAN.value)
            return Race.HUMAN.text;
        else if (roll <= Race.HALFLING.value)
            return Race.HALFLING.text;
        else if (roll <= Race.DWARF.value)
            return Race.DWARF.text;
        else
            return getUncommonRace();
    }

    private String getUncommonRace() {
        int roll = DieRoller.roll1Based(DieSize.D20);
        if (roll <= UncommonRace.ELF.value)
            return UncommonRace.ELF.text;
        else if (roll <= UncommonRace.HALF_ELF.value)
            return UncommonRace.HALF_ELF.text;
        else if (roll <= UncommonRace.GNOME.value)
            return UncommonRace.GNOME.text;
        else if (roll <= UncommonRace.ORC.value)
            return UncommonRace.ORC.text;
        else if (roll <= UncommonRace.HALF_ORC.value)
            return UncommonRace.HALF_ORC.text;
        else if (roll <= UncommonRace.GOBLIN.value)
            return UncommonRace.GOBLIN.text;
        else if (roll <= UncommonRace.DROW.value)
            return UncommonRace.DROW.text;
        else if (roll <= UncommonRace.TABAXI.value)
            return UncommonRace.TABAXI.text;
        else if (roll <= UncommonRace.KENKU.value)
            return UncommonRace.KENKU.text;
        else if (roll <= UncommonRace.TIEFLING.value)
            return UncommonRace.TIEFLING.text;
        else if (roll <= UncommonRace.AASIMAR.value)
            return UncommonRace.AASIMAR.text;
        else if (roll <= UncommonRace.DRAGONBORN.value)
            return UncommonRace.DRAGONBORN.text;
        else if (roll <= UncommonRace.GOLIATH.value)
            return UncommonRace.GOLIATH.text;
        else
            return UncommonRace.AARAKOCRA.text;
    }

    private String getGender() {
        int roll = DieRoller.roll1Based(DieSize.D100);
        if (roll <= Gender.MALE.value)
            return Gender.MALE.text;
        else
            return Gender.FEMALE.text;
    }

    private String getAlignment() {
        int roll = DieRoller.roll1Based(DieSize.D100);
        if (roll <= Alignment.LAWFUL_GOOD.value)
            return Alignment.LAWFUL_GOOD.text;
        else if (roll <= Alignment.NEUTRAL_GOOD.value)
            return Alignment.NEUTRAL_GOOD.text;
        else if (roll <= Alignment.CHAOTIC_GOOD.value)
            return Alignment.CHAOTIC_GOOD.text;
        else if (roll <= Alignment.LAWFUL_NEUTRAL.value)
            return Alignment.LAWFUL_NEUTRAL.text;
        else if (roll <= Alignment.TRUE_NEUTRAL.value)
            return Alignment.TRUE_NEUTRAL.text;
        else if (roll <= Alignment.CHAOTIC_NEUTRAL.value)
            return Alignment.CHAOTIC_NEUTRAL.text;
        else if (roll <= Alignment.LAWFUL_EVIL.value)
            return Alignment.LAWFUL_EVIL.text;
        else if (roll <= Alignment.NEUTRAL_EVIL.value)
            return Alignment.NEUTRAL_EVIL.text;
        else
            return Alignment.CHAOTIC_EVIL.text;
    }

    private String getProfession() {
        int roll = DieRoller.roll1Based(DieSize.D100);
        if (roll <= Profession.COMMONER.value)
            return Profession.COMMONER.text;
        else if (roll <= Profession.TRADESPERSON.value)
            return getTradesperson();
        else 
            return getAdventurer();
    }
    
    private String getTradesperson() {
        int roll = DieRoller.roll0Based(DieSize.D100);
        return trades.get(roll);
    }
    
    private String getAdventurer() {
        return String.format(
                "Class:%s Level:%s",
                getAdventurerClass(),
                getAdventurerLevel());
    }

    private String getAdventurerClass() {
        int roll = DieRoller.roll0Based(DieSize.D12);
        return classes.get(roll);
    }

    private String getAdventurerLevel() {
        int rollTier = DieRoller.roll1Based(DieSize.D20);
        int rollLevel = DieRoller.roll1Based(DieSize.D20);

        if (rollTier <= AdventurerLevel.TIER_EARLY.value) {
            if (rollLevel <= AdventurerLevel.LEVEL_1.value)
                return AdventurerLevel.LEVEL_1.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_2.value)
                return AdventurerLevel.LEVEL_2.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_3.value)
                return AdventurerLevel.LEVEL_3.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_4.value)
                return AdventurerLevel.LEVEL_4.text;
            else
                return AdventurerLevel.LEVEL_5_EARLY.text;

        } else if (rollTier <= AdventurerLevel.TIER_MID.value) {
            if (rollLevel <= AdventurerLevel.LEVEL_5_MID.value)
                return AdventurerLevel.LEVEL_5_MID.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_6.value)
                return AdventurerLevel.LEVEL_6.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_7.value)
                return AdventurerLevel.LEVEL_7.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_8.value)
                return AdventurerLevel.LEVEL_8.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_9.value)
                return AdventurerLevel.LEVEL_9.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_10.value)
                return AdventurerLevel.LEVEL_10.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_11.value)
                return AdventurerLevel.LEVEL_11.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_12.value)
                return AdventurerLevel.LEVEL_12.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_13.value)
                return AdventurerLevel.LEVEL_13.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_14.value)
                return AdventurerLevel.LEVEL_14.text;
            else
                return AdventurerLevel.LEVEL_15.text;

        } else {
            if (rollLevel <= AdventurerLevel.LEVEL_16.value)
                return AdventurerLevel.LEVEL_16.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_17.value)
                return AdventurerLevel.LEVEL_17.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_18.value)
                return AdventurerLevel.LEVEL_18.text;
            else if (rollLevel <= AdventurerLevel.LEVEL_19.value)
                return AdventurerLevel.LEVEL_19.text;
            else
                return AdventurerLevel.LEVEL_20.text;
        }
    }

    private String getDisposition() {
        int roll = DieRoller.roll0Based(DieSize.D100);
        return dispositions.get(roll);
    }

    private String getEconomicStatus() {
        int roll = DieRoller.roll1Based(DieSize.D100);
        if (roll <= EconomicStatus.HOMELESS.value)
            return EconomicStatus.HOMELESS.text;
        else if (roll <= EconomicStatus.POOR.value)
            return EconomicStatus.POOR.text;
        else if (roll <= EconomicStatus.GETTING_BY.value)
            return EconomicStatus.GETTING_BY.text;
        else if (roll <= EconomicStatus.SUPPORTS_SELF.value)
            return EconomicStatus.SUPPORTS_SELF.text;
        else if (roll <= EconomicStatus.CLIMBING.value)
            return EconomicStatus.CLIMBING.text;
        else if (roll <= EconomicStatus.COMFORTABLE.value)
            return EconomicStatus.COMFORTABLE.text;
        else if (roll <= EconomicStatus.WELL_OFF.value)
            return EconomicStatus.WELL_OFF.text;
        else if (roll <= EconomicStatus.RICH.value)
            return EconomicStatus.RICH.text;
        else if (roll <= EconomicStatus.EXTREMELY_WEALTHY.value)
            return EconomicStatus.EXTREMELY_WEALTHY.text;
        else
            return EconomicStatus.ROYALTY.text;
    }

    private enum Gender {
        MALE(50, "Male"),
        FEMALE(100, "Female");

        final int value;
        final String text;
        Gender(int value, String text) {
            this.value = value;
            this.text = text;
        }
    }
}
