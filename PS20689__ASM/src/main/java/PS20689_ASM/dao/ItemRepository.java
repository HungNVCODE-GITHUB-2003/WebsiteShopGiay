package PS20689_ASM.dao;



import org.springframework.data.jpa.repository.JpaRepository;

import PS20689_ASM.bean.Item;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {

}
