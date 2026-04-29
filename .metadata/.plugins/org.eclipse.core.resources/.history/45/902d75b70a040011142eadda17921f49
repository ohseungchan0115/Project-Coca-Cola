package cocacola.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.http.HttpStatus;

@Controller
public class BrandStoryDetailController {

    @GetMapping("/cocacola/brandStoryDetail")
    public String brandStoryDetail(@RequestParam(value = "id", required = true) Integer id) {

        if (id == null) {
            // 파라미터 없으면 400 Bad Request 에러 발생
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Missing id parameter");
        }

        // 기존 JSP 경로를 그대로 사용한다고 가정
        return "cocacola/Discover1/brandStoryView_" + id;
    }
}
