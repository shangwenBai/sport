package com.sport.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sport.dao.SystemdefMapper;
import com.sport.model.Systemdef;
import com.sport.model.easyui.PageHelper;

@Service
public class SystemdefService {
	
	@Resource
	private SystemdefMapper systemdefMapper;
	
	/**
	 * 获取所有列表
	 * @param page
	 * @return
	 */
	public List<Systemdef> getAll(PageHelper page) {
		page.setStart((page.getPage()-1)*page.getRows());
		page.setEnd(page.getPage()*page.getRows());
		return systemdefMapper.getAll(page);  
	}

	public void deleteSystemdefById(Integer systemdefId) {
		systemdefMapper.deleteSystemdefById(systemdefId);
	}

	public Systemdef getSystemdefById(Integer systemdefId) {
		return systemdefMapper.getSystemdefById(systemdefId);
	}

	/**
	 * 保存、更新
	 * @param systemdef
	 */
	public void saveSystemdef(Systemdef systemdef) {
		if(systemdef.getId()!=null && systemdef.getId().intValue()>0){
			systemdefMapper.updateSystemdef(systemdef);
		}else{
			systemdefMapper.insertSystemdef(systemdef);
		}
	}

}
