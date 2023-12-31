package PS20689_ASM.dao;

import java.util.List;




import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import PS20689_ASM.bean.Product;
import PS20689_ASM.bean.Report;
import PS20689_ASM.dao.ProductDAO;
import PS20689_ASM.bean.ReportCategory;




public interface ProductDAO extends JpaRepository<Product, Integer>{
	
	@Query("SELECT p FROM Product p WHERE p.category.id='1007'")
	List<Product> findByCategoryId();
	
	@Query("SELECT p FROM Product p WHERE p.category.name=?1")
	List<Product> findByCategoryId(String category);
	
	@Query("SELECT o FROM Product o WHERE o.name like %?1%")
	List<Product> findByName(String name);
	
	
	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	//@Query(value = "SELECT * FROM Products WHERE price BETWEEN ?1 AND ?2", nativeQuery =true )
	//List<Product> findByPrice(double minPrice, double maxPrice);
	
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	Page<Product> findByPrice(Integer minPrice, Integer maxPrice, Pageable pageable);
	
	
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN 0 AND 3000000")
	Page<Product> findByPrice1( Pageable pageable);

	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	
	@Query("SELECT o FROM Product o WHERE o.category.id = ?1")
	Page<Product> findByCategory(String id, Pageable pageable);

	
	
	
	@Query("SELECT o FROM Product o WHERE o.category.id = ?1")
	List<Product> findByCategoryHome(String id);
	
	@Query("SELECT new ReportCategory(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<ReportCategory> getReportCategory();
	
	
	
	
}
