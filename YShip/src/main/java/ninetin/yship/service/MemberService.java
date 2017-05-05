package ninetin.yship.service;

import java.util.List;
import java.util.Map;

public interface MemberService {

	List<Map<String, Object>> select_getBaseAddr() throws Exception;

	List<Map<String, Object>> select_getMyPobList(Map<String, Object> map) throws Exception;

	void insert_Shipping(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> select_getShippingList(Map<String, Object> memKeyMap) throws Exception;

	void delete_shipping(Map<String, Object> map) throws Exception;
}
