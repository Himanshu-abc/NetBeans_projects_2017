package org;

import java.sql.*;
import java.io.*;

public class Attachment {
    
   private int id;
   private String FileName;
   private String username;
   private String department;
   private int student_year;
   private Blob assignment;
  
    
    public Attachment(){                          //
    }                                             //

    Attachment(int id, String FileName,String username,String department,int student_year, Blob assignment) {
        
        this.id=id;
        this.FileName=FileName;
        this.username=username;
        this.department=department;
        this.student_year=student_year;
        this.assignment=assignment;
    }
    
    public int getid(){
        return id;
    }
    
    public void setid(int id) {
        this.id=id;
    }

    public String getFileName() {
        return FileName;
    }
    
    public void setFileName(String FileName){
        this.FileName=FileName;
    }
    
    public String getusername(){
            return username;
    }
    
    public void setusername(String username){
        this.username=username;
    }
    
    
    public String getdepartment() {
        return department;
    }
    
    public void setdepartment(String department) {
        this.department=department;
    }
    
    public int getstudent_year(){
        return student_year;
    }
    
    public void setstudent_year(int student_year) {
        this.student_year=student_year;
    }
     
    public Blob getassignment(){
        return assignment;
    }
    
    public void setFileData(Blob FileData){
        this.assignment=assignment;
    }
    
    
            
   // Object getFileData() {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    //}
    
}
