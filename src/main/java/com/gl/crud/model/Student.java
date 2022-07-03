package com.gl.crud.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to Country table in database
 */
@Entity
@Table(name="student")
public class Student{

    @Id
    @Column(name="STUDENT_ID")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    int id;

    @Column(name="STUDENT_NAME")
    String name;

    @Column(name="DEPARTMENT")
    String department;

    @Column(name="COUNTRY")
    String country;

    public Student() {
        super();
    }
    public Student(int id, String name, String department, String country) {
        super();
        this.id = id;
        this.name=name;
        this.department=department;
        this.country=country;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }

}