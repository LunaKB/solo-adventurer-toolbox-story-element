package com.cmoncrieffe.satstoryelement.controller;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satstoryelement.controller.utils.CreatureRepo;
import com.cmoncrieffe.satstoryelement.controller.utils.PersonRepo;
import com.cmoncrieffe.satstoryelement.controller.utils.UrbanEventRepo;
import com.cmoncrieffe.satstoryelement.controller.utils.VerbRepo;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/story-element/generate")
public class ElementGeneratorController {

    @GetMapping("/{amount}")
    public ResponseEntity<List<String[]>> generate(@PathVariable("amount") int amount) {

        return ResponseEntity.ok(DiceRoller.INSTANCE.roll0Based(DiceSize.D20, amount)
                .stream()
                .map(integer -> {
                    if (integer <= 6)
                        return UrbanEventRepo.get();
                    else if (integer <= 8)
                        return CreatureRepo.get();
                    else if (integer <= 12)
                        return PersonRepo.getPerson();
                    else
                        return VerbRepo.get();
                }).toList());
    }
}
