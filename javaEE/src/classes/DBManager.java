package classes;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    static ArrayList<Footballer> footballers = new ArrayList<>();

    static {
        footballers.add(new Footballer(1l, "Alim1", "Raisov1", 3000000, "It", 150000));
        footballers.add(new Footballer(2l, "Alim2", "Raisov2", 4000000, "It", 1450000));
        footballers.add(new Footballer(3l, "Alim3", "Raisov3", 5000000, "It", 1550000));
        footballers.add(new Footballer(4l, "Alim4", "Raisov4", 6000000, "It", 1850000));
    }

    static  long id = 5l;
    public static void  addFootballer(Footballer footballer) {
        footballer.setId(id);
        footballers.add(footballer);
        id++;
    }
    public static ArrayList<Footballer> getAllFootballers(){
        return footballers;
    }
}
