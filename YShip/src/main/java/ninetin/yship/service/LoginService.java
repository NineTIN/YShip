package ninetin.yship.service;

import java.util.List;
import java.util.Map;

public interface LoginService {

	void insertCreateID(Map<String, Object> map) throws Exception;

	Map<String, Object> select_getMemKey(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> select_getBaseAddr() throws Exception;

	List<Map<String, Object>> select_getCountryKey() throws Exception;

	void insertMypob(Map<String, Object> map) throws Exception;

}
