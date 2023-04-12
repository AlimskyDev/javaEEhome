import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
//В словаре employee поменяйте зарплату сотрудника John на 300000.
//        employee = {
//        'employee1': Employee('name': 'Sam', 'age': 35, 'salary': 400000),
//        'employee2': Employee('name': 'Anna', 'age': 29, 'salary': 350000),
//        'employee3': Employee('name': 'John', 'age': 25, 'salary': 250000)
//        }
//        Вывод:
//        employee = {
//        'employee1': Employee('name': 'Sam', 'age': 35, 'salary': 400000),
//        'employee2': Employee('name': 'Anna', 'age': 29, 'salary': 350000),
//        'employee3': Employee('name': 'John', 'age': 25, 'salary': 300000)
//        }
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Map<String, Integer> employeeAgeSalary = new HashMap<>();
        employeeAgeSalary.put("age", 350000);
        employeeAgeSalary.put("salary", 400000);

        Map<String, String> employeeName = new HashMap<>();
        employeeName.put("name", "Sam");

        Map<Map, Map> employeeNameAgeSalary = new HashMap<>();
        employeeNameAgeSalary.put(employeeName, employeeAgeSalary);

        Map<String, Map> employee1 = new HashMap<>();
        employee1.put("Employee1", employeeNameAgeSalary);

        for (Map.Entry<String, Map> entry:
             employee1.entrySet()) {
            System.out.println(entry.getKey() + " " + entry.getValue());
        }











    }
}
