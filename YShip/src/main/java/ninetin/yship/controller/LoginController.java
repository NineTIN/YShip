package ninetin.yship.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ninetin.include.common.CommandMap;
import ninetin.include.common.ValidCheckUtil;
import ninetin.yship.service.LoginService;

@Controller
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="loginService")
	private LoginService loginService;
	private ValidCheckUtil valid = new ValidCheckUtil();
	
	@RequestMapping(value = "/login.do")
	public ModelAndView login(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("/login/login");
		String memKey = "";
		if(commandMap.isEmpty() == false){
			Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
			boolean result = valid.Checker(iterator);

            if(result == true){
            	Map<String,Object> map = loginService.select_getMemKey(commandMap.getMap());
            	for (String mapkey : map.keySet()){
            		if(map.get(mapkey) != null){
            			memKey = map.get(mapkey).toString();
            			session.setAttribute("memKey", memKey);
            		}
                }//end for
                //mv.addObject("map", map);
            	
            	mv = new ModelAndView("/mypage/me");
    		}//end if
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/sighup.do")
	public ModelAndView createId(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/sighup.do");
		String memKey = "";
		
		if(commandMap.isEmpty() == false){
            Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
            boolean result = valid.Checker(iterator);
            
            if(result == true){
            	//Member Add
            	loginService.insertCreateID(commandMap.getMap());
            	
            	//Get MemKey
            	Map<String,Object> memMap = loginService.select_getMemKey(commandMap.getMap());
            	for (String mapkey : memMap.keySet()){
            		if(memMap.get(mapkey) != null){
            			memKey = memMap.get(mapkey).toString();
            			session.setAttribute("memKey", memKey);
            		}
                }//end for            	
            	
            	//Get Base Addr
            	List<Map<String,Object>> baseMapList = loginService.select_getCountryKey();
            	Map<String, Object> pobMap = new HashMap<String, Object>();
            	
            	for(int i = 0; i < baseMapList.size(); i++){
            		for (String mapkey : baseMapList.get(i).keySet()){
            			
                		if(baseMapList.get(i).get(mapkey) != null){
                			pobMap.put("memkey", memKey);
                			pobMap.put("countrykey", baseMapList.get(i).get(mapkey));
                			pobMap.put("mypob", getSaltString());
                			//Set MyPob
                        	loginService.insertMypob(pobMap);
                		}
            			//log.debug("memKey : " + memKey + "coutryKey : "+ baseMapList.get(i).get(mapkey)+ "mypob:" + getSaltString());
                    }//end for	
            	}
            	
            	mv = new ModelAndView("/login/login");
            }
		} 
		
		return mv;
	}
	
	protected String getSaltString() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
}
