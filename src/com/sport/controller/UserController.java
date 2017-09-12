/**
 * 
 */
package com.sport.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sport.model.User;
import com.sport.model.easyui.DataGrid;
import com.sport.model.easyui.Json;
import com.sport.model.easyui.PageHelper;
import com.sport.service.UserService;

/**
 * @author zh
 * 2014-8-23
 */
@Controller
public class UserController {
	
	private final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Resource
	private UserService userService;
	
	/**
	 * 跳转到用户表格页面
	 * @return
	 */
	@RequestMapping(value = "/user/list",method = RequestMethod.GET)
    public String userList(Model model) {
        return "user/list";
    }
	
	/**
	 * 跳转到用户表格页面(tree)
	 * @return
	 */
	@RequestMapping(value = "/user/listtree",method = RequestMethod.GET)
    public String userListTree(Model model) {
        return "user/list_tree";
    }
	
	/**
	 * 用户表格
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/user/datagrid", method = RequestMethod.POST)
	public DataGrid datagrid(PageHelper page,User user,Integer sysid) {
		DataGrid dg = new DataGrid();
		dg.setTotal(userService.getDatagridTotal(user,sysid));
		List<User> userList = userService.datagridUser(page,sysid);
		dg.setRows(userList);
		return dg;
	}
	
	/**
	 * 新增用户
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/user/addUser",method = RequestMethod.POST)
    public Json addUser(User user) {
		Json j = new Json();
		
		try {
            userService.add(user);
            j.setSuccess(true);
            j.setMsg("用户新增成功！");
            j.setObj(user);
        } catch (Exception e) {
            j.setMsg(e.getMessage());
        }
        return j;
    }
	
	/**
     * 修改用户
     * 
     * @param user
     * @return
     */
	@ResponseBody
    @RequestMapping(value = "/user/editUser",method = RequestMethod.POST)
    public Json editUser(User user) {
        Json j = new Json();
        log.debug("穿过来的用户ID为："+user.getId());
        try {
            userService.edit(user);
            j.setSuccess(true);
            j.setMsg("编辑成功！");
            j.setObj(user);
        } catch (Exception e) {
            j.setMsg(e.getMessage());
        }
        return j;
    }
	
	/**
	 * 删除某个用户
	 * @param userId
	 * @param out
	 */
	@ResponseBody
	@RequestMapping(value = "/user/deleteUser",method = RequestMethod.POST)
	public Json deleteUser(User user) {
		Json j = new Json();
        log.debug("穿过来的用户ID为："+user.getId());
        try {
			userService.deleteUser(user.getId());
			j.setSuccess(true);
	        j.setMsg("删除成功！");
        } catch (Exception e) {
            j.setMsg(e.getMessage());
        }
        return j;
	}
	
	/**
     * 查询用户
     * 
     * @param user
     * @return
     */
	@ResponseBody
    @RequestMapping(value = "/user/searchUserByName",method = RequestMethod.POST)
    public DataGrid searchUserByName(@RequestParam String userName,PageHelper page) {
		User user = new User();
		user.setUsername(userName);
        DataGrid dg = new DataGrid();
        dg.setTotal(userService.getDatagridTotal(user,null));
		List<User> userList = userService.searchUserByName(page,userName);
		dg.setRows(userList);
		return dg;
    }
	
	@ResponseBody
	@RequestMapping(value = "/user/searchUser",method = RequestMethod.POST)
	public DataGrid searchUserByName(User user,PageHelper page) {
	
		DataGrid dg = new DataGrid();
		dg.setTotal(userService.getDatagridTotal(user,null));
		//List<User> userList = userService.searchUserByName(page,userName);
		//dg.setRows(userList);
		return dg;
	}
	
}
