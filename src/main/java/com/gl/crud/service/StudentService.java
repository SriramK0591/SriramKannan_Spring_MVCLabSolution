package com.gl.crud.service;


import java.util.ArrayList;
        import java.util.Iterator;
        import java.util.List;
        import com.gl.crud.repository.StudentRepository;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;
        import org.springframework.transaction.annotation.Transactional;
        import com.gl.crud.model.Student;

@Service("studentService")
public class StudentService {

    @Autowired
    StudentRepository studentRepository;

    @Transactional
    public List getAllStudents() {
        List students=new ArrayList();
        Iterable studentsIterable=studentRepository.findAll();
        Iterator studentsIterator=studentsIterable.iterator();
        while(studentsIterator.hasNext())
        {
            students.add(studentsIterator.next());
        }
        return students;
    }

    @Transactional
    public Student getStudent(int id) {
        return studentRepository.findOne(id);
    }

    @Transactional
    public void addStudent(Student student) {
        studentRepository.save(student);
    }

    @Transactional
    public void updateStudent(Student student) {
        studentRepository.save(student);

    }

    @Transactional
    public void deleteStudent(int id) {
        studentRepository.delete(id);
    }
}