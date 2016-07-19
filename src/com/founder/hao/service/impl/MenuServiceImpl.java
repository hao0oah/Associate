package com.founder.hao.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.founder.hao.dao.IMenuDao;
import com.founder.hao.entity.Menu;
import com.founder.hao.entity.User;
import com.founder.hao.service.IMenuService;

@Service("menuService")
public class MenuServiceImpl implements IMenuService {

	@Resource
	private IMenuDao menuDao;
	
	/* (non-Javadoc)
	 * @see com.founder.hao.service.impl.IMenuService#getUserMenu(com.founder.hao.entity.User)
	 */
	@Override
	public List<Menu> getUserMenu(User user){
		List<Menu> tmp = menuDao.getMenuByUserId(user.getUserId());
		Map<Integer,Menu> map = new LinkedHashMap<Integer,Menu>();
		
		for (Menu sub : tmp) {
			int menuId = sub.getMenuParentId();
			if(menuId == 0){
				map.put(sub.getMenuId(), sub);
			} else {
				map.get(menuId).getSubMenus().add(sub);
			}
		}
		
		return new ArrayList<Menu>(map.values());
	}
}
