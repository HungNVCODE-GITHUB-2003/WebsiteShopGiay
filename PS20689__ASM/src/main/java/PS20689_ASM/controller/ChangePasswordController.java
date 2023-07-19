package PS20689_ASM.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import PS20689_ASM.bean.Account;
import PS20689_ASM.dao.AccountDAO;
import PS20689_ASM.service.impl.MailerServiceImpl;
import PS20689_ASM.utils.ParamService;
import net.bytebuddy.utility.RandomString;



@Controller
@RequestMapping("user")
public class ChangePasswordController {

	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accDAO;
	
	@Autowired
	MailerServiceImpl mailer;
	
	@RequestMapping("change_password")
	public String index() {
		return "user/change_password";
	}
	
	@PostMapping("change_password")
	public String change(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String newpassword= paramService.getString("newpassword", "");
		String confirmpassword= paramService.getString("confirmpassword", "");
		try {
			Account user = accDAO.findById(username).get();
				if(!user.getPassword().equals(password)) {
					model.addAttribute("message", "Wrong Password!");
				}else {
					if(newpassword.equals(confirmpassword)) {
						user.setPassword(confirmpassword);
						accDAO.save(user);
						model.addAttribute("message", "Password is changed!");
					}else {
						model.addAttribute("message", "Password not match!");
					}
				}
		} catch (Exception e) {
			model.addAttribute("message", "Account invalid!");
		}
		return "user/change_password";
	}
	
	
	
	@RequestMapping("/change_password2")
	public String change2(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String newpassword= paramService.getString("newpassword", "");
		String confirmpassword= paramService.getString("confirmpassword", "");
		try {
			Account user = accDAO.findById(username).get();
				if(!user.getPassword().equals(password)) {
					model.addAttribute("message", "Wrong Password!");
				}else {
					if(newpassword.equals(confirmpassword)) {
						user.setPassword(confirmpassword);
						accDAO.save(user);
						model.addAttribute("message", "Password is changed!");
					}else {
						model.addAttribute("message", "Password not match!");
					}
				}
		} catch (Exception e) {
			model.addAttribute("message", "Account invalid!");
		}
		return "user/change_password2";
	}
}
