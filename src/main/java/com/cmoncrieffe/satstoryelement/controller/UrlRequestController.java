package com.cmoncrieffe.satstoryelement.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/story-element/api")
public class UrlRequestController {
    @GetMapping("/")
    public ResponseEntity<Boolean> getLive(){
        return ResponseEntity.ok(true);
    }
}
