package ninetin.yship.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ninetin.include.common.CommandMap;
import ninetin.include.common.ValidCheckUtil;
import ninetin.yship.service.MemberService;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "memberService")
	MemberService memberService;
	Map<String,Object> modelMap = new HashMap<String,Object>();
	ValidCheckUtil valid = new ValidCheckUtil();
	
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
					modelMap.put(mapKey + "_" + i, myPobList.get(i).get(mapKey).toString());
					log.debug("PobKey : " + mapKey + "_" + i +" Pobvalue : "+myPobList.get(i).get(mapKey).toString());
				}
			}

			List<Map<String, Object>> baseMapList = memberService.select_getBaseAddr();
			mv.addObject("baseMapList",baseMapList);
			
			for(int i=0; i < baseMapList.size(); i++){
				for(String mapKey : baseMapList.get(i).keySet()){
					modelMap.put(mapKey + "_" + i, baseMapList.get(i).get(mapKey).toString());
					log.debug("baseKey : " + mapKey + "_" + i +" basevalue : " + baseMapList.get(i).get(mapKey).toString());
				}
			}
			
			List<Map<String, Object>> shippingList = memberService.select_getShippingList(memKeyMap);
			if(shippingList.size() > 0){
				modelMap.put("SHIPPING_COUNT", shippingList.size());
				modelMap.put("SHIPPING", "Y");
			}else{
				modelMap.put("SHIPPING", "");
				modelMap.put("SHIPPING_COUNT", 0);
			}
			
			for(String mapKey:modelMap.keySet()){
	        	model.addAttribute(mapKey,modelMap.get(mapKey));
	        }
			
			myPobList.clear();
			myPobList = null;
			baseMapList.clear();
			baseMapList = null;
			shippingList.clear();
			shippingList = null;
			memKeyMap.clear();
			memKeyMap = null;

		}
		
		return mv;
	}

	@RequestMapping(value = "/inner_mypage.do")
	public ModelAndView innerMypage(CommandMap commandMap, Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/inner_mypage");
		
		for(String mapKey:modelMap.keySet()){
        	model.addAttribute(mapKey,modelMap.get(mapKey));
        }
		
		return mv;
	}
	
	@RequestMapping(value = "/inner_inputform.do")
	public ModelAndView inner_inputform(CommandMap commandMap, Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/inner_inputform");
		
		return mv;
	}
	
	@RequestMapping(value = "/shipping.do")
	public ModelAndView insert_shipping(CommandMap commandMap, Model model, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/inner_inputform.do");
		String memKey = session.getAttribute("memKey").toString();
		commandMap.put("memkey", memKey);
		Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
		
		if(commandMap.isEmpty() == false && memKey.equals("") == false){
			boolean result = valid.Checker(iterator);
			if(result == true){
				memberService.insert_Shipping(commandMap.getMap());
				mv = new ModelAndView("redirect:/mypage.do");
			}
		}
		
		return mv;
	}
	
	//initialization.do

	@RequestMapping(value = "/initialization.do")
	public ModelAndView initialization(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/mypage.do");
		String memKey = session.getAttribute("memKey").toString();
		commandMap.put("memkey", memKey);
		log.debug("SHIPPING : " + modelMap.get("SHIPPING"));
		
		if(modelMap.get("SHIPPING").equals("") == false){
			memberService.delete_shipping(commandMap.getMap());	
		}
		
		return mv;
	}
	
}
