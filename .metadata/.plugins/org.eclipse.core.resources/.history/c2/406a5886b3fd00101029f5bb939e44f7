package cocacola.mvc.domain;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BrandDTO {

    private int brandId;
    private String brandName;
    private String brandLogoUrl;
    private String brandDescription;
    private String brandOrigin;
    private String brandMainphotoUrl;

    // 연관 객체 리스트
    private List<ProductDTO> products;
    private List<SubBrandDTO> subBrands;

    private String videoDescription;
    private String youtubeVideoId;
    private String brandCategories;
    private String videoThumbnailUrl;

    // brandCategories가 null일 경우 빈 문자열 반환하는 로직 유지
    public String getBrandCategories() {
        return brandCategories == null ? "" : brandCategories;
    }
}