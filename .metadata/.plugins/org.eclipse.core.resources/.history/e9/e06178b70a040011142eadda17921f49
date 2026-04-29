package cocacola.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cocacola.mvc.domain.DetailDTO;
import cocacola.mvc.service.DetailService;

@Controller
@RequestMapping("/Discover2")
public class DetailController {

    @Autowired
    private DetailService detailService;

    @GetMapping("/detail")
    public String detail(
            @RequestParam("id") int id,
            Model model) {

        model.addAttribute(
            "detailList",
            detailService.getOpenerDetail(id)
        );

        // ❗ jsp 확장자 제거 + views 기준 경로만
        return "cocacola/Discover2/detail";
    }
}


