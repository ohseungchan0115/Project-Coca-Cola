package cocacola.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cocacola.mvc.domain.OpenerCategoryDTO;
import cocacola.mvc.domain.OpenerPostDTO;
import cocacola.mvc.service.OpenerPostService;
import cocacola.mvc.service.OpenerService;

@Controller
@RequestMapping("/Discover2")
public class OpenerController {

    @Autowired
    private OpenerService openerService;

    @Autowired
    private OpenerPostService postService;

    @GetMapping("/opener")
    public String opener(Model model) throws Exception {

        model.addAttribute("categoryList", openerService.getCategoryList());
        model.addAttribute("postList", postService.getPostListByCategory(1));
        model.addAttribute("postList2", postService.getPostListByCategory(2));
        model.addAttribute("postList3", postService.getPostListByCategory(3));

        return "cocacola/Discover2/opener";
    }
}
