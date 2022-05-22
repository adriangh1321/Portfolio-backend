
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.service.EducationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/educations")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class EducationController {
    
    private final EducationService educationService;
    
    
}
