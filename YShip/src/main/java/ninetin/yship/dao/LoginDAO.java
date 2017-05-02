package ninetin.yship.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import ninetin.include.dao.DAO;

@Repository("loginDAO")
public class LoginDAO extends DAO{

	public void insertCreateID(Map<String, Object> map) {
		// TODO Auto-generated method stub
		insert("login.insertCreateID",map);
	}
}
