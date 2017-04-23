package kozossegi.dao;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

import kozossegi.Labels;

public class KozossegiImageUploader 
{
	public static String upload(File file,String name)
	{
		try 
		{	
			HttpURLConnection conn = (HttpURLConnection)new URL(Labels.FILESERVER_PATH+"upload.php?name="+name).openConnection();
			conn.setReadTimeout(10000);
	        conn.setConnectTimeout(15000);
	        conn.setRequestMethod("POST");
	        conn.setUseCaches(false);
	        conn.setDoInput(true);
	        conn.setDoOutput(true);	
	        OutputStream os = conn.getOutputStream();
	        Thread.sleep(250);
	        BufferedInputStream is = new BufferedInputStream(new FileInputStream(file));
	        int totalByte=is.available();
	        for (int i = 0; i < totalByte; i++) {
	            os.write(is.read());
	        }
	        os.close();
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(
	                conn.getInputStream()));

	        String s = in.readLine();
	        /*while ((s = in.readLine()) != null) {	        	
	            return s;
	        } */
	        in.close();
	        is.close();
	        return s;
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
