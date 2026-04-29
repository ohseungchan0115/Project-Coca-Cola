package cocacola.mvc.controller;

import cocacola.mvc.service.SustainabilityService;
import com.yourcompany.mvc.model.vo.Content;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cocacola/Sustainability")
public class SustainabilityDetailController {

    @Autowired
    private SustainabilityService sustainabilityService;

    @GetMapping("/detail")
    public String detail(
            @RequestParam("content_id") int contentId,
            Model model) {

        Content content = sustainabilityService.getContentById(contentId);

        model.addAttribute("content", content);

        return "cocacola/Sustainability/sustainability_detail";
    }
}
