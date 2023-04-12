package studentsExam.exam.db;

import studentsExam.exam.Model.Student;

import java.util.ArrayList;

public class db {
    public static ArrayList<Student> students = new ArrayList<>();

    static {
        students.add(new Student(1L, "Анна", "Иванова", 90, "A"));
        students.add(new Student(2L, "Иван", "Петров", 80, "B"));
        students.add(new Student(3L, "Мария", "Сидорова", 75, "B-"));
        students.add(new Student(4L, "Алексей", "Козлов", 40, "F"));
        students.add(new Student(5L, "Елена", "Смирнова", 95, "A+"));
        students.add(new Student(6L, "Дмитрий", "Федоров", 70, "C"));
        students.add(new Student(7L, "Ольга", "Ткачук", 60, "C-"));
        students.add(new Student(8L, "Максим", "Коваленко", 45, "F"));
        students.add(new Student(9L, "Андрей", "Лебедев", 75, "B-"));
        students.add(new Student(10L, "Ксения", "Никитина", 85, "B+"));
        students.add(new Student(11L, "Никита", "Марченко", 65, "D"));
        students.add(new Student(12L, "Екатерина", "Шевченко", 90, "A"));
        students.add(new Student(13L, "Артем", "Кравченко", 80, "B"));
        students.add(new Student(14L, "Алина", "Жукова", 70, "C"));
        students.add(new Student(15L, "Даниил", "Мельников", 75, "B-"));
    }

    public static ArrayList<Student> getStudents(){
        return students;
    }

    static Long id = 16L;
    public static void addStudent(Student student){
        student.setId(id);
        if (student.getExam()>=90) {
            student.setMark("A");
        } else if (student.getExam()>=75 && student.getExam()<=89){
            student.setMark("B");
        } else if (student.getExam()>=60 && student.getExam()<=74) {
            student.setMark("C");
        } else if (student.getExam()>=50 && student.getExam()<=59) {
            student.setMark("D");
        } else {
            student.setMark("F");
        }
        students.add(student);
        id++;
    }
}
