package PS20689_ASM.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class ContactController {
	
	@RequestMapping("contact")
	public String index() {
		return "user/contact";
	}
}
