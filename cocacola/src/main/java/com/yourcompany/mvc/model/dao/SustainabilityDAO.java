package com.yourcompany.mvc.model.dao;

import com.yourcompany.mvc.model.vo.Section;
import com.yourcompany.mvc.model.vo.Content;
import com.yourcompany.mvc.model.vo.Document;
import com.yourcompany.mvc.model.vo.Media;
import cocacola.util.OracleConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SustainabilityDAO {

    public List<Section> getAllSections() {

        List<Section> sections = new ArrayList<>();

        String sectionQuery = "SELECT * FROM SECTION ORDER BY section_id";
        String contentQuery = "SELECT * FROM CONTENT WHERE section_id=? ORDER BY content_id";
        String mediaQuery   = "SELECT * FROM MEDIA WHERE content_id=? ORDER BY media_id";

        try (Connection conn = OracleConnection.getConnection();
             PreparedStatement psSection = conn.prepareStatement(sectionQuery);
             ResultSet rsSection = psSection.executeQuery()) {

            while (rsSection.next()) {

                /* =========================
                   SECTION
                ========================= */
                Section section = new Section();
                section.setSection_id(rsSection.getInt("section_id"));
                section.setSection_title(rsSection.getString("section_title"));
                section.setSection_subtitle(rsSection.getString("section_subtitle"));
                section.setSection_image(rsSection.getString("section_image"));

                // ✅ CLOB 처리 (핵심 수정)
                Clob sectionDescClob = rsSection.getClob("section_description");
                if (sectionDescClob != null) {
                    section.setSection_description(
                        sectionDescClob.getSubString(
                            1,
                            (int) sectionDescClob.length()
                        )
                    );
                }

                /* =========================
                   CONTENT
                ========================= */
                List<Content> contentList = new ArrayList<>();

                try (PreparedStatement psContent = conn.prepareStatement(contentQuery)) {
                    psContent.setInt(1, section.getSection_id());

                    try (ResultSet rsContent = psContent.executeQuery()) {
                        while (rsContent.next()) {

                            Content content = new Content();
                            content.setContent_id(rsContent.getInt("content_id"));
                            content.setSection_id(rsContent.getInt("section_id"));
                            content.setContent_title(rsContent.getString("content_title"));
                            content.setContent_category(rsContent.getString("content_category"));
                            content.setContent_link(rsContent.getString("content_link"));
                            content.setDetail_content_id(
                                    rsContent.getObject("detail_content_id") != null
                                        ? rsContent.getInt("detail_content_id")
                                        : null
                                );
                            // ✅ CLOB 처리 (핵심 수정)
                            Clob bodyClob = rsContent.getClob("content_body");
                            if (bodyClob != null) {
                                content.setContent_body(
                                    bodyClob.getSubString(
                                        1,
                                        (int) bodyClob.length()
                                    )
                                );
                            }

                            /* =========================
                               MEDIA
                            ========================= */
                            List<Media> mediaList = new ArrayList<>();

                            try (PreparedStatement psMedia = conn.prepareStatement(mediaQuery)) {
                                psMedia.setInt(1, content.getContent_id());

                                try (ResultSet rsMedia = psMedia.executeQuery()) {
                                    while (rsMedia.next()) {
                                        Media media = new Media();
                                        media.setMedia_id(rsMedia.getInt("media_id"));
                                        media.setContent_id(rsMedia.getInt("content_id"));
                                        media.setMedia_file_type(rsMedia.getString("media_file_type"));
                                        media.setMedia_file(rsMedia.getString("media_file"));
                                        media.setMedia_description(rsMedia.getString("media_description"));
                                        mediaList.add(media);
                                    }
                                }
                            }

                            content.setMediaList(mediaList);
                            contentList.add(content);
                        }
                    }
                }

                section.setContents(contentList);
                sections.add(section);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sections;
    }
    public List<Document> getDocumentsBySection(int sectionId) {
        List<Document> list = new ArrayList<>();

        String sql = "SELECT * FROM DOCUMENT WHERE section_id = ? ORDER BY document_date DESC";

        try (Connection conn = OracleConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, sectionId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Document doc = new Document();
                    doc.setDocument_id(rs.getInt("document_id"));
                    doc.setSection_id(rs.getInt("section_id"));
                    doc.setDocument_title(rs.getString("document_title"));
                    doc.setDocument_file(rs.getString("document_file"));
                    doc.setDocument_description(rs.getString("document_description"));
                    doc.setDocument_date(rs.getDate("document_date"));

                    list.add(doc);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
    public Content getContentById(int contentId) {

        Content content = null;

        String contentSql = "SELECT * FROM CONTENT WHERE content_id = ?";
        String mediaSql   = "SELECT * FROM MEDIA WHERE content_id = ?";

        try (Connection conn = OracleConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(contentSql)) {

            ps.setInt(1, contentId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    content = new Content();
                    content.setContent_id(rs.getInt("content_id"));
                    content.setSection_id(rs.getInt("section_id"));
                    content.setContent_title(rs.getString("content_title"));
                    content.setContent_category(rs.getString("content_category"));
                    content.setContent_link(rs.getString("content_link"));

                    Clob clob = rs.getClob("content_body");
                    if (clob != null) {
                        content.setContent_body(
                            clob.getSubString(1, (int) clob.length())
                        );
                    }
                }
            }

            /* MEDIA */
            if (content != null) {
                try (PreparedStatement psMedia = conn.prepareStatement(mediaSql)) {
                    psMedia.setInt(1, contentId);

                    try (ResultSet rsMedia = psMedia.executeQuery()) {
                        List<Media> mediaList = new ArrayList<>();
                        while (rsMedia.next()) {
                            Media media = new Media();
                            media.setMedia_id(rsMedia.getInt("media_id"));
                            media.setContent_id(rsMedia.getInt("content_id"));
                            media.setMedia_file(rsMedia.getString("media_file"));
                            media.setMedia_file_type(rsMedia.getString("media_file_type"));
                            media.setMedia_description(rsMedia.getString("media_description"));
                            mediaList.add(media);
                        }
                        content.setMediaList(mediaList);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return content;
    }

}
