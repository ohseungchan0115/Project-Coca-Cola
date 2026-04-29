package cocacola.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Discover2")
public class CokeplayController {

    @GetMapping("/cokeplay")
    public String cokeplay() {
        return "cocacola/Discover2/cokeplay";
    }

    static {
        System.out.println("🔥 CokeplayController 로딩됨");
    }
}
