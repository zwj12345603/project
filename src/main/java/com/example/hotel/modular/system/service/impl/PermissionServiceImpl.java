package com.example.hotel.modular.system.service.impl;


import com.example.hotel.modular.system.dao.PermissionMapper;
import com.example.hotel.modular.system.model.Permission;
import com.example.hotel.modular.system.model.User;
import com.example.hotel.modular.system.service.PermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Description:
 */
@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {


    @Resource
    private PermissionMapper permissionMapper;

    /**
     * @param user
     * @return : java.util.List<io.hailiang.web.book.model.Permission>
     * @description: 获取用户权限信息
     */
    @Override
    public List<Permission> queryPermissionsByUser(User user) {
        return permissionMapper.queryPermissionsByUser(user);
    }

    /**
     * @return : java.util.List<io.hailiang.web.book.model.Permission>
     * @description: 获取所有权限列表
     */
    @Override
    public List<Permission> queryAll() {
        return permissionMapper.queryAll();
    }

    /**
     * @param roleId
     * @description: 通过角色id删除角色权限表的关联关系
     */
    @Override
    public void deleteRolePermissionRsByRoleId(Integer roleId) {
        permissionMapper.deleteRolePermissionRsByRoleId(roleId);
    }

    /**
     * @param roleId
     * @return : java.util.List<java.lang.Integer>
     * @description: 通过角色id查询已经分配的权限信息
     */
    @Override
    public List<Integer> queryPermissionIdsByRoleId(Integer roleId) {
        return permissionMapper.queryPermissionIdsByRoleId(roleId);
    }
}
