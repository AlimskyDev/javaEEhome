package studentsExam.exam.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import studentsExam.exam.Model.Student;
import studentsExam.exam.db.db;

import java.util.ArrayList;

@Controller
public class Controllers {
    @GetMapping("/")
    public String home(Model model){
        ArrayList<Student> students = db.getStudents();
        model.addAttribute("students", students);
        return "/home";
    }
    @PostMapping("/addStudent")
    public String addStudent(@RequestParam String name,
                             @RequestParam String surname,
                             @RequestParam String exam){
        Student student = new Student(null, name, surname, Integer.parseInt(exam), "");
        db.addStudent(student);
        return "redirect:/";
    }
}
