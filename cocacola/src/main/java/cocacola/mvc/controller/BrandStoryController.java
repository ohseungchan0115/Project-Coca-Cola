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

import cocacola.mvc.domain.BrandStoryDTO;
import cocacola.mvc.mapper.BrandStoryMapper;

@Controller
@RequestMapping("/cocacola")
public class BrandStoryController {

    @Autowired
    private BrandStoryMapper brandStoryMapper;

    @GetMapping("/brandstory")  // 요청 URL: /cocacola/brandstory
    public String brandStory(
            @RequestParam(value = "id", required = false) Integer id,
            Model model) throws SQLException {

        /* 1️⃣ 상세 페이지 요청 처리 */
        if (id != null) {
            // id가 있을 때는 해당 상세 뷰 반환
            return "cocacola/Discover1/brandStoryView_" + id;
        }

        /* 2️⃣ 목록 페이지 요청 처리 */
        List<BrandStoryDTO> allStories = brandStoryMapper.selectAll();

        List<BrandStoryDTO> mainStories = new ArrayList<>();
        List<BrandStoryDTO> recommendStories = new ArrayList<>();
        List<BrandStoryDTO> moreStories = new ArrayList<>();

        for (int i = 0; i < allStories.size(); i++) {
            if (i <= 3) {
                mainStories.add(allStories.get(i));
            } else if (i <= 7) {
                recommendStories.add(allStories.get(i));
            } else {
                moreStories.add(allStories.get(i));
            }
        }

        model.addAttribute("mainStories", mainStories);
        model.addAttribute("recommendStories", recommendStories);
        model.addAttribute("moreStories", moreStories);

        return "cocacola/Discover1/BrandStory";
    }
}
