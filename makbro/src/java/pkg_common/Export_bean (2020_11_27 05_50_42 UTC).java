package pkg_common;

public class Export_bean {
	public boolean valid;
	private String file_name;
	private String zip_path;
	
	 public String getfile_name() {	 
		 return file_name;		
		 }	  
	 public void setfile_name(String name) {
		 file_name = name;		
		 }
	
	 public String getZipPath() {	 
		 return zip_path;		
		 }	  
	 public void setZipPath(String path) {
		 zip_path = path;		
		 }
	 
	public boolean isValid() {
	       return valid;
		}

	    public void setValid(boolean newValid) {
	       valid = newValid;
		}
	
	
}
