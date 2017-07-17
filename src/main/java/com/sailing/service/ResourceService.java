package com.sailing.service;

import java.util.List;
import java.util.Set;

import com.sailing.entity.Resource;

public interface ResourceService {
    public Resource createResource(Resource resource);
    public Resource updateResource(Resource resource);
    public void deleteResource(Integer resourceId);

    Resource selectOne(Integer resourceId);
    List<Resource> selectAll();

    /**
     * 得到资源对应的权限字符串
     * @param resourceIds
     * @return
     */
    Set<String> selectPermissions(Set<Integer> resourceIds);

    /**
     * 根据用户权限得到菜单
     * @param permissions
     * @return
     */
    List<Resource> selectMenus(Set<String> permissions);
}
