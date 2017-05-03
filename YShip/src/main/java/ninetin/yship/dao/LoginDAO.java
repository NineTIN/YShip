package ninetin.yship.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import ninetin.include.dao.DAO;

@Repository("loginDAO")
public class LoginDAO extends DAO{

	public void insertCreateID(Map<String, Object> map) {
		// TODO Auto-generated method stub
		insert("member.insertCreateID",map);
	}

	public Map<String, Object> select_getMemKey(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("member.select_getMemKey",map);
	}

	public List<Map<String, Object>> select_getBaseAddr() {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("country.select_all");
	}

	public List<Map<String, Object>> select_getCountryKey() {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("country.select_getCountryKey");
	}

	public void insertMyPob(Map<String, Object> map) {
		// TODO Auto-generated method stub
		insert("member_pob.insertMypob",map);
	}
}
