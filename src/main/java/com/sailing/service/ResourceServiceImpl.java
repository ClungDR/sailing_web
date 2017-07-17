package com.sailing.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authz.permission.WildcardPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.sailing.dao.ResourceMapper;
import com.sailing.entity.Resource;

@Service
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceMapper resourceMapper;

    @Override
    public Resource createResource(Resource resource) {
        resourceMapper.insert(resource);
        return resource;
    }

    @Override
    public Resource updateResource(Resource resource) {
        resourceMapper.updateById(resource);
        return resource;
    }

    @Override
    public void deleteResource(Integer resourceId) {
        resourceMapper.deleteById(resourceId);
    }

    @Override
    public Resource selectOne(Integer resourceId) {
        return resourceMapper.selectById(resourceId);
    }

    @Override
    public List<Resource> selectAll() {
//        return resourceMapper.selectAll();
        return null;
    }

    @Override
    public Set<String> selectPermissions(Set<Integer> resourceIds) {
        Set<String> permissions = new HashSet<String>();
        for(Integer resourceId : resourceIds) {
            Resource resource = selectOne(resourceId);
            if(resource != null && !StringUtils.isEmpty(resource.getPermission())) {
                permissions.add(resource.getPermission());
            }
        }
        return permissions;
    }

    @Override
    public List<Resource> selectMenus(Set<String> permissions) {
//        List<Resource> allResources = selectAll();
//        List<Resource> menus = new ArrayList<Resource>();
//        for(Resource resource : allResources) {
//            if(resource.isRootNode()) {
//                continue;
//            }
//            if(resource.getType() != Resource.ResourceType.menu) {
//                continue;
//            }
//            if(!hasPermission(permissions, resource)) {
//                continue;
//            }
//            menus.add(resource);
//        }
//        return menus;
        return null;
    }

    private boolean hasPermission(Set<String> permissions, Resource resource) {
        if(StringUtils.isEmpty(resource.getPermission())) {
            return true;
        }
        for(String permission : permissions) {
            WildcardPermission p1 = new WildcardPermission(permission);
            WildcardPermission p2 = new WildcardPermission(resource.getPermission());
            if(p1.implies(p2) || p2.implies(p1)) {
                return true;
            }
        }
        return false;
    }
}
