package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.dto.ExperiencePutDto;
import com.argprogram.portfolio.service.ExperienceService;
import java.util.List;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/experiences")
@RequiredArgsConstructor
public class ExperienceController {

    private final ExperienceService experienceService;

    @GetMapping("/me")
    public ResponseEntity<List<ExperienceDto>> getMeByToken() {
        return ResponseEntity.status(HttpStatus.OK).body(this.experienceService.getMeByToken());
    } 
    
    @PutMapping("/me/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id,@RequestBody @Valid  ExperiencePutDto dto){
        this.experienceService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @PostMapping("/me")
    public ResponseEntity<Void> save(@RequestBody @Valid ExperienceCreateDto dto){
        this.experienceService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
    
    @DeleteMapping("/me/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){
        this.experienceService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
