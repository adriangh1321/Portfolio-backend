
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.ProjectCreateDto;
import com.argprogram.portfolio.dto.ProjectDto;
import com.argprogram.portfolio.service.ProjectService;
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
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/projects")
@RequiredArgsConstructor
public class ProjectController {
    
    private final ProjectService projectService;
    
    @GetMapping("/me")
    public ResponseEntity<List<ProjectDto>> getMeByToken() {
        return ResponseEntity.status(HttpStatus.OK).body(this.projectService.getMeByToken());
    }

    @PutMapping("/me/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody @Valid ProjectDto dto) {
        this.projectService.update(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PostMapping("/me")
    public ResponseEntity<Void> save(@RequestBody @Valid ProjectCreateDto dto) {
        this.projectService.save(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        this.projectService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
