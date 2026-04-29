package cocacola.mvc.domain;

public class ProductDTO {
    private int productId;
    private int brandId;
    private Integer subBrandId;  // null 가능하므로 Integer 사용
    private String productName;
    private String productVolume;
    private String productImageUrl;
    private String productDescription;

    // getter/setter
    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public int getBrandId() { return brandId; }
    public void setBrandId(int brandId) { this.brandId = brandId; }

    public Integer getSubBrandId() { return subBrandId; }
    public void setSubBrandId(Integer subBrandId) { this.subBrandId = subBrandId; }

    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }

    public String getProductVolume() { return productVolume; }
    public void setProductVolume(String productVolume) { this.productVolume = productVolume; }

    public String getProductImageUrl() { return productImageUrl; }
    public void setProductImageUrl(String productImageUrl) { this.productImageUrl = productImageUrl; }

    public String getProductDescription() { return productDescription; }
    public void setProductDescription(String productDescription) { this.productDescription = productDescription; }
}
