package cocacola.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cocacola.mvc.domain.MemberDTO;
import cocacola.mvc.mapper.MemberMapper;

@Controller
@RequestMapping("/cocacola")
public class LoginController {

    @Autowired
    private MemberMapper memberMapper;

    @GetMapping("/login")
    public String loginPage() {
        // prefix(/WEB-INF/views/) + 리턴값 + suffix(.jsp)가 합쳐져서 
        // /WEB-INF/views/cocacola/Login.jsp 파일을 찾게 됩니다.
        return "cocacola/Login"; 
    }
    
    @PostMapping("/login.do")
    public String login(MemberDTO dto, HttpServletRequest request) {
        HttpSession session = request.getSession();
        MemberDTO result = memberMapper.login(dto);

        if (result != null) {
            // 로그인 성공 시 세션에 저장
            session.setAttribute("member", result);
            return "redirect:/cocacola/ourcompany?page=main";
        } else {
            // 로그인 실패 시
            return "redirect:/cocacola/login?error=true";
        }
    }

    @GetMapping("/logout.do")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 무효화
        return "redirect:/cocacola/ourcompany?page=main";
    }
    
}
