package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.service.ExperienceService;
import java.util.List;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/experiences")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class ExperienceController {

    private final ExperienceService experienceService;

    @GetMapping(params = "portfolioId")
    public ResponseEntity<List<ExperienceDto>> getAllByPortfolioId(@RequestParam("portfolioId") Long portfolioId) {
        return ResponseEntity.status(HttpStatus.OK).body(this.experienceService.getAllByPortfolioId(portfolioId));
    }
    
    @GetMapping
    public ResponseEntity<List<ExperienceDto>> getAll(){
        return ResponseEntity.status(HttpStatus.OK).body(this.experienceService.getAll());
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id,@RequestBody @Valid  ExperienceDto dto){
        this.experienceService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @PostMapping
    public ResponseEntity<Void> save(@RequestBody @Valid ExperienceCreateDto dto){
        this.experienceService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

}
