package cocacola.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cocacola.mvc.service.CreationService;

@Controller
@RequestMapping("/Discover2")
public class CreationController {

    @Autowired
    private CreationService creationService;

    @GetMapping("/creation")
    public String creation(Model model) throws Exception {

        model.addAttribute("creationList",
                creationService.getStoryListBySection("CREATION"));

        model.addAttribute("postList2",
                creationService.getStoryListBySection("RECOMMEND"));

        model.addAttribute("postList3",
                creationService.getStoryListBySection("MORE"));

        return "cocacola/Discover2/creation";
    }
}
