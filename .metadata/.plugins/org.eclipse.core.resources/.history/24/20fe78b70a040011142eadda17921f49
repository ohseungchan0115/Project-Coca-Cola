package cocacola.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cocacola.mvc.domain.MemberDTO;
import cocacola.mvc.mapper.MemberMapper;

@Controller
@RequestMapping("/cocacola")
public class FindIdController {

    @Autowired
    private MemberMapper memberMapper;

    // 아이디 찾기 페이지 이동
    @GetMapping("/FindId")
    public String findIdPage() {
        return "cocacola/FindId"; // JSP 이름
    }

    // 아이디 찾기 처리
    @PostMapping("/FindId")
    public String findId(MemberDTO dto, Model model) {

        // 입력 전화번호에서 하이픈 제거
        if(dto.getPhone() != null) {
            dto.setPhone(dto.getPhone().replace("-", ""));
        }

        // 전화번호로 회원 조회
        MemberDTO member = memberMapper.findByPhone(dto);

        if (member == null) {
            model.addAttribute("msg", "등록된 전화번호가 없습니다.");
            model.addAttribute("success", false);
            return "cocacola/FindId";
        }

        model.addAttribute("msg", "회원님의 아이디는 " + member.getUserid() + " 입니다.");
        model.addAttribute("success", true);

        return "cocacola/FindId";
    }
}
