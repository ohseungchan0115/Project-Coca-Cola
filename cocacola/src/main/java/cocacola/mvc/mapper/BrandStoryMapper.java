package cocacola.mvc.mapper;

import java.util.List;
import cocacola.mvc.domain.BrandStoryDTO;

public interface BrandStoryMapper {
    // 전체 목록 조회
    List<BrandStoryDTO> selectAll();

    // 상세 조회
    BrandStoryDTO selectById(int id);
}