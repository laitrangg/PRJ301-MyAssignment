/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author My PC
 */
public class Term {

    private int tearmId;
    private Semester semester;
    private Year year;

    public Term() {
    }

    public Term(int tearmId, Semester semester, Year year) {
        this.tearmId = tearmId;
        this.semester = semester;
        this.year = year;
    }

    public int getTearmId() {
        return tearmId;
    }

    public void setTearmId(int tearmId) {
        this.tearmId = tearmId;
    }

    public Semester getSemester() {
        return semester;
    }

    public void setSemester(Semester semester) {
        this.semester = semester;
    }

    public Year getYear() {
        return year;
    }

    public void setYear(Year year) {
        this.year = year;
    }

}
