
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.CountryDto;
import com.argprogram.portfolio.service.CountryService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/countries")
@RequiredArgsConstructor
public class CountryController {
    
    private final CountryService countryService;
    
    @GetMapping()
    public ResponseEntity<List<CountryDto>> getAll(){
        return ResponseEntity.status(HttpStatus.OK).body(this.countryService.getAll());
    }
    
}
