package org;

import java.sql.*;
import java.io.*;

public class Attachment {
    
   private int id;
   private String FileName;
   private Blob FileData;
   private String description;
    
    public Attachment(){                          //
    }                                             //

    Attachment(int id, String FileName, Blob FileData, String description) {
        this.id=id;
        this.FileName=FileName;
        this.FileData=FileData;
        this.description=description;
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
     
    public Blob getFileData(){
        return FileData;
    }
    
    public void setFileData(Blob FileData){
        this.FileData=FileData;
    }
    
    public String getdescription() {
        return description;
    }
    
    public void setdescription() {
        this.description=description;
    }
            
   // Object getFileData() {
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    //}
    
}
