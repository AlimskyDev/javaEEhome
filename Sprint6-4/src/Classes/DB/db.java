package Classes.DB;

import Classes.Models.LanguageMenu;
import Classes.Models.NewsModel;
import Classes.Models.Page;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class db {
    public static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/db_news",
                    "postgres",
                    "postgres"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addNewNews(NewsModel newNews) {
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "insert into news_db(title, content, language, post_date) " +
                    "values (?,?,?,?)");
            statement.setString(1, newNews.getTitle());
            statement.setString(2, newNews.getContent());
            statement.setInt(3, newNews.getLanguageId());
            statement.setDate(4, (java.sql.Date) newNews.getPostDate());
            statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static NewsModel getNewsModel(Long id) {
        NewsModel news = null;
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "select * from news_db where id = ?"
            );
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Long idd = resultSet.getLong("id");
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                Date date = resultSet.getDate("post_date");
                int lang = resultSet.getInt("language");

                news = new NewsModel(idd, title, content, lang, date);
            }
            statement.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return news;
    }

    public static ArrayList<NewsModel> getNewsAll() {
        ArrayList<NewsModel> newsAll = new ArrayList<NewsModel>();
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "select * from news_db"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                NewsModel news = new NewsModel();

                news.setId(resultSet.getLong("id"));
                news.setTitle(resultSet.getString("title"));
                news.setPostDate(resultSet.getDate("post_date"));
                news.setLanguageId(resultSet.getInt("language"));

                newsAll.add(news);
            }
            statement.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return newsAll;
    }

    public static ArrayList<NewsModel> getNewsRu() {
        ArrayList<NewsModel> newsRu = new ArrayList<NewsModel>();
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "select * from news_db " +
                    "WHERE language IN ('2')"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                NewsModel news = new NewsModel();

                news.setId(resultSet.getLong("id"));
                news.setTitle(resultSet.getString("title"));
                news.setContent(resultSet.getString("content"));
                news.setPostDate(resultSet.getDate("post_date"));

                newsRu.add(news);
            }
            statement.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return newsRu;
    }

    public static ArrayList<NewsModel> getNewsEn() {
        ArrayList<NewsModel> newsEn = new ArrayList<NewsModel>();
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "select * from news_db " +
                    "WHERE language IN ('1')"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                NewsModel news = new NewsModel();

                news.setId(resultSet.getLong("id"));
                news.setTitle(resultSet.getString("title"));
                news.setContent(resultSet.getString("content"));
                news.setPostDate(resultSet.getDate("post_date"));

                newsEn.add(news);
            }
            statement.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return newsEn;
    }

    public static LanguageMenu language(String lang) {
        LanguageMenu reLanguage = null;
        if (lang.equals("en")) {
            String language = "en";

            String title = "News.com";
            String adminPanel = "Admin panel";
            String adminAddNewsBtn = "To add new news";

            String adminTableHeadTitle = "Title";
            String adminTableHeadPosted = "Posted";
            String adminTableHeadLanguage = "Language";
                String adminTableLanguageRu = "Russian";
                String adminTableLanguageEn = "English";
            String adminTableHeadDetails = "Details";
            String adminTableDetailsBtn = "Details";

            String adminModalTitle = "Add new news";
            String adminModalInputTitle = "title";
            String adminModalInputContent = "content...";

            String adminModalInputChangeLanguage = "Change language";
            String adminModalInputChangeLanguageOptionRu = "Russian";
            String adminModalInputChangeLanguageOptionEn = "English";

            String adminModalCloseBtn = "Close";
            String adminModalSubmitBtn = "Add news";

            reLanguage = new LanguageMenu(
                language,
                title,
                adminPanel,
                adminAddNewsBtn,
                adminTableHeadTitle,
                adminTableHeadPosted,
                adminTableHeadLanguage,
                adminTableLanguageRu,
                adminTableLanguageEn,
                adminTableHeadDetails,
                adminTableDetailsBtn,
                adminModalTitle,
                adminModalInputTitle,
                adminModalInputContent,
                adminModalInputChangeLanguage,
                adminModalInputChangeLanguageOptionRu,
                adminModalInputChangeLanguageOptionEn,
                adminModalCloseBtn,
                adminModalSubmitBtn);

        }
        if (lang.equals("ru")) {
            String language = "ru";

            String title = "Новости.ру";
            String adminPanel = "Админ панель";
            String adminAddNewsBtn = "Добавить новость";

            String adminTableHeadTitle = "Заголовок";
            String adminTableHeadPosted = "Размещено";

            String adminTableHeadLanguage = "Язык";
            String adminTableLanguageRu = "Русский";
            String adminTableLanguageEn = "Английский";

            String adminTableHeadDetails = "Датали";
            String adminTableDetailsBtn = "Подробнее";

            String adminModalTitle = "Добавить новость";
            String adminModalInputTitle = "заголовок";
            String adminModalInputContent = "контент";
            String adminModalInputChangeLanguage = "Выберите язык";
            String adminModalInputChangeLanguageOptionRu = "Русский";
            String adminModalInputChangeLanguageOptionEn = "Английский";

            String adminModalCloseBtn = "Закрыть";
            String adminModalSubmitBtn = "Добавить новость";

            reLanguage = new LanguageMenu(
                    language,
                    title,
                    adminPanel,
                    adminAddNewsBtn,
                    adminTableHeadTitle,
                    adminTableHeadPosted,
                    adminTableHeadLanguage,
                    adminTableLanguageRu,
                    adminTableLanguageEn,
                    adminTableHeadDetails,
                    adminTableDetailsBtn,
                    adminModalTitle,
                    adminModalInputTitle,
                    adminModalInputContent,
                    adminModalInputChangeLanguage,
                    adminModalInputChangeLanguageOptionRu,
                    adminModalInputChangeLanguageOptionEn,
                    adminModalCloseBtn,
                    adminModalSubmitBtn);
        }
        return reLanguage;
    }

    public static void pageAdmin(Page page) {
        page.setPage("admin");
    }public static void pageHome(Page page) {
        page.setPage("home");
    }
}
