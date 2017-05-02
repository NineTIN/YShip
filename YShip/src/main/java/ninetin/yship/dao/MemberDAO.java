package ninetin.yship.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import ninetin.include.dao.DAO;

@Repository("memberDAO")
public class MemberDAO extends DAO{

	public void insertCreateID(Map<String, Object> map) {
		// TODO Auto-generated method stub
		insert("member.insertCreateID", map);
	}

}
