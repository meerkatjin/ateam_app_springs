package vision;

public class VisionVO {
	private long user_id;
	private int content_list_id;
	private String content_nm, content_ty;
	private String shelf_life_start, shelf_life_end;
	private double x1, y1, x2, y2;
	private String image_name, image_path;
	private String product_id;	//제품 아이디 저장 ㅇㅅㅇ
	private int content_check;
	private int checkCount;
	private String device_token;
	
	public int getCheckCount() {
		return checkCount;
	}
	public void setCheckCount(int checkCount) {
		this.checkCount = checkCount;
	}
	public String getDevice_token() {
		return device_token;
	}
	public void setDevice_token(String device_token) {
		this.device_token = device_token;
	}
	public int getContent_check() {
		return content_check;
	}
	public void setContent_check(int content_check) {
		this.content_check = content_check;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public int getContent_list_id() {
		return content_list_id;
	}
	public void setContent_list_id(int content_list_id) {
		this.content_list_id = content_list_id;
	}
	public String getContent_nm() {
		return content_nm;
	}
	public void setContent_nm(String content_nm) {
		this.content_nm = content_nm;
	}
	public String getContent_ty() {
		return content_ty;
	}
	public void setContent_ty(String content_ty) {
		this.content_ty = content_ty;
	}
	public String getShelf_life_start() {
		return shelf_life_start;
	}
	public void setShelf_life_start(String shelf_life_start) {
		this.shelf_life_start = shelf_life_start;
	}
	public String getShelf_life_end() {
		return shelf_life_end;
	}
	public void setShelf_life_end(String shelf_life_end) {
		this.shelf_life_end = shelf_life_end;
	}
	public double getX1() {
		return x1;
	}
	public void setX1(double x1) {
		this.x1 = x1;
	}
	public double getY1() {
		return y1;
	}
	public void setY1(double y1) {
		this.y1 = y1;
	}
	public double getX2() {
		return x2;
	}
	public void setX2(double x2) {
		this.x2 = x2;
	}
	public double getY2() {
		return y2;
	}
	public void setY2(double y2) {
		this.y2 = y2;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
}
