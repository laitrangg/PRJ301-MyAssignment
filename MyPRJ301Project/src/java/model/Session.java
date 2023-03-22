/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author My PC
 */
public class Session {

    private int id;
    private Lecturer lecturer;
    private Room room;
    private TimeSlot timeslot;
    private Date date;
    private Group group;
    private int index;
    private boolean attended;
    private Student student;
    private ArrayList<Attendance> attendances = new ArrayList<>();

    public Session() {
    }

    public Session(int id, Lecturer lecturer, Room room, TimeSlot timeslot, Date date, Group group, int index, boolean attended, Student student) {
        this.id = id;
        this.lecturer = lecturer;
        this.room = room;
        this.timeslot = timeslot;
        this.date = date;
        this.group = group;
        this.index = index;
        this.attended = attended;
        this.student = student;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public TimeSlot getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(TimeSlot timeslot) {
        this.timeslot = timeslot;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public boolean isAttended() {
        return attended;
    }

    public void setAttended(boolean attended) {
        this.attended = attended;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public ArrayList<Attendance> getAttendances() {
        return attendances;
    }

    public void setAttendances(ArrayList<Attendance> attendances) {
        this.attendances = attendances;
    }

    @Override
    public String toString() {
        return "Session{" + "id=" + id + ", lecturer=" + lecturer + ", room=" + room + ", timeslot=" + timeslot + ", date=" + date + ", group=" + group + ", index=" + index + ", attended=" + attended + ", attendances=" + attendances + '}';
    }

}
