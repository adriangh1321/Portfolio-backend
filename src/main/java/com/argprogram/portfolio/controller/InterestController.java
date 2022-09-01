
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import com.argprogram.portfolio.service.InterestService;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/interests")
@RequiredArgsConstructor
public class InterestController {
    
    private final InterestService interestService;
    
     @GetMapping("/me")
    public ResponseEntity<List<InterestDto>> getMeByToken() {
        return ResponseEntity.status(HttpStatus.OK).body(this.interestService.getMeByToken());
    }   
    
    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id,@RequestBody @Valid  InterestDto dto){
        this.interestService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @PostMapping
    public ResponseEntity<Void> save(@RequestBody @Valid InterestCreateDto dto){
        this.interestService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){
        this.interestService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
}
