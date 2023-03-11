package kz.javee.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DBManager {
    public static List<Items> items = new ArrayList<>();

    public static Long id = 5L;

    static {
        items.add(new Items(1l, "Name1", 111, 10));
        items.add(new Items(2l, "Name2", 222, 20));
        items.add(new Items(3l, "Name3", 333, 30));
        items.add(new Items(4l, "Name4", 444, 40));
    }

    public static void addItem(Items item) {
        item.setId(id);;
        items.add(item);
        id++;
    }

    public static List<Items> getItems(){
        return items;
    }

    public static Items getItem(Long id){
        for (Items it : items) {
            if (it.getId()==id) {
                return it;
            }
        }
        return null;
    }
    public static void deleteItem(Long id) {
        Iterator<Items> iterator = items.iterator();
        while (iterator.hasNext()) {
            Items it = iterator.next();
            if (it.getId() == id) {
                iterator.remove();
            }
        }
    }
}
