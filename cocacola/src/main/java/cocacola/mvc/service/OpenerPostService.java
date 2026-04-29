package cocacola.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cocacola.mvc.domain.OpenerPostDTO;
import cocacola.mvc.mapper.OpenerPostMapper;

@Service
public class OpenerPostService {

	@Autowired
	private OpenerPostMapper openerPostMapper;

	public List<OpenerPostDTO> getPostListByCategory(int categoryId) throws Exception {
	    return openerPostMapper.selectByCategory(categoryId);
	}
}