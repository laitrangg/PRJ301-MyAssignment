/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author My PC
 */
public class Attendance {

    private Student student;
    private Session session;
    private boolean present;
    private String description;
    private Date record_time;

    public Attendance() {
    }

    public Attendance(Student student, Session session, boolean present, String description, Date record_time) {
        this.student = student;
        this.session = session;
        this.present = present;
        this.description = description;
        this.record_time = record_time;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getRecord_time() {
        return record_time;
    }

    public void setRecord_time(Date record_time) {
        this.record_time = record_time;
    }
    
    @Override
    public String toString() {
        return "Attendance{" + "student=" + student + ", session=" + session + ", present=" + present + ", description=" + description + ", record_time=" + record_time + '}';
    }

}
