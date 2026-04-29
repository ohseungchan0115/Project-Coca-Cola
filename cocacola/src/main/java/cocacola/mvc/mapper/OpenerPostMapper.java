package cocacola.mvc.mapper;

import java.util.List;
import cocacola.mvc.domain.OpenerPostDTO;

public interface OpenerPostMapper {

    List<OpenerPostDTO> selectByCategory(int categoryId);
}
