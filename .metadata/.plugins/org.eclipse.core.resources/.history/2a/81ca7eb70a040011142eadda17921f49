package cocacola.mvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cocacola.mvc.domain.OurCompanyDTO;
import cocacola.mvc.mapper.BrandMapper;
import cocacola.mvc.mapper.OurCompanyMapper;
import cocacola.mvc.domain.BrandDTO;

@Controller
@RequestMapping("/cocacola")
public class OurCompanyController {

    // 1. 기존 DAO 대신 Mapper 인터페이스를 주입받습니다.
    @Autowired
    private OurCompanyMapper ourCompanyMapper;

    @Autowired
    private BrandMapper brandMapper;

    @GetMapping("/ourcompany")
    public String process(
        @RequestParam(value = "page", defaultValue = "main") String page,
        Model model
    ) throws Exception {

        // 2. Mapper를 통해 데이터를 가져와 모델에 담습니다.
        // ourCompanyMapper.selectAllContents() 메서드는 XML의 id="selectAllContents"와 연결됩니다.
        model.addAttribute("items", ourCompanyMapper.selectAllContents());
        model.addAttribute("mainBrands", brandMapper.selectBrandList());

        // 3. 페이지 값에 따른 뷰 경로 리턴
        switch (page) {
            case "since":
                // WEB-INF/views/cocacola/ourcompany/since_01.jsp 로 이동
                return "cocacola/ourcompany/since_01";
            case "main":
                // WEB-INF/views/cocacola/ourcompany/main_01.jsp 로 이동
                return "cocacola/ourcompany/main_01";
            case "company":
                // URL 파라미터가 page=company일 때를 대비해 명시적으로 관리하면 좋습니다.
                return "cocacola/ourcompany/ourcompany_01";
            default:
                // 기본값: WEB-INF/views/cocacola/ourcompany/ourcompany_01.jsp
                return "cocacola/ourcompany/ourcompany_01";
        }
    }
}