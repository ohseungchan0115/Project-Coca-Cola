package cocacola.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cocacola.mvc.domain.OpenerCategoryDTO;
import cocacola.mvc.mapper.OpenerCategoryMapper;

@Service
public class OpenerService {

	@Autowired
	private OpenerCategoryMapper openerCategoryMapper;

	public List<OpenerCategoryDTO> getCategoryList() throws Exception {
	    return openerCategoryMapper.selectCategoryList();
	}
}
