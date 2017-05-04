package ninetin.yship.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ninetin.yship.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public List<Map<String, Object>> select_getBaseAddr() throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.select_getBaseAddr();
	}

	@Override
	public List<Map<String, Object>> select_getMyPobList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.select_getMyPob(map);
	}
}
