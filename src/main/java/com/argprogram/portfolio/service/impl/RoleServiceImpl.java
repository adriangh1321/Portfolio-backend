package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.model.Role;
import com.argprogram.portfolio.repository.RoleRepository;
import com.argprogram.portfolio.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Transactional(readOnly=true)
    @Override
    public Role getById(Long id) {
        return this.roleRepository.findById(id).orElseThrow(() -> new NotFoundException("Role not found"));
    }

}
