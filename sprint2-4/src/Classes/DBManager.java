package Classes;

import java.util.ArrayList;
import java.util.Iterator;

public class DBManager {
    public static long id = 6l;
    public static ArrayList<Task> items = new ArrayList<>();

    static {
        items.add(new Task(1L, "Создать приложение на JavaEE", "Lorem  Lorem  Lorem  Lorem  Lorem  Lorem  Lorem  Lorem  ", "20.03.2023", "No"));
        items.add(new Task(2L, "Убраться дома",  "Lore Lore Lore Lore Lore Lore Lore Lore ","25.02.2023", "No"));
        items.add(new Task(3L, "Записаться на качку", "Lorem   Lorem   Lorem   Lorem   Lorem   Lorem   Lorem   Lorem   ", "30.03.2023", "No"));
        items.add(new Task(4L, "Учить итальянский", "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ", "22.03.2023", "No"));
        items.add(new Task(5L, "Выполнить все домашнии задания", "Lore Lore Lore Lore Lore Lore Lore Lore ", "20.03.2023", "No"));
    }

    public static void editTask(Long id, Task task) {

    }

    public static void doneChange(Long id, String done){
        Task task = getTask(id);
        task.setDone(done);
    }

    public static void addTask(Task task) {
        task.setId(id);
        items.add(task);
        id++;
    }

    public static Task getTask(Long id) {
        for (Task task : items) {
            if (task.getId()==id) {
                return task;
            }
        }
        return null;
    }

    public static ArrayList<Task> getAllTasks() {
        return items;
    }

    public static void deleteTask(Long id) {
        Iterator<Task> it = items.iterator();
        while(it.hasNext()) {
            Task nxtTask = it.next();
            if (nxtTask.getId()==id) {
                it.remove();
            }
        }
    }
}
