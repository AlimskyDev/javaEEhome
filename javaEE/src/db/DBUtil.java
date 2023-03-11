package db;

import item.Item;

import javax.print.PrintException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DBUtil {
    private static Connection connection;

    static  {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/g111_db",
                    "postgres",
                    "postgres"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Item> getItems() {
        List<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "select * from items i order by i.price DESC");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Item item = new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getDouble("price"));
                item.setAmount(resultSet.getInt("amount"));

                items.add(item);
            }
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public static  void addItem(Item item){
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "insert into items(name, price, amount)" +
                    "values (?,?,?)");
            statement.setString(1, item.getName());
            statement.setDouble(2, item.getPrice());
            statement.setInt(3, item.getAmount());
            statement.executeQuery();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
