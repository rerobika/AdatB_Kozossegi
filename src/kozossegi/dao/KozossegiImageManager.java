package kozossegi.dao;

import java.awt.Image;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import kozossegi.Labels;

public class KozossegiImageManager 
{
	static Map<String,Image> cache = new HashMap<String,Image>();
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
	        Thread.sleep(500);
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
	        in.close();
	        is.close();
	        return s;
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static Image download(URL file)
	{
		Image img=cache.get(file.toString());
		if(img!=null)
		{
			return img;
		}
		else
		{
			try {
				img= ImageIO.read(file);
				cache.put(file.toString(), img);
				return img;
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		
		return null;
	}
	public static Image download(String file)
	{
		Image img=cache.get(file);
		if(img!=null)
		{
			return img;
		}
		else
		{
			try {
				img= ImageIO.read(new URL(file));
				cache.put(file, img);
				return img;
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		return null;
	}
		

}
