package ninetin.yship.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value = "/mypage.do")
	public ModelAndView login(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/me");

		return mv;
	}
}
