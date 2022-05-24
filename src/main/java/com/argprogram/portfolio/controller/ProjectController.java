
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/projects")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class ProjectController {
    
    private final ProjectService projectService;
    
    
}
