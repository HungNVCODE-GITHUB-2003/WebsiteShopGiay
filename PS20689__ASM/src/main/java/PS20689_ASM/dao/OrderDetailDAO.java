package PS20689_ASM.dao;

import java.util.List;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import PS20689_ASM.bean.OrderDetail;
import PS20689_ASM.bean.RevenueReport;
import PS20689_ASM.bean.Top10;




public interface OrderDetailDAO  extends JpaRepository<OrderDetail, Long>{
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	Page<OrderDetail> findByOrder(Long id, Pageable pageable);
	
	
	@Query("SELECT new Top10(o.product, sum(o.quantity)) FROM OrderDetail o GROUP BY o.product ORDER BY sum(o.quantity) DESC")
	Page<Top10> getTop10(Pageable pegeable);
	
	@Query("SELECT new Top10(o.product, sum(o.quantity)) FROM OrderDetail o GROUP BY o.product ORDER BY sum(o.quantity) ASC")
	Page<Top10> getTop10ASC(Pageable pegeable);
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderID(Long orderid);
	
	@Query("Select new RevenueReport(d.product.category, sum(d.price*d.quantity), sum(d.quantity))"
			+ " from OrderDetail d Group By d.product.category")
	List<RevenueReport> getRevenueByCategory();
}
