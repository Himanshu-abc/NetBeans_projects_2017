package pkg_common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import pkg_common.Export_bean;
//import oracle_connection_pkg.oracle_connection;


public class Export_DAO {

	static Connection conn = null;
	   static ResultSet rs = null;  
	   static PreparedStatement ps = null;
	
	   public static Export_bean export_to_xls_zip(Export_bean bean, String path ,String task){
			try{
		    conn = oracle_connection.dbconnector();
			String name = bean.getfile_name();
			
			
			if (task.equals("loader_export")){
				
				ps = conn.prepareStatement("select name site_id,addreess,"
				   		+ "phone,"
				   		+ "email,"				   		
				   		+ "comments_1 from table_student where X_FILE_NAME ='"+name+"'"); 					
				rs = ps.executeQuery();
				
			}			
			
			String datetime = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
			String path1 = path+"/validation_"+datetime+".xls";
			boolean chk = writeRecordstoexcel(rs, path1)	;

			if (chk){
				
				File file = new File(path1);
				String zipFileName = path+"/validation_"+datetime+".zip";
				System.out.println(zipFileName);
				boolean cc = zipSingleFile(file, zipFileName);
				if (cc){				
					
					bean.setZipPath(zipFileName);
					bean.setValid(true);
				}
				
			}		
			}catch(Exception e){
				bean.setValid(false);
				
			}finally{
				if (ps != null) {
			        try {
			           ps.close();
			        } catch (Exception e) {}
			           ps = null;
			        }			
			     if (conn != null) {
			        try {
			       	 conn.close();
			        } catch (Exception e) {
			        }

			        conn = null;	
			        }		
			}
			return bean;	
			
		}

	private static boolean zipSingleFile(File file, String zipFileName) {
		// TODO Auto-generated method stub
		
		try {
			// create ZipOutputStream to write to the zip file
			FileOutputStream fos = new FileOutputStream(zipFileName);
			ZipOutputStream zos = new ZipOutputStream(fos);
			// add a new Zip Entry to the ZipOutputStream
			ZipEntry ze = new ZipEntry(file.getName());
			zos.putNextEntry(ze);
			// read the file and write to ZipOutputStream
			FileInputStream fis = new FileInputStream(file);
			byte[] buffer = new byte[1024];
			int len;
			while ((len = fis.read(buffer)) > 0) {
				zos.write(buffer, 0, len);
			}
			
			// Close the zip entry to write to zip file
			zos.closeEntry();
			// Close resources
			zos.close();
			fis.close();
			fos.close();
	//		System.out.println(file.getCanonicalPath() + " is zipped to "
	//				+ zipFileName);
			return true;
			
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
				
	}

	private static boolean writeRecordstoexcel(ResultSet rs2, String path) {
		// TODO Auto-generated method stub

		try{
			
			HSSFWorkbook wb = new HSSFWorkbook();
			  //  Sheet sheet2 = wb.createSheet("Read Me");  
			//XSSFWorkbook wb = new XSSFWorkbook();			
			HSSFSheet sh = wb.createSheet("Export");
			//HSSFRow rowhead = sh.createRow((int) 0);
            Row row = null;
            
          /*  CellStyle style = wb.createCellStyle();
            style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
            style.setFillPattern(CellStyle.BIG_SPOTS);
           */
          /*  HSSFCellStyle style = (HSSFCellStyle) wb.createCellStyle();
            style.setFillForegroundColor(IndexedColors.AQUA.getIndex());
            style.setFillPattern(FillPatternType.SOLID_FOREGROUND);*/
            
            int numColumns = rs.getMetaData().getColumnCount();
            Row heading = sh.createRow(0);
            ResultSetMetaData rsmd = rs.getMetaData();
            for(int x = 0; x < numColumns; x++) {
                Cell cell = heading.createCell(x);
                cell.setCellValue(rsmd.getColumnLabel(x+1));
              //  heading.getCell(x).setCellStyle(style);
            }

            int rowNumber =1;
           // int sheetNumber = 0;
         
            while(rs.next()) {

                row = sh.createRow(rowNumber);
                for(int y = 0; y < numColumns; y++) {
                    row.createCell(y).setCellValue(rs.getString(y+1));
                   // row.setRowStyle(style);
                    
             }

                rowNumber++;
            }
            
           
           
            //Set column width to Auto
            for (int i1 = 0; i1 < numColumns ; i1++) {
            	sh.autoSizeColumn(i1);
    		}
            //Freeze top row
           sh.createFreezePane(0,1);
            
          
         //  Cell cell = row.createCell((short) 1);
         //  cell.setCellValue("X");
         
            
            FileOutputStream out = new FileOutputStream(path);
            wb.write(out);
            out.close();
          
           return true; 
			
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		//return 0;
		
	}
	
	
}
