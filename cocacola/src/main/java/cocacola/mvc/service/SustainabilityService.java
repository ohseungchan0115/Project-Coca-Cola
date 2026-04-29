package cocacola.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yourcompany.mvc.model.vo.Content;
import com.yourcompany.mvc.model.vo.Document;
import com.yourcompany.mvc.model.vo.Section;

import cocacola.mvc.mapper.SustainabilityMapper;

@Service
public class SustainabilityService {

    @Autowired
    private SustainabilityMapper sustainabilityMapper;

    /**
     * Sustainability 전체 섹션 조회
     */
    public List<Section> getAllSections() {
        return sustainabilityMapper.getAllSectionsWithMedia();
    }

    /**
     * 특정 섹션의 문서 조회
     */
    public List<Document> getDocumentsBySection(int sectionId) {
        return sustainabilityMapper.getDocumentsBySection(sectionId);
    }

    /**
     * Content 단건 조회 (Media 포함)
     */
    public Content getContentById(int contentId) {
        return sustainabilityMapper.getContentById(contentId);
    }
}
