package ninetin.yship.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ninetin.include.common.CommandMap;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value = "/mypage.do")
	public ModelAndView fromLogin(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/me");

		 if(commandMap.isEmpty() == false){
	            Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
	            Entry<String,Object> entry = null;
	            while(iterator.hasNext()){
	                entry = iterator.next();
	                log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
	            }
	        }
		return mv;
	}
}
