package com.sailing.service;

import java.util.List;

import com.sailing.entity.Organization;

public interface OrganizationService {


    public Organization createOrganization(Organization organization);
    public Organization updateOrganization(Organization organization);
    public void deleteOrganization(Integer organizationId);

    Organization selectOne(Integer organizationId);
    List<Organization> selectAll();

    Object selectAllWithExclude(Organization excludeOraganization);

    void move(Organization source, Organization target);
}
