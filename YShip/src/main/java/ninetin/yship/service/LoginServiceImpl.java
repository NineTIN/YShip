package ninetin.yship.service;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ninetin.yship.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public void insertCreateID(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		loginDAO.insertCreateID(map);
	}

	@Override
	public Map<String, Object> select_getMemKey(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.select_getMemKey(map);
	}

	@Override
	public List<Map<String, Object>> select_getBaseAddr() throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.select_getBaseAddr();
	}

	@Override
	public List<Map<String, Object>> select_getCountryKey() throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.select_getCountryKey();
	}

	@Override
	public void insertMypob(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		loginDAO.insertMyPob(map);
	}
}
