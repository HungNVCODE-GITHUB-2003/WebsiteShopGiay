package PS20689_ASM.service;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import PS20689_ASM.bean.Size;
import PS20689_ASM.dao.SizeRepository;

import java.util.List;

@Service
public class SizeService {

	@Autowired
	private SizeRepository sizeRepository;
	
	public List<Size> findAll() {
		return sizeRepository.findAll();
	}
	
	public Size findById(Long id) {
		return sizeRepository.findById(id).orElseThrow(() -> {
			throw new RuntimeException("not found id "+id);
		});
	}

    public void submit(Size size) {
		sizeRepository.save(size);
    }

    public void delete(Long id) {
		sizeRepository.deleteById(id);
	}
}
