package fruzzy.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping("/")
	public ModelAndView getIndex() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/homepage")
	public ModelAndView getHomepage() {
		ModelAndView m = new ModelAndView();
		
		m.setViewName("homepage");
		
		return m;
	}

}
