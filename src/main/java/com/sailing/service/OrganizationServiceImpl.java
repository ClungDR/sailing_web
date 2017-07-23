package com.sailing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sailing.dao.OrganizationMapper;
import com.sailing.entity.Organization;

@Service
public class OrganizationServiceImpl implements OrganizationService {
	@Autowired
	private OrganizationMapper organizationMapper;

	@Override
	public Organization createOrganization(Organization organization) {
		organizationMapper.insert(organization);
		return organization;
	}

	@Override
	public Organization updateOrganization(Organization organization) {
		organizationMapper.updateById(organization);
		return organization;
	}

	@Override
	public void deleteOrganization(Integer organizationId) {
		organizationMapper.deleteById(organizationId);
	}

	@Override
	public Organization selectOne(Integer organizationId) {
		return organizationMapper.selectById(organizationId);
	}

	@Override
	public List<Organization> selectAll() {
		return organizationMapper.selectAll();
	}

	@Override
	public List<Organization> selectAllWithExclude(
	        Organization excludeOraganization) {
		// return organizationMapper.selectAllWithExclude(excludeOraganization);
		return null;
	}

	@Override
	public void move(Organization source, Organization target) {
		// organizationMapper.move(source, target);
	}
}
