package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.CountryDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.CountryMapper;
import com.argprogram.portfolio.model.Country;
import com.argprogram.portfolio.repository.CountryRepository;
import com.argprogram.portfolio.service.CountryService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CountryServiceImpl implements CountryService {

    private final CountryRepository countryRepository;
    private final CountryMapper countryMapper;

    @Override
    public Country getById(Long id) {
        return this.countryRepository.findById(id).orElseThrow(() -> new NotFoundException("Country not found"));
    }

    @Override
    public List<CountryDto> getAll() {
        return this.countryRepository.findAll(Sort.by(Sort.Direction.ASC, "name"))
                .stream()
                .map(country -> this.countryMapper.toCountryDto(country))
                .collect(Collectors.toList());
    }

}
