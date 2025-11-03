package com.cmoncrieffe.satstoryelement.controller.utils;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;
import com.cmoncrieffe.satstoryelement.entity.person.Profession;
import com.cmoncrieffe.satstoryelement.entity.person.Race;
import com.cmoncrieffe.satstoryelement.event.ElementType;
import com.cmoncrieffe.satstoryelement.repositories.person.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Objects;

@Component
public class PersonRepo {
    private static AdventurerLevelEarlyRepository adventurerLevelEarlyRepository;
    private static AdventurerLevelMidRepository adventurerLevelMidRepository;
    private static AdventurerLevelLateRepository adventurerLevelLateRepository;
    private static AdventurerTierRepository adventurerTierRepository;
    private static AlignmentRepository alignmentRepository;
    private static ClassesRepository classesRepository;
    private static DispositionsRepository dispositionsRepository;
    private static EconomicStatusRepository economicStatusRepository;
    private static GenderRepository genderRepository;
    private static ProfessionRepository professionRepository;
    private static RaceRepository raceRepository;
    private static TradesRepository tradesRepository;
    private static UncommonRaceRepository uncommonRaceRepository;

    @Autowired
    public PersonRepo(
            AdventurerLevelEarlyRepository adventurerLevelEarlyRepository,
            AdventurerLevelMidRepository adventurerLevelMidRepository,
            AdventurerLevelLateRepository adventurerLevelLateRepository,
            AdventurerTierRepository adventurerTierRepository,
            AlignmentRepository alignmentRepository,
            ClassesRepository classesRepository,
            DispositionsRepository dispositionsRepository,
            EconomicStatusRepository economicStatusRepository,
            GenderRepository genderRepository,
            ProfessionRepository professionRepository,
            RaceRepository raceRepository,
            TradesRepository tradesRepository,
            UncommonRaceRepository uncommonRaceRepository) {
        PersonRepo.adventurerLevelEarlyRepository = adventurerLevelEarlyRepository;
        PersonRepo.adventurerLevelMidRepository = adventurerLevelMidRepository;
        PersonRepo.adventurerLevelLateRepository = adventurerLevelLateRepository;
        PersonRepo.adventurerTierRepository = adventurerTierRepository;
        PersonRepo.alignmentRepository = alignmentRepository;
        PersonRepo.classesRepository = classesRepository;
        PersonRepo.dispositionsRepository = dispositionsRepository;
        PersonRepo.economicStatusRepository = economicStatusRepository;
        PersonRepo.genderRepository = genderRepository;
        PersonRepo.professionRepository = professionRepository;
        PersonRepo.raceRepository = raceRepository;
        PersonRepo.tradesRepository = tradesRepository;
        PersonRepo.uncommonRaceRepository = uncommonRaceRepository;
    }

    public static String[] getPerson() {
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

    private static String getRace() {
        Race race = raceRepository.getRaceById(DieRoller.roll1Based(DieSize.D100));
        if (Objects.equals(race.getText(), "Other"))
            return getUncommonRace();
        else
            return race.getText();
    }

    private static String getUncommonRace() {
        return uncommonRaceRepository
                .getUncommonRacesById(DieRoller.roll1Based(DieSize.D20))
                .getText();
    }

    private static String getGender() {
        return genderRepository
                .getGenderById(DieRoller.roll1Based(DieSize.D100))
                .getText();
    }

    private static String getAlignment() {
        return alignmentRepository
                .getAlignmentById(DieRoller.roll1Based(DieSize.D100))
                .getText();
    }

    private static String getProfession() {
        Profession profession = professionRepository.getProfessionById(DieRoller.roll1Based(DieSize.D100));
        if (Objects.equals(profession.getText(), "Tradesperson"))
            return getTradesperson();
        else if (Objects.equals(profession.getText(), "Adventurer"))
            return getAdventurer();
        else
            return profession.getText();
    }

    private static String getTradesperson() {
        return tradesRepository
                .getTradesById(DieRoller.roll1Based(DieSize.D100))
                .getTradeText();
    }

    private static String getAdventurer() {
        return String.format(
                "Class:%s Level:%s",
                getAdventurerClass(),
                getAdventurerLevel());
    }

    private static String getAdventurerClass() {
        return classesRepository
                .getClassesById(DieRoller.roll1Based(DieSize.D100)).
                getClassText();
    }

    private static String getAdventurerLevel() {
        int rollLevel = DieRoller.roll1Based(DieSize.D20);
        return switch (adventurerTierRepository.getAdventurerTierById(DieRoller.roll1Based(DieSize.D20)).getText()) {
            case "Early" -> adventurerLevelEarlyRepository.getAdventurerLevelEarlyById(rollLevel).getText();
            case "Mid" -> adventurerLevelMidRepository.getAdventurerLevelMidById(rollLevel).getText();
            case "Late" -> adventurerLevelLateRepository.getAdventurerLevelLateById(rollLevel).getText();
            default -> "";
        };
    }

    private static String getDisposition() {
        return dispositionsRepository
                .getDispositionsById(DieRoller.roll1Based(DieSize.D100))
                .getDispositionText();
    }

    private static String getEconomicStatus() {
        return economicStatusRepository
                .getEconomicStatusById(DieRoller.roll1Based(DieSize.D100))
                .getText();
    }
}
