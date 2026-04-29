package cocacola.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cocacola.mvc.domain.MemberDTO;
import cocacola.mvc.mapper.MemberMapper;

@Controller
@RequestMapping("/cocacola")
public class JoinController {

    @Autowired
    private MemberMapper memberMapper;

    // 회원가입 페이지 이동
    @GetMapping("/join")
    public String joinPage() {
        return "cocacola/Join";
    }

    // 회원가입 데이터 처리
    @PostMapping("/join.do")
    public String join(MemberDTO dto, RedirectAttributes rttr) {
        // DB의 member 테이블에 저장하는 메서드 호출
        memberMapper.insertMember(dto);
        
     // "userName"이라는 이름으로 사용자의 실명을 담아 보냅니다.
        rttr.addFlashAttribute("userName", dto.getUsername());

        // 가입 완료 후 로그인 페이지로 보냄
        return "redirect:/cocacola/login";
    }
    
    @PostMapping("/idCheck")
    @ResponseBody // 데이터를 페이지 이동 없이 브라우저로 직접 보냄
    public String idCheck(String userid) {
        int count = memberMapper.idCheck(userid);
        return String.valueOf(count); // "0"이면 사용 가능, "1"이면 중복
    }
}