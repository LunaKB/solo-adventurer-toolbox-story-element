package com.cmoncrieffe.satstoryelement.controller;

import com.cmoncrieffe.satstoryelement.dice.DieRoller;
import com.cmoncrieffe.satstoryelement.dice.DieSize;
import com.cmoncrieffe.satstoryelement.event.Creature;
import com.cmoncrieffe.satstoryelement.event.Person;
import com.cmoncrieffe.satstoryelement.event.UrbanEvent;
import com.cmoncrieffe.satstoryelement.event.Verb;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/story-element/generate")
public class ElementGeneratorController {
    // TODO: Put all strings in a database.
    private final UrbanEvent urbanEvent = new UrbanEvent();
    private final Creature creature = new Creature();
    private final Verb verb = new Verb();
    private final Person person = new Person();

    @GetMapping("/{amount}")
    public ResponseEntity<List<String[]>> generate(@PathVariable("amount") int amount) {
        return ResponseEntity.ok(DieRoller.roll1Based(DieSize.D20, amount)
                .stream()
                .map(integer -> {
                    if (integer <= 6)
                        return urbanEvent.getEvent();
                    else if (integer <= 8)
                        return creature.getCreature();
                    else if (integer <= 12)
                        return person.getPerson();
                    else
                        return verb.getVerb();
                }).toList());
    }
}
