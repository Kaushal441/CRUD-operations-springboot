package in.sp.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.sp.main.entities.User;
import in.sp.main.services.UserService;

@Controller
public class MyController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/regPage")
     public String openRegPage(Model model) {
		model.addAttribute("user",new User());
    	 return "register";
     }
	@PostMapping("/regForm")
	public String submitRegForm(@ModelAttribute("use") User user,Model model) {
		boolean status = userService.registerUser(user);
		if(status)	
		{
			model.addAttribute("successMsg","User registered Successfully");
			return "profile";
		}
		else
		{
			model.addAttribute("errorMsg","User not registered due to some error");
		}
		return "register";
	}
	@GetMapping("/loginPage")
	public String openLoginPage(Model model) {
		model.addAttribute("user",new User());
		return"login";
	}
	@PostMapping("/loginForm")
	public String submitLoginForm(@ModelAttribute("use")User user, Model model) {
		User validUser = userService.loginUser(user.getEmail(), user.getPassword());
		if(validUser != null)
		{
			model.addAttribute("modelName", validUser.getName());
			return "profile";
		}
		else
		{
			model.addAttribute("errorMsg","EmaiId and password didn't matched");
			return "login";
		}
		
	}
	@GetMapping("/deleteUser")
	public String openDeleteForm(Model model) {
		model.addAttribute("user",new User());
		return "deleteuser";
	}
	@DeleteMapping("/deleteUser")
	public String openDeleteForm(@ModelAttribute("use") User user, Model model) {
		userService.deleteUser1(user.getEmail());
		System.out.println("User Deleted!!");
		return "deleteuser";
	}
}
