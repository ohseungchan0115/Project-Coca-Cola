package cocacola.mvc.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cocacola/footer")
public class FooterController {

    @GetMapping
    public String footerPage(@RequestParam(value = "page", required = false) String page,
                             HttpServletResponse response) throws Exception {

        if (page == null || page.isEmpty() || "sitemap".equals(page)) {
            return "cocacola/footer/sitemap"; // /WEB-INF/views/cocacola/footer/sitemap.jsp
        } else if ("gogak".equals(page)) {
            return "cocacola/footer/gogak";
        } else if ("terms_of_service".equals(page)) {
            return "cocacola/footer/terms_of_service";
        } else if ("cookie_policy".equals(page)) {
            return "cocacola/footer/cookie_policy";
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return null;
        }
    }
}
