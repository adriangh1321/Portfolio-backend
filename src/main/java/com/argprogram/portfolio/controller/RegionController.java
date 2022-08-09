
package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.RegionListDto;
import com.argprogram.portfolio.service.RegionService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/regions")
@RequiredArgsConstructor
public class RegionController {

    private final RegionService regionService;

    @GetMapping("/country/{id}")
    public ResponseEntity<List<RegionListDto>> getAllByCountryId(@PathVariable Long id ) {
        return ResponseEntity.status(HttpStatus.OK).body(this.regionService.getAllByCountryId(id));
    }

}
