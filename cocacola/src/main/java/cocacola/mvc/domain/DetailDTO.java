package cocacola.mvc.domain;

import java.util.Date;

public class DetailDTO {

    private int detailId;
    private int postId;

    private String blockType;    // TEXT / IMAGE
    private String title;        // TEXT일 때 제목
    private String content;      // TEXT 본문 (CLOB)
    private String imageUrl;     // IMAGE 경로
    private int displayOrder;    // 출력 순서
    private Date createdAt;      // ✅ 추가 (DB 컬럼)

    /* ===== Getter / Setter ===== */

    public int getDetailId() {
        return detailId;
    }
    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public int getPostId() {
        return postId;
    }
    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getBlockType() {
        return blockType;
    }
    public void setBlockType(String blockType) {
        this.blockType = blockType;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public String getImageUrl() {
        return imageUrl;
    }
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public int getDisplayOrder() {
        return displayOrder;
    }
    public void setDisplayOrder(int displayOrder) {
        this.displayOrder = displayOrder;
    }

    public Date getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}
