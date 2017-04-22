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
	private static HttpURLConnection conn;
	private static OutputStream os;
	private static BufferedInputStream is;
	public static String genName;
	public static String upload(File file,String name)
	{
		try 
		{	
			genName= Long.toString(new Date().getTime())+name;
			System.out.println(genName);
			conn = (HttpURLConnection)new URL(Labels.FILESERVER_PATH+"upload.php?name="+genName).openConnection();
			conn.setReadTimeout(10000);
	        conn.setConnectTimeout(15000);
	        conn.setRequestMethod("POST");
	        conn.setUseCaches(false);
	        conn.setDoInput(true);
	        conn.setDoOutput(true);	
	        os = conn.getOutputStream();
	        Thread.sleep(250);
	        is = new BufferedInputStream(new FileInputStream(file));
	        int totalByte=is.available();
	        for (int i = 0; i < totalByte; i++) {
	            os.write(is.read());
	        }
	        os.close();
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(
	                conn.getInputStream()));

	        String s = null;
	        while ((s = in.readLine()) != null) {
	            return s;
	        } 
	        in.close();
	        is.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
