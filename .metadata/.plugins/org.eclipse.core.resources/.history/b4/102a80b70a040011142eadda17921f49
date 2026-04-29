package cocacola.mvc.controller;

import com.yourcompany.mvc.model.vo.Document;
import com.yourcompany.mvc.model.vo.Section;
import cocacola.mvc.service.SustainabilityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/sustainability")
public class SustainabilityController {

    @Autowired
    private SustainabilityService sustainabilityService;

    @GetMapping
    public String sustainability(Model model) {

        // ① 기존 섹션 데이터
        List<Section> sections =
                sustainabilityService.getAllSections();

        List<Document> waterDocs =
                sustainabilityService.getDocumentsBySection(3);

        // ② request → model
        model.addAttribute("sections", sections);
        model.addAttribute("waterDocs", waterDocs);

        // ③ JSP forward (ViewResolver)
        return "cocacola/Sustainability/sustainability";
    }
}
