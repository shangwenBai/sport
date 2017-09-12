/**
 * 
 */
package com.sport.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sport.model.SysMenu;
import com.sport.model.User;
import com.sport.model.easyui.PageHelper;

/**
 * @author zh
 * 2014-8-2
 */
public interface UserMapper {

	public User findUserByName(@Param("username") String username);

	public String getUsernameById(@Param("id") int id);

	public List<SysMenu> getMenuByRoleId(@Param("roleId") int userId);
	
	public List<User> getDatagrid();
	
	public List<User> searchUserByName(@Param("page")PageHelper page,@Param("userName")String userName);

	public Long getDatagridTotal(@Param("user")User user,@Param("csysid")Integer sysid);

	public List<User> datagridUser(@Param("page")PageHelper page,@Param("csysid")Integer sysid);

	public void addUser(User user);

	public void editUser(User user);
	
	public void deleteUser(int id);

}
