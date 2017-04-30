package kozossegi.bean;

import java.awt.Image;
import java.net.URL;

import kozossegi.dao.KozossegiImageManager;

public class KozossegiImage {
	Image image;	
	URL url;
	int postid;
	int size;
	public KozossegiImage(URL url, int postid) {
		super();
		this.image = KozossegiImageManager.download(url).getScaledInstance(256, 256, Image.SCALE_FAST);
		this.url = url;
		this.postid = postid;
		this.size=KozossegiImageManager.getSize(url);
	}
	public KozossegiImage(URL url,int postid,Image img)
	{
		super();
		this.image = KozossegiImageManager.download(url);
		this.url = url;
		this.postid = postid;
		this.image = img;
		//		
		this.size=KozossegiImageManager.getSize(url);
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public Image getImage() {
		return image;
	}
	public void setImage(Image image) {
		this.image = image;
	}
	public URL getUrl() {
		return url;
	}
	public void setUrl(URL url) {
		this.url = url;
	}
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
	}
}
