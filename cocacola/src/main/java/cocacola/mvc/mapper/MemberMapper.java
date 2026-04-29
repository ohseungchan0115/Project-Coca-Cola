package cocacola.mvc.mapper;

import org.apache.ibatis.annotations.Mapper;
import cocacola.mvc.domain.MemberDTO;

@Mapper
public interface MemberMapper {

    // 로그인
    MemberDTO login(MemberDTO dto);

    // 회원가입
    void insertMember(MemberDTO dto);

    // 아이디 중복 체크
    int idCheck(String userid);

    // 비밀번호 찾기 (아이디 + 이메일)
    MemberDTO findByIdAndEmail(MemberDTO dto);
    
 // 전화번호로 회원 조회 (아이디 찾기용)
    MemberDTO findByPhone(MemberDTO dto);
}
