package cocacola.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cocacola.mvc.domain.CreationStoryDTO;
import cocacola.mvc.mapper.CreationMapper;

@Service
public class CreationService {

    @Autowired
    private CreationMapper mapper;

    public List<CreationStoryDTO> getStoryListBySection(String sectionType) {
        return mapper.selectBySectionType(sectionType);
    }
}
