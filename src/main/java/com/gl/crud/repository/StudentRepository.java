package com.gl.crud.repository;

import com.gl.crud.model.Student;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepository extends CrudRepository<Student,Integer> {

}
