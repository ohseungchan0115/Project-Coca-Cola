package cocacola.mvc.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import cocacola.mvc.domain.OurCompanyDTO;

@Mapper // MyBatis Mapper 인터페이스임을 명시
public interface OurCompanyMapper {
    
    // 메서드 이름이 Mapper XML의 id와 일치해야 합니다.
    List<OurCompanyDTO> selectAllContents();
}

