package ninetin.yship.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ninetin.include.common.CommandMap;
import ninetin.yship.service.MemberService;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "memberService")
	MemberService memberService;
	Map<String,Object> test = new HashMap<String,Object>();
	
	@RequestMapping(value = "/mypage.do")
	public ModelAndView fromLogin(CommandMap commandMap, HttpSession session,Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/me");
		String memKey = session.getAttribute("memKey").toString();
		
		if(memKey.equals("") == true){
			mv = new ModelAndView("redirect:/login.do");
		}else{
			log.debug("get session = "+ memKey);
			
			//Country Base Addr + MyPob			
			Map<String,Object> memKeyMap = new HashMap<String, Object>();
			memKeyMap.put("memkey", memKey);
			
			List<Map<String,Object>> myPobList = memberService.select_getMyPobList(memKeyMap);
			mv.addObject("myPobList", myPobList);
			
			for(int i=0; i < myPobList.size(); i++){
				for(String mapKey : myPobList.get(i).keySet()){
					//mv.addObject(mapKey + "_" + i, myPobList.get(i).get(mapKey).toString());
					test.put(mapKey + "_" + i, myPobList.get(i).get(mapKey).toString());
					log.debug("PobKey : " + mapKey + "_" + i +" Pobvalue : "+myPobList.get(i).get(mapKey).toString());
				}
			}
			
			memKeyMap.clear();
			memKeyMap = null;

			List<Map<String, Object>> baseMapList = memberService.select_getBaseAddr();
			mv.addObject("baseMapList",baseMapList);
			
			for(int i=0; i < baseMapList.size(); i++){
				for(String mapKey : baseMapList.get(i).keySet()){
					//mv.addObject(mapKey + "_" + i, baseMapList.get(i).get(mapKey).toString());
					test.put(mapKey + "_" + i, baseMapList.get(i).get(mapKey).toString());
					log.debug("baseKey : " + mapKey + "_" + i +" basevalue : " + baseMapList.get(i).get(mapKey).toString());
				}
			}
			
			for(String mapKey:test.keySet()){
	        	model.addAttribute(mapKey,test.get(mapKey));
	        }
		}
		
		return mv;
	}

	@RequestMapping(value = "/inner_mypage.do")
	public ModelAndView innerMypage(CommandMap commandMap, Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/inner_mypage");
		
		for(String mapKey:test.keySet()){
        	model.addAttribute(mapKey,test.get(mapKey));
        }
		
		return mv;
	}
	
	@RequestMapping(value = "/inner_inputform.do")
	public ModelAndView inner_inputform(CommandMap commandMap, Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/inner_inputform");
		
		return mv;
	}
}
