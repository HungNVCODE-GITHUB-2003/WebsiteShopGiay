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
import PS20689_ASM.dao.AccountDAO;
import PS20689_ASM.dao.ProductDAO;
import PS20689_ASM.utils.CookieService;
import PS20689_ASM.utils.ParamService;
import PS20689_ASM.utils.SessionService;




@Controller
@RequestMapping("user")
public class ProductController {

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
	
	@RequestMapping("product")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p
			, @RequestParam("field") Optional<String> field ) {

//		Pageable pageable = PageRequest.of(p.orElse(0), 9);
//		Page<Product> page = proDAO.findAll(pageable);
//		int currentPage = 1;
//		int totalItems = page.getNumberOfElements();
//		int totalPages = page.getTotalPages();
//		model.addAttribute("totalItems", totalItems);
//		model.addAttribute("totalPages", totalPages);
//		model.addAttribute("currentPage", currentPage);
//		model.addAttribute("page", page);
//		return "user/product";
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findAll(pageable);
		model.addAttribute("page", page);
//		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
//		model.addAttribute("field", field.orElse("price").toUpperCase());
//		List<Product> items = proDAO.findAll(sort);
//		model.addAttribute("items", items);
		return "user/product";
	}
	
	
	

	// Submit lọc theo hãng
		@RequestMapping("brand")
		public String locBrand(Model model, @RequestParam("field1") Optional<String> field1,
				@RequestParam("p") Optional<Integer> p) {
			String field = field1.orElse(sessionService.get("field1"));
			sessionService.set("field1", field);
			Pageable pageable = PageRequest.of(p.orElse(0), 9);
			Page<Product> page = proDAO.findByCategory(field, pageable);
			model.addAttribute("page", page);
			return "user/brandFilterPD";
		}
		
		
		@RequestMapping("sort")
		public String sort(Model model, @RequestParam("field") Optional<String> field) {
			Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
			model.addAttribute("field", field.orElse("price").toUpperCase());
			List<Product> items = proDAO.findAll(sort);
			model.addAttribute("items", items);
			return "user/sort";
		}
		
		
//		@RequestMapping("list")
//		public String list(Model model) {				
//			List<Product> items = proDAO.findByCategoryId();
//			model.addAttribute("items", items);
//			return "user/searchKQPD";	
//		}
//		
//		@RequestMapping("list")
//		public String list(Model model, @RequestParam("name")String name) {		
//			System.out.print("name: "+name);
//			if(name=="") {
//				List<Product> items = proDAO.findAll();
//				model.addAttribute("items", items);
//			}else {
//				List<Product> items = proDAO.findByCategoryId(name);	
//				model.addAttribute("items", items);
//			}	
//			return "user/searchKQPD";	
//		}
		
		
		
//		//-----------------------------------------
//		// Truy xuat tat ca cac trang
//		@RequestMapping("/product/page")
//		public String paginate(Model model,
//				@RequestParam("p") Optional<Integer> p) {
//			Pageable pageable = PageRequest.of(p.orElse(0), 5);
//			Page<Product> page = dao.findAll(pageable);
//			model.addAttribute("page", page);
//			return "product/page";
//		}

		// Submit theo khoang gia
		@RequestMapping("price")
		public String searchGia(Model model, @RequestParam("min") Optional<Integer> min,
				@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
			Integer minPrice = min.orElse(Integer.MIN_VALUE);
			Integer maxPrice = max.orElse(Integer.MAX_VALUE);
			sessionService.set("max", maxPrice);
			sessionService.set("min", minPrice);
			Pageable pageable = PageRequest.of(p.orElse(0),6);
			Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
			model.addAttribute("page", page);
			return "user/priceFilterPD";

			
			
		}
		
		/*
		 * // Submit theo khoang gia
		 * 
		 * @RequestMapping("price1") public String searchGia1(Model
		 * model, @RequestParam("p") Optional<Integer> p) { Pageable pageable =
		 * PageRequest.of(p.orElse(0), 999); Page<Product> page =
		 * proDAO.findByPrice1(pageable); model.addAttribute("page", page); return
		 * "user/priceFilterPD";
		 * 
		 * }
		 */
		
			
		
		//-----------------------------------------
		// tìm kiếm sản phẩm theo tên và kết hợp với phân trang các sản phẩm
		
//		@RequestMapping("search")
//		public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
//				@RequestParam("p") Optional<Integer> p) {
//			String kwords = kw.orElse(sessionService.get("keywords"));
//			sessionService.set("keywords", kwords);
//			Pageable pageable = PageRequest.of(p.orElse(0), 9);
//			Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
//			model.addAttribute("page", page);
//			return "home/searchKQPD";
//		}
		
		@RequestMapping("search")
		public String searchAndPage(Model model, 
				@RequestParam("keywords") Optional<String> kw,
				@RequestParam("p") Optional<Integer> p) {
			String keywords = kw.orElse(sessionService.get("keywords", ""));
			sessionService.set("keywords", keywords);
			Pageable pageable = PageRequest.of(p.orElse(0),6);
			Page<Product> page = proDAO.findByKeywords("%"+keywords+"%", pageable);
			//Page<Product> page = dao.findAllByNameLike("%"+keywords+"%", pageable);
			model.addAttribute("page", page);
			return "user/searchKQPD";
		}
		
		
		//-----------------------------------------
//		// Top 10 hang ton kho
//		@RequestMapping("/report/inventory-by-category")
//		public String inventory(Model model) {
//			List<Report> items = dao.getInventoryByCategory();
//			model.addAttribute("items", items);
//			return "report/inventory-by-category";
//		}
}
