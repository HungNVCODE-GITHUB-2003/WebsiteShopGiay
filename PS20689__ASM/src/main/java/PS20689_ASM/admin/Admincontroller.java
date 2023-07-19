package PS20689_ASM.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PS20689_ASM.bean.Product;
import PS20689_ASM.bean.Report;
import PS20689_ASM.bean.ReportCategory;
import PS20689_ASM.dao.CategoryDAO;
import PS20689_ASM.dao.ProductDAO;
import PS20689_ASM.utils.SessionService;




@Controller
@RequestMapping("admin")
public class Admincontroller {

	
	@Autowired
	ProductDAO dao;
	
	@Autowired
	SessionService session;
	

	
//	// Top 10 hang ton kho
//	@RequestMapping("inventory-by-category")
//	public String inventory(Model model) {
//		List<ReportCategory> items = dao.getReportCategory();
//		model.addAttribute("items", items);
//		return "admin/inventory-by-category";
//	}
	 
	
	@RequestMapping("inventory-by-category")
	public String inventory(Model model) {
		List<ReportCategory> items = dao.getReportCategory();
		model.addAttribute("items", items);
		return "admin/inventory-by-category";
	}
	
	@RequestMapping("index")
	public String inventory1(Model model) {
		List<ReportCategory> items = dao.getReportCategory();
		model.addAttribute("items", items);
		return "admin/index";
	}
	
	

}
