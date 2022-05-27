package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.CurrentCompanyDto;
import com.argprogram.portfolio.service.CurrentCompanyService;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/currentCompanies")
@RequiredArgsConstructor
public class CurrentCompanyController {

    private final CurrentCompanyService currentCompanyService;

    @GetMapping("{id}")
    public ResponseEntity<CurrentCompanyDto> getById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(this.currentCompanyService.getById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody @Valid CurrentCompanyDto dto) {
        this.currentCompanyService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
