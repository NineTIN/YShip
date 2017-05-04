package ninetin.yship.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import ninetin.include.dao.DAO;

@Repository("memberDAO")
public class MemberDAO extends DAO{

	public List<Map<String, Object>> select_getBaseAddr() {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("country.select_getBaseAddr");
	}

	public List<Map<String, Object>> select_getMyPob(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>) selectList("member_pob.select_getMyPob", map);
	}
}
