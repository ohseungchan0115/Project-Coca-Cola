package cocacola.mvc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cocacola.mvc.domain.BrandDTO;
import cocacola.mvc.domain.BrandVideoDTO;
import cocacola.mvc.domain.ProductDTO;
import cocacola.mvc.domain.SubBrandDTO;

@Mapper
public interface BrandMapper {

    // 브랜드 전체 목록
    List<BrandDTO> selectBrandList();

    // 브랜드 상세
    BrandDTO selectBrand(int brandId);

    // 브랜드 영상
    BrandVideoDTO selectBrandVideo(int brandId);

    // 브랜드별 제품 목록
    List<ProductDTO> selectProducts(int brandId);

    // 서브 브랜드 목록
    List<SubBrandDTO> selectSubBrands(int brandId);
}