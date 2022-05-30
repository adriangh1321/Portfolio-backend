package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.model.Role;
import com.argprogram.portfolio.repository.RoleRepository;
import com.argprogram.portfolio.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Override
    public Role getById(Long id) {
        return this.roleRepository.findById(id).orElseThrow(() -> new NotFoundException("Role not found"));
    }

}
