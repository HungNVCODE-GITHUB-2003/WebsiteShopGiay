
package PS20689_ASM.admin;

import java.util.Date;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PS20689_ASM.bean.Category;
import PS20689_ASM.bean.Product;
import PS20689_ASM.dao.CategoryDAO;
import PS20689_ASM.dao.ProductDAO;




@RequestMapping("admin")
@Controller
public class SProductController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/product")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p,@RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		Pageable pageable = PageRequest.of(p.orElse(0), 5,sort);
		Page<Product> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/productList";
	}
	
	@RequestMapping("/productControl")
	public String control(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		return "admin/productControl";
	}

	@RequestMapping("/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/productControl";
	}
	
	@RequestMapping("/product/create")
	public String create(Product item) {
		item.setCreateDate(new Date());
		dao.save(item);
		return "redirect:/admin/productControl";
	}
	
	@RequestMapping("/product/delete/{id}")
	public String create(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/admin/product";
	}
	
	@RequestMapping("/product/update")
	public String update(Product item) {
		dao.save(item);
		return "redirect:/admin/product/edit/" + item.getId();
	}
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.findAll();
		return categories;
	}
	
	
	
	@ModelAttribute("availables")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Stocking");
		map.put(false, "Out of Stock");
		return map;
	}
}
