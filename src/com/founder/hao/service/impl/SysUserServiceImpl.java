package com.founder.hao.service.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.founder.base.util.SessionUtils;
import com.founder.hao.dao.ILoginRecordDao;
import com.founder.hao.dao.IUserDao;
import com.founder.hao.entity.BaseListPage;
import com.founder.hao.entity.LoginRecord;
import com.founder.hao.entity.User;
import com.founder.hao.service.ISysUserService;

@Service("sysUserService")
public class SysUserServiceImpl implements ISysUserService {

	@Resource
	private IUserDao userDao;
	
	@Resource
	private ILoginRecordDao recordDao;
	
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#login(java.lang.String)
	 */
	@Override
	public User login(String username){
		return userDao.getUserByUserName(username);
	}
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#register()
	 */
	@Override
	public void register(){
		
	}
	
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#checkVolidCode(javax.servlet.http.HttpServletRequest, java.lang.String)
	 */
	@Override
	public boolean checkVolidCode(HttpServletRequest req, String code){
		return SessionUtils.getValidateCode(req).equalsIgnoreCase(code.trim());
	}
	
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#addLoginRecord(com.founder.hao.entity.LoginRecord)
	 */
	@Override
	public void addLoginRecord(LoginRecord record){
		recordDao.insertLoginRecord(record);
	}
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#getPwdFaltCounts(int)
	 */
	@Override
	public int getPwdFaltCounts(int userid){
		return recordDao.getFaltTimes(userid);
	}
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#getMenu(int)
	 */
	@Override
	public void getMenu(int userid){
		
	}
	/* (non-Javadoc)
	 * @see com.founder.hao.service.ISysUserService#getUserMeta()
	 */
	@Override
	public void getUserMeta(){
		
	}

	@Override
	public BaseListPage<?> getByPage(BaseListPage<?> page) {
		page.setCount(userDao.queryCountByPage(page));
		page.setBeanList(userDao.queryListByPage(page));
		return page;
	}
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
}
