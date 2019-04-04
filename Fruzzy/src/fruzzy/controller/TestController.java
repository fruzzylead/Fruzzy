package fruzzy.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fruzzy.database.DBConnect;
import fruzzy.model.SigninModel;
import fruzzy.model.SignupModel;
import fruzzy.model.Upload;

@Controller
public class TestController {

	@RequestMapping("/")
	public ModelAndView getIndex(Model model) {
		model.addAttribute("command", new Upload());
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

	@RequestMapping("/testjsp")
	public ModelAndView getTest(Model model) {
		ModelAndView m = new ModelAndView();
		model.addAttribute("signinModel", new SigninModel());
		model.addAttribute("signupModel", new SignupModel());
		m.setViewName("test");
		return m;
	}

	@PostMapping("/signUp")
	public ModelAndView ask(@ModelAttribute SignupModel signupModel, HttpServletRequest request, Model model) {
		DBConnect.createNewUser(signupModel);
		ModelAndView mvc=new ModelAndView();
		HttpSession session = request.getSession();
		session.setAttribute("me", signupModel.getUsername());
		mvc = getDashboard(session,model);
		mvc.setViewName("redirect:/dashboard");
		return mvc;
	}

	@RequestMapping("/dashboard")
	public ModelAndView getDashboard(HttpSession session, Model model) {
		ModelAndView mvc = new ModelAndView();
		if (session.getAttribute("me") == null) {
			model.addAttribute("signupModel", new SignupModel());
			model.addAttribute("signinModel", new SigninModel());
			mvc.setViewName("redirect:/homepage");
		} else {
			String username = session.getAttribute("me") + "";
			ArrayList listOfFaids = DBConnect.getFaids(username);
			ArrayList<Upload> uploadList = new ArrayList();
			ArrayList<String> dps=null;
			try {
				uploadList = DBConnect.getUploads(listOfFaids);
				dps=(ArrayList<String>) DBConnect.getProfilePic(username);
				session.setAttribute("dpsrc", dps.get(0));
				session.setAttribute("coversrc", dps.get(1));
						
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mvc.addObject("uploads", uploadList);
		}
		return mvc;
	}

	@PostMapping("/signIn")
	public ModelAndView signIn(@ModelAttribute SigninModel signinModel, HttpSession session, Model model) {

		String encryptedPassword = DBConnect.encryptedPwd(signinModel.getPassword());
		String storedPassword = "";
		try {
			storedPassword = DBConnect.getPassword(signinModel.getUsername());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mvc=new ModelAndView();
		if (storedPassword.equals(encryptedPassword)) {
			session.setAttribute("me", signinModel.getUsername());
			mvc=getDashboard(session,model);
			mvc.setViewName("redirect:/dashboard");
		} else {
			mvc.addObject("error", "Incorrect username/password");
			mvc.addObject("signupModel",new SignupModel());
			mvc.addObject("signinModel", new SigninModel());
			mvc.setViewName("homepage");
		}

		return mvc;
	}

	@PostMapping("/upload")
	public ModelAndView upload(@ModelAttribute Upload upload, @RequestParam("media") MultipartFile multipartFile,
			HttpSession session, Model model) {
		Timestamp timestamp = new Timestamp(Calendar.getInstance().getTimeInMillis());
		String url = "";
		try {
			url = DBConnect.uploader(multipartFile, session.getAttribute("me").toString(), timestamp);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (upload.getType() == 1) {
			upload.setId("PIC" + DBConnect.randomString());
		} else if (upload.getType() == 2) {
			upload.setId("VID" + DBConnect.randomString());
		} else {
			upload.setId("TEX" + DBConnect.randomString());
		}

		upload.setUrl(url);

		try {
			DBConnect.upload(upload, session.getAttribute("me").toString(), timestamp, multipartFile.getSize());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mvc = getDashboard(session, model);
		return mvc;
	}

	@GetMapping("/signout")
	public ModelAndView signout(HttpSession session, HttpServletResponse response, Model model) {
		ModelAndView mvc=new ModelAndView();
		model.addAttribute("signinModel", new SigninModel());
		model.addAttribute("signupModel", new SignupModel());
		mvc.setViewName("redirect:/homepage");
		
		session.removeAttribute("me");
		session.removeAttribute("dpsrc");
		session.invalidate();

		return mvc;
	}

}
