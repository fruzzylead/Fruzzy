package fruzzy.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fruzzy.model.SigninModel;
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
		model.addAttribute("signinModel", new SigninModel());
		model.addAttribute("signupModel", new SignupModel());
		m.setViewName("homepage");
		return m;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView getProfile(Model model) {
		ModelAndView m = new ModelAndView();
		model.addAttribute("signinModel", new SigninModel());
		model.addAttribute("signupModel", new SignupModel());
		m.setViewName("dashboard");
		return m;
	}


	@RequestMapping("/signin")
	public ModelAndView signIn(@ModelAttribute SigninModel signinModel) {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(fruzzy.model.SigninModel.class).buildSessionFactory();

		Session session = factory.getCurrentSession();

		try {
			session.beginTransaction();
			session.save(signinModel);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			factory.close();
		}
		return new ModelAndView("index");
	}
	

}
