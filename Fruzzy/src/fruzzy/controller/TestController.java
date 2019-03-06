package fruzzy.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fruzzy.model.LoginModel;
import fruzzy.model.SignupModel;

@Controller
public class TestController {
	
	@RequestMapping("/")
	public ModelAndView getIndex() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/homepage")
	public ModelAndView getHomepage(Model model) {
		ModelAndView m = new ModelAndView();
		model.addAttribute("loginForm", new LoginModel());
		model.addAttribute("signupModel", new SignupModel());
		m.setViewName("homepage");
		return m;
	}

}
