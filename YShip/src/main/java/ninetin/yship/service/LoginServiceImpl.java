package ninetin.yship.service;


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
}
