package ninetin.yship.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ninetin.yship.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public void insertCreateID(Map<String, Object> map) throws Exception  {
		// TODO Auto-generated method stub
		memberDAO.insertCreateID(map);
	}
}
