package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioBasicPatchDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
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
import org.springframework.web.bind.annotation.RequestParam;
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

    @PatchMapping("/me")
    public ResponseEntity<Void> patchBasicInfo(@RequestBody @Valid PortfolioBasicPatchDto dto) {
        this.portfolioService.patchBasicInfo(dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PatchMapping("/me/aboutMe")
    public ResponseEntity<Void> patchAboutMe( @RequestBody @Valid PortfolioAboutDto dto) {
        this.portfolioService.patchAboutMe(dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @PatchMapping("/me/banner")
    public ResponseEntity<Void> patchBanner(@RequestBody @Valid PortfolioBannerDto dto) {
        this.portfolioService.patchBanner(dto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @GetMapping("/me/aboutMe")
    public ResponseEntity<PortfolioAboutDto> getAboutMe() {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getAboutMe());
    }

    @GetMapping("/me/basicInfo")
    public ResponseEntity<PortfolioBasicDto> getBasicInfo() {
        return ResponseEntity.ok(this.portfolioService.getBasicInfo());
    }

    @GetMapping("/me/banner")
    public ResponseEntity<PortfolioBannerDto> getBanner() {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getBanner());
    }

//    @GetMapping()
//    public ResponseEntity<List<PortfolioProfileDto>> getProfiles() {
//        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getPortfolioProfiles());
//    }

    @GetMapping("/user/{nickname}")
    public ResponseEntity<PortfolioDto> getByUserNickname(@PathVariable String nickname) {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getByUserNickname(nickname));
    }

    @GetMapping("/me/image")
    public ResponseEntity<PortfolioImageDto> getImage() {
        return ResponseEntity.status(HttpStatus.OK).body(this.portfolioService.getImage());

    }

    @GetMapping()
    public ResponseEntity<List<PortfolioProfileDto>> getPortfoliosByFilters(
            @RequestParam(required = false) String find,
            @RequestParam(required = false) String country,
            @RequestParam(required = false) String region,
            @RequestParam(required = false, defaultValue = "ASC") String order) {
        List<PortfolioProfileDto> result = this.portfolioService.getPortfoliosByFilters(find, country, region, order);
        return ResponseEntity.status(HttpStatus.OK).body(result);
    }
}
