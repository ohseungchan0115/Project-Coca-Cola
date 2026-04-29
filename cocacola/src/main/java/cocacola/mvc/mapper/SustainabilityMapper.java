package cocacola.mvc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yourcompany.mvc.model.vo.Section;
import com.yourcompany.mvc.model.vo.Content;
import com.yourcompany.mvc.model.vo.Document;

@Mapper
public interface SustainabilityMapper {

    List<Section> getAllSectionsWithMedia();

    List<Document> getDocumentsBySection(int sectionId);

    Content getContentById(int contentId);

}
