package PS20689_ASM.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import PS20689_ASM.bean.Account;
import PS20689_ASM.bean.Product;
import PS20689_ASM.bean.OrderDetail;
import PS20689_ASM.bean.CartItem;
import PS20689_ASM.bean.Order;
import PS20689_ASM.dao.OrderDAO;
import PS20689_ASM.dao.OrderDetailDAO;



@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	public Order order (Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for(CartItem item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
