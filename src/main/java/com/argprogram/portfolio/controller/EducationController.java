
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.service.EducationService;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/educations")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class EducationController {
    
    private final EducationService educationService;
    
    @PostMapping
    public ResponseEntity<Void> save(@RequestBody @Valid EducationCreateDto dto){
        this.educationService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}
