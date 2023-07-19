package PS20689_ASM.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import PS20689_ASM.bean.Order;
import PS20689_ASM.bean.Account;
import PS20689_ASM.bean.OrderDetail;
import PS20689_ASM.dao.OrderDetailDAO;
import PS20689_ASM.service.CheckOutService;
import PS20689_ASM.service.ShoppingCartService;
import PS20689_ASM.utils.ParamService;
import PS20689_ASM.utils.SessionService;



@Controller
@RequestMapping("user")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CheckOutService checkOutService;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "user/checkout";
	}
	
	@RequestMapping("order_detail")
	public String orderdetail(Model model) {
		String address = paramService.getString("address", "");
		if(!shoppingCartService.getItems().isEmpty()) {
			if(address.equals("")) {
				return "redirect: user/checkout";
			}
			Account user = sessionService.get("user");
			Order order = checkOutService.order(user, address);
			List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items",items);
			return "user/order_detail";
		}
		return "redirect:/user/index";
	}
}
