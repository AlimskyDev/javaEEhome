package Classes.Models;

public class Page {
    private String page;

    public Page() {
    }

    public Page(String page) {
        this.page = page;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    @Override
    public String toString() {
        return "Page{" +
                "page='" + page + '\'' +
                '}';
    }
}
