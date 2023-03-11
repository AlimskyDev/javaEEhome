package db;
import item.Item;
import java.util.ArrayList;
public class DBManager {
    public static ArrayList<Item> items = new ArrayList<>();

    public static Long id = 4l;

    static {
        items.add(new Item(1l, "name1", 1.3, 10));
        items.add(new Item(2l, "name2", 2.3, 20));
        items.add(new Item(3l, "name3", 3.3, 30));
    }

    public static ArrayList<Item> getItems() {
        return items;
    }

    public static void addNewItem(Item item) {
        item.setId(id);
        items.add(item);
        id++;
    }
    public static Item getItem(Long id){
        for (Item it: items) {
            if (it.getId()==id){
                return it;
            }
        }
        return null;
    }
}
