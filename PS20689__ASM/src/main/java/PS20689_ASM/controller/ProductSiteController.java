package PS20689_ASM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PS20689_ASM.bean.Product;
import PS20689_ASM.dao.AccountDAO;
import PS20689_ASM.dao.ProductDAO;
import PS20689_ASM.service.SizeService;
import PS20689_ASM.utils.CookieService;
import PS20689_ASM.utils.ParamService;
import PS20689_ASM.utils.SessionService;


@Controller
@RequestMapping("user")
public class ProductSiteController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;
	@Autowired
	ProductDAO proDAO;
	@Autowired
	SizeService sizeService;

	@RequestMapping("product_detail")
	public String index() {
		return "user/product_detail";
	}

	@RequestMapping(value = "product_detail/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		return "user/product_detail";
	}
	@GetMapping(params = {"product_id", "category_id"})
	public String orderProduct(@RequestParam(name = "product_id") Long productId,
			@RequestParam(name = "category_id") Long categoryId, Model model) {

		
		model.addAttribute("sizes", sizeService.findAll());
		
		return "ordering";
	}
}
