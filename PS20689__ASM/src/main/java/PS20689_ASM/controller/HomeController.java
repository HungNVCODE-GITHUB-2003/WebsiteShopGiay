package PS20689_ASM.controller;

import java.util.List;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PS20689_ASM.bean.Product;
import PS20689_ASM.bean.Top10;
import PS20689_ASM.dao.AccountDAO;
import PS20689_ASM.dao.OrderDetailDAO;
import PS20689_ASM.dao.ProductDAO;
import PS20689_ASM.utils.CookieService;
import PS20689_ASM.utils.ParamService;
import PS20689_ASM.utils.SessionService;




@Controller
@RequestMapping("user")
public class HomeController {
	
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
	OrderDetailDAO orderDetailDAO;
	
	
	// show index
	@RequestMapping("index")
	public String shop(Model model) {
		Pageable pageable = PageRequest.of(0, 10); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		Page<Top10> topListASC = orderDetailDAO.getTop10ASC(pageable);
		List<Product> wmList = proDAO.findByCategoryHome("0000");
		model.addAttribute("WMitems", wmList);
		List<Product> mList = proDAO.findByCategoryHome("1111");
		model.addAttribute("Mitems", mList);
		model.addAttribute("topList", topList);
		model.addAttribute("topListASC",  topListASC);
		System.out.println("day ka "+wmList);
		return "user/index";
	}
	
	
	
//	
//	@RequestMapping("/report/inventory-by-category")
//	public String inventory(Model model) {
//		List<Report> items = dao.getInventoryByCategory();
//		model.addAttribute("items", items);
//		return "report/inventory-by-category";
//	}
}
