package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioProfileDto;
import com.argprogram.portfolio.service.PortfolioService;
import java.util.List;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/portfolios")
@RequiredArgsConstructor
public class PortfolioController {

    private final PortfolioService portfolioService;

//    @GetMapping("/{id}")
//    public ResponseEntity<PortfolioDto> getOneById(@PathVariable Long id) {
//        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getById(id));
//    }
    
     @GetMapping("/me")
    public ResponseEntity<PortfolioDto> getMePortfolio() {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getMeByToken());
    }

    @PatchMapping("/{id}")
    public ResponseEntity<Void> patchBasicInfo(@PathVariable Long id, @RequestBody @Valid PortfolioBasicDto dto) {
        this.portfolioService.patchBasicInfo(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PatchMapping("/{id}/aboutMe")
    public ResponseEntity<Void> patchAboutMe(@PathVariable Long id, @RequestBody @Valid PortfolioAboutDto dto) {
        this.portfolioService.patchAboutMe(id, dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @PatchMapping("/me/banner")
    public ResponseEntity<Void> patchBanner(@RequestBody @Valid PortfolioBannerDto dto) {
        this.portfolioService.patchBanner(dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
    
    @GetMapping("/{id}/aboutMe")
    public ResponseEntity<PortfolioAboutDto> getAboutMe(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getAboutMe(id));
    }
    
    @GetMapping("/{id}/basicInfo")
    public ResponseEntity<PortfolioBasicDto> getBasicInfo(@PathVariable Long id){
        return ResponseEntity.ok(this.portfolioService.getBasicInfo(id));
    }
    
    @GetMapping("/me/banner")
    public ResponseEntity<PortfolioBannerDto> getBanner() {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getBanner());
    }
    
    @GetMapping()
    public ResponseEntity<List<PortfolioProfileDto>> getProfiles(){
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getPortfolioProfiles());
    }
    
    @GetMapping("/user/{nickname}")
    public ResponseEntity<PortfolioDto> getByUserNickname(@PathVariable String nickname) {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getByUserNickname(nickname));
    }
    
  }
