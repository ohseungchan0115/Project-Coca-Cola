package com.yourcompany.mvc.model.vo;

import java.util.Date;

public class Document {

    private int document_id;
    private int section_id;
    private String document_title;
    private String document_file;
    private String document_description;
    private Date document_date;

    public int getDocument_id() { return document_id; }
    public void setDocument_id(int document_id) { this.document_id = document_id; }

    public int getSection_id() { return section_id; }
    public void setSection_id(int section_id) { this.section_id = section_id; }

    public String getDocument_title() { return document_title; }
    public void setDocument_title(String document_title) { this.document_title = document_title; }

    public String getDocument_file() { return document_file; }
    public void setDocument_file(String document_file) { this.document_file = document_file; }

    public String getDocument_description() { return document_description; }
    public void setDocument_description(String document_description) { this.document_description = document_description; }

    public Date getDocument_date() { return document_date; }
    public void setDocument_date(Date document_date) { this.document_date = document_date; }
}
