package Classes.Models;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NewsModel {
    private Long id;

    private String title;

    private String content;

    private int languageId; // 1 - English, 2 - Русский

    private Date postDate;

    @Override
    public String toString() {
        return "NewsModel{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", languageId=" + languageId +
                ", postDate=" + postDate +
                '}';
    }

    public NewsModel() {
    }

    public NewsModel(Long id, String title, String content, int languageId, Date postDate) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.languageId = languageId;
        this.postDate = postDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public int getLanguageId() {
        return languageId;
    }

    public void setLanguageId(int languageId) {
        this.languageId = languageId;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }
}
