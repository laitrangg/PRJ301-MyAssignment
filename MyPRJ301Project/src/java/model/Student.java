/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author My PC
 */
public class Student {

    private String id;
    private String name;
    private ArrayList<Group> groups = new ArrayList<>();
    private ArrayList<Attendance> atts = new ArrayList<>();

    public Student() {
    }

    public Student(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public ArrayList<Attendance> getAttendances() {
        return atts;
    }

    public void setAttendances(ArrayList<Attendance> attendances) {
        this.atts = atts;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", groups=" + groups + ", atts=" + atts + '}';
    }
}
