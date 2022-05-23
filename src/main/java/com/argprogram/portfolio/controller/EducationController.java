
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.service.EducationService;
import java.util.List;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/educations")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class EducationController {
    
    private final EducationService educationService;
    
     @GetMapping(params = "portfolioId")
    public ResponseEntity<List<EducationDto>> getAllByPortfolioId(@RequestParam("portfolioId") Long portfolioId) {
        return ResponseEntity.status(HttpStatus.OK).body(this.educationService.getAllByPortfolioId(portfolioId));
    }
    
    @GetMapping
    public ResponseEntity<List<EducationDto>> getAll(){
        return ResponseEntity.status(HttpStatus.OK).body(this.educationService.getAll());
    }
    
     @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id,@RequestBody @Valid  EducationDto dto){
        this.educationService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @PostMapping
    public ResponseEntity<Void> save(@RequestBody @Valid EducationCreateDto dto){
        this.educationService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){
        this.educationService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
