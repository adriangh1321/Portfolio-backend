package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.dto.SkillCreateDto;
import com.argprogram.portfolio.dto.SkillDto;
import com.argprogram.portfolio.service.SkillService;
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
@RequestMapping("/v1/skills")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class SkillController {

    private final SkillService skillService;

    @GetMapping(params = "portfolioId")
    public ResponseEntity<List<SkillDto>> getAllByPortfolioId(@RequestParam("portfolioId") Long portfolioId) {
        return ResponseEntity.status(HttpStatus.OK).body(this.skillService.getAllByPortfolioId(portfolioId));
    }

    @GetMapping
    public ResponseEntity<List<SkillDto>> getAll() {
        return ResponseEntity.status(HttpStatus.OK).body(this.skillService.getAll());
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody @Valid SkillDto dto) {
        this.skillService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PostMapping
    public ResponseEntity<Void> save(@RequestBody @Valid SkillCreateDto dto) {
        this.skillService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        this.skillService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
