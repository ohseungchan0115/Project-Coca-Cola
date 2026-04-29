package cocacola.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cocacola.mvc.domain.CokeMealDTO;
import cocacola.mvc.mapper.CokeMealMapper;

@Controller
@RequestMapping("/cocacola")
public class CokeMealController {

    @Autowired
    private CokeMealMapper cokeMealMapper;

    // 404 에러 방지를 위해 경로에 /Discover1를 포함시켰습니다.
    @GetMapping("/cokemeal") 
    public String cokeMeal(
            @RequestParam(value = "id", required = false) Integer id, 
            Model model) { // throws 구문은 MyBatis 사용 시 생략 가능합니다.

        /* 1️⃣ 상세 페이지 요청 처리 */
        if (id != null) {
            // id가 있을 때는 해당 상세 뷰 반환 (예: cokeMealView_8.jsp)
            return "cocacola/Discover1/cokemealView_" + id;
        }

        /* 2️⃣ 목록 페이지 요청 처리 */
        List<CokeMealDTO> allStories = cokeMealMapper.selectAll();

        List<CokeMealDTO> cardStories1 = new ArrayList<>();
        List<CokeMealDTO> guide = new ArrayList<>();
        List<CokeMealDTO> cardStories2 = new ArrayList<>();
        List<CokeMealDTO> cardStories2_1 = new ArrayList<>();
        List<CokeMealDTO> another = new ArrayList<>();

        if (allStories != null && !allStories.isEmpty()) {
            for (int i = 0; i < allStories.size(); i++) {
                CokeMealDTO cokemeal = allStories.get(i);
                if (i <= 1) {
                    cardStories1.add(cokemeal);
                } else if (i <= 3) {
                    guide.add(cokemeal);
                } else if (i <= 5) {
                    cardStories2.add(cokemeal);
                } else if (i == 6) {
                    cardStories2_1.add(cokemeal);
                } else {
                    another.add(cokemeal);
                }
            }
        }

        model.addAttribute("cardStories1", cardStories1);
        model.addAttribute("guide", guide);
        model.addAttribute("cardStories2", cardStories2);
        model.addAttribute("cardStories2_1", cardStories2_1);
        model.addAttribute("another", another);

        return "cocacola/Discover1/Coke_Meal";
    }
}