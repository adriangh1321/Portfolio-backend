package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.RegionListDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.RegionMapper;
import com.argprogram.portfolio.model.Region;
import com.argprogram.portfolio.repository.RegionRepository;
import com.argprogram.portfolio.service.RegionService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class RegionServiceImpl implements RegionService {

    private final RegionRepository regionRepository;
    private final RegionMapper regionMapper;

    @Transactional(readOnly=true)
    @Override
    public Region getById(Long id) {
        
        return this.regionRepository.findById(id).orElseThrow(() -> new NotFoundException("Region not found"));
    }
    
    @Transactional(readOnly=true)
    @Override
    public List<RegionListDto> getAllByCountryId(Long countryId) {

        return this.regionRepository.findAllByCountryId(countryId)
                .stream()
                .map(region -> this.regionMapper.toRegionListDto(region))
                .collect(Collectors.toList());
    }

}
