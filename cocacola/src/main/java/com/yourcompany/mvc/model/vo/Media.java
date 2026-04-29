package com.yourcompany.mvc.model.vo;

public class Media {
    private int media_id;
    private int content_id;
    private String media_file_type;
    private String media_file;
    private String media_description;

    // getters & setters
    public int getMedia_id() { return media_id; }
    public void setMedia_id(int media_id) { this.media_id = media_id; }
    public int getContent_id() { return content_id; }
    public void setContent_id(int content_id) { this.content_id = content_id; }
    public String getMedia_file_type() { return media_file_type; }
    public void setMedia_file_type(String media_file_type) { this.media_file_type = media_file_type; }
    public String getMedia_file() { return media_file; }
    public void setMedia_file(String media_file) { this.media_file = media_file; }
    public String getMedia_description() { return media_description; }
    public void setMedia_description(String media_description) { this.media_description = media_description; }
}
