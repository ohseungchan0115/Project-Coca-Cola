package cocacola.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cocacola.mvc.domain.BrandDTO;
import cocacola.mvc.domain.BrandVideoDTO;
import cocacola.mvc.domain.ProductDTO;
import cocacola.mvc.domain.SubBrandDTO;
import cocacola.mvc.mapper.BrandMapper;

@Controller
@RequestMapping("/cocacola")
public class BrandDetailController {

    @Autowired
    private BrandMapper brandMapper;

    @GetMapping("/brandDetail")
    public String process(
            @RequestParam("brandId") int brandId,
            @RequestParam(value = "tab", defaultValue = "home") String tab,
            Model model) throws Exception {

        BrandDTO brand = brandMapper.selectBrand(brandId);
        if (brand == null) {
            return "error/404";
        }

        BrandVideoDTO video = brandMapper.selectBrandVideo(brandId);
        if (video != null) {
            brand.setYoutubeVideoId(video.getYoutubeVideoId());
            brand.setVideoDescription(video.getVideoDescription());
            brand.setVideoThumbnailUrl(video.getVideoThumbnailUrl());
        }

        List<ProductDTO> products = brandMapper.selectProducts(brandId);
        brand.setProducts(products);

        if (brandId != 9) {
            List<SubBrandDTO> subBrands = brandMapper.selectSubBrands(brandId);
            model.addAttribute("subBrands", subBrands);
        }

        model.addAttribute("brand", brand);

        if (brandId == 1) {
            if ("products".equals(tab)) {
                return "cocacola/brands/cocacolaProducts";
            }
            return "cocacola/brands/cocacolaHomeAndProduct";
        } else if (brandId == 8) {
            return "cocacola/brands/georgiaDetail";
        } else if (brandId == 9) {
            return "cocacola/brands/minutemaidHome";
        } else {
            return "cocacola/brands/brandDetail";
        }
    }
}
