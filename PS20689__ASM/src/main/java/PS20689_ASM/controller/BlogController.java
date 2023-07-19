package PS20689_ASM.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class BlogController {

	@RequestMapping("blog")
	public String index() {
		return "user/blog";
	}
}
