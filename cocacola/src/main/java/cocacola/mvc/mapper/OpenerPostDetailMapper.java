package cocacola.mvc.mapper;

import java.util.List;
import cocacola.mvc.domain.DetailDTO;

public interface OpenerPostDetailMapper {
    List<DetailDTO> selectByPostId(int postId);
}

