package ninetin.yship.controller;

import java.util.Iterator;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ninetin.include.common.CommandMap;
import ninetin.yship.service.LoginService;

@Controller
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value = "/login.do")
	public ModelAndView login(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/login");

		return mv;
	}
	
	@RequestMapping(value = "/sighup.do")
	public ModelAndView createId(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/login.do");

		if(commandMap.isEmpty() == false){
            Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
            Entry<String,Object> entry = null;
            while(iterator.hasNext()){
                entry = iterator.next();
                log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
            }
		}
		
		loginService.insertCreateID(commandMap.getMap());
		 
		return mv;
	}
}
