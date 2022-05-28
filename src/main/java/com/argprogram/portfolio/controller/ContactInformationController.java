
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.service.ContactInformationService;
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
@RequestMapping("/v1/contactInformations")
@RequiredArgsConstructor
public class ContactInformationController {
    
    private final ContactInformationService contactInformationService;
    
    @GetMapping("{id}")
    public ResponseEntity<ContactInformationDto> getById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(this.contactInformationService.getById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody @Valid ContactInformationDto dto) {
        this.contactInformationService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
}
