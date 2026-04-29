package cocacola.mvc.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cocacola.mvc.domain.OriginalsDTO;
import cocacola.mvc.mapper.OriginalsMapper;
@Controller
@RequestMapping("/cocacola")
public class OriginalsController {

    @Autowired
    private OriginalsMapper originalsMapper;

    @GetMapping("/originals")
    public String showOriginals(
            @RequestParam(value = "id", required = false) Integer id,
            Model model) throws SQLException {

        // 1️⃣ id가 있으면 상세 페이지 리턴
        if (id != null) {
            // 상세 데이터 조회 (필요하면 dao.selectById(id) 등 구현)
            // 현재는 바로 상세 JSP 이름 리턴
            return "cocacola/Discover1/originalsView_" + id;
        }

        // 2️⃣ 목록 페이지 처리
        List<OriginalsDTO> allStories = originalsMapper.selectAll();

        OriginalsDTO main1 = null;
        OriginalsDTO main2 = null;
        List<OriginalsDTO> section = new ArrayList<>();
        OriginalsDTO main3 = null;
        List<OriginalsDTO> favStories = new ArrayList<>();
        OriginalsDTO main4 = null;
        List<OriginalsDTO> recStories = new ArrayList<>();
        OriginalsDTO main5 = null;

        if (allStories != null && !allStories.isEmpty()) {
            for (int i = 0; i < allStories.size(); i++) {
                OriginalsDTO originals = allStories.get(i);

                if (i == 0) main1 = originals;
                else if (i == 1) main2 = originals;
                else if (i <= 3) section.add(originals);
                else if (i == 4) main3 = originals;
                else if (i <= 10) favStories.add(originals);
                else if (i == 11) main4 = originals;
                else if (i <= 14) recStories.add(originals);
                else if (i == 15) main5 = originals;
            }
        }

        model.addAttribute("main1", main1);
        model.addAttribute("main2", main2);
        model.addAttribute("section", section);
        model.addAttribute("main3", main3);
        model.addAttribute("favStories", favStories);
        model.addAttribute("main4", main4);
        model.addAttribute("recStories", recStories);
        model.addAttribute("main5", main5);

        return "cocacola/Discover1/Originals";
    }
}
