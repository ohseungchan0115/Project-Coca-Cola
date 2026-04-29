package cocacola.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cocacola.mvc.domain.DetailDTO;
import cocacola.mvc.mapper.OpenerPostDetailMapper;

@Service
public class DetailService {

    @Autowired
    private OpenerPostDetailMapper mapper;

    public List<DetailDTO> getOpenerDetail(int postId) {
        return mapper.selectByPostId(postId);
    }
}

