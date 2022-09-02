
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.service.ContactInformationService;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/contactInformations")
@RequiredArgsConstructor
public class ContactInformationController {
    
    private final ContactInformationService contactInformationService;
    
    @PutMapping("/me")
    public ResponseEntity<Void> update(@RequestBody @Valid ContactInformationDto dto) {
        this.contactInformationService.update(dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
     @GetMapping("/me")
    public ResponseEntity<ContactInformationDto> getMeByToken() {
        return ResponseEntity.status(HttpStatus.OK).body(this.contactInformationService.getMeByToken());
    }
    
}
