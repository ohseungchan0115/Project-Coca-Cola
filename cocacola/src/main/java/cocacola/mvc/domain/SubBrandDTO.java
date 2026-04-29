package cocacola.mvc.domain;

public class SubBrandDTO {

    private int subBrandId;
    private int brandId;
    private String subBrandName;
    private String subBrandLogoUrl;

    private Integer representativeProductId;
    
    public Integer getRepresentativeProductId() {
        return representativeProductId;
    }

    public void setRepresentativeProductId(Integer representativeProductId) {
        this.representativeProductId = representativeProductId;
    }
    
    public int getSubBrandId() {
        return subBrandId;
    }
    public void setSubBrandId(int subBrandId) {
        this.subBrandId = subBrandId;
    }

    public int getBrandId() {
        return brandId;
    }
    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getSubBrandName() {
        return subBrandName;
    }
    public void setSubBrandName(String subBrandName) {
        this.subBrandName = subBrandName;
    }

    public String getSubBrandLogoUrl() {
        return subBrandLogoUrl;
    }
    public void setSubBrandLogoUrl(String subBrandLogoUrl) {
        this.subBrandLogoUrl = subBrandLogoUrl;
    }
    
    
    
    
}
