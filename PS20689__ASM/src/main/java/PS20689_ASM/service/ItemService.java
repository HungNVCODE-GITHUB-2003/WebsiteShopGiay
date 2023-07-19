package PS20689_ASM.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PS20689_ASM.bean.Item;
import PS20689_ASM.dao.ItemRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ItemService {

	@Autowired
	private ItemRepository itemRepository;

	public List<Item> findAll() {
		return itemRepository.findAll();
	}

	
}
