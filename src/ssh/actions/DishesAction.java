package ssh.actions;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.catalina.core.ApplicationContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import ssh.entries.Dishes;
import ssh.entries.PageShow;
import ssh.service.ClassifyService;
import ssh.service.DishesService;

public class DishesAction extends ActionSupport implements RequestAware,
 ModelDriven<Dishes>, Preparable,SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private DishesService dishesService;
	private ClassifyService classifyService;
	
	public void setDishesService(DishesService dishesService) {
		this.dishesService = dishesService;
	}
	
	public void setClassifyService(ClassifyService classifyService) {
		this.classifyService = classifyService;
	}
	
	public String  list(){
		session.put("dishess", dishesService.getAll());
		return "list";
	}
	public String dishesList(){
		session.put("dishess", dishesService.getAll());
		return "dishesList";
	}
	
	private Integer id;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	private InputStream inputStream;
	
	public InputStream getInputStream() {
		return inputStream;
	}
	
	
	public String delete(){
		try {
			dishesService.delete(id);
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
		}
		return "delete";
	}
	
	public String input(){
		request.put("classifies", classifyService.getAll());
		return INPUT;
	}
	
	public void prepareInput(){
		if(id!= null){
			model = dishesService.get(id);
		}
	}
	
	public String save() throws IOException{
		System.out.println(image);
		System.out.println(imageFileName);
		System.out.println(imageContentType);
		if(imageFileName!=null&&imageFileName.length()!=0){
			Random random=new Random(99999);
			int tempInt = random.nextInt();
			Date datenew=new Date();
			SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyyMMddhhmmss");
			int last=imageFileName.lastIndexOf(".");
			String head=imageFileName.substring(0, last);
			String type=imageFileName.substring(last);
			imageFileName = simpleDateFormat.format(datenew)+tempInt+type;
			System.out.println("新的文件名称："+imageFileName);
		}
		String realPath = "D:\\backstage\\workspace\\ssh-3\\WebContent\\imageUpload\\"+imageFileName;
		System.out.println(realPath);
		FileOutputStream outputStream = new FileOutputStream(realPath);
		FileInputStream inputStream =new FileInputStream(image);
		byte[] buffer = new byte[1024];
		int len = 0;
		while((len = inputStream.read(buffer))!=-1){
			outputStream.write(buffer,0,len);
		}
		outputStream.close();
		inputStream.close();
		realPath = "http://localhost:8080/ssh-3/imageUpload/"+imageFileName;
		model.setImagePath(realPath);
	
		dishesService.saveOrUpdate(model);
		return SUCCESS;
	}
	
	public void prepareSave(){
		model = new Dishes();
	}
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

	@Override
	public void prepare() throws Exception {}
	
	private Dishes model;
	
	@Override
	public Dishes getModel() {
		return model;
	}
	
	private File image;
	private String imageFileName;
	private String imageContentType;
	
//	private Dishes dishes;
//	
//	public Dishes getDishes() {
//		return dishes;
//	}
	
	
	public File getImage() {
		return image;
	}
	public void setImage(File image) {
		this.image = image;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public String getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	
	
	
	
	//选购商品加入到购物车
	public String add() {
		 Map<String, Object> session = ActionContext.getContext().getSession();
		  List<Integer> ay = null;
		  // 如果session中从未写入过，则将建立的商品对象添加到ArrayList对象当中，并写入 session
		  if ((List<Integer>) session.get("car") == null) {
		  ay = new ArrayList<Integer>();
		  ay.add(id);
		  session.put("car", ay);
		 
		  return "addCarOK";
		 
		  }
		  // 如果写如过，则将商品对象添加到ArrayList对象当中，并写入 session
		  else {
		  ay = ( List <Integer>) session.get("car");
		  // 如果ArrayList 对象为空，则直接添加到ArrayList对象当中
		  if (ay.isEmpty()) {
		  ay.add(id);
		  session.put("car", ay);
		 
		  return "addCarOK";
		 
		  }
		  // 如果ArrayList 对象不为空，则判断购入商品是否已经存在于车中
		  else {
		 
		  if (!ay.contains(id)) {
		 
		  ay.add(id);
		  session.put("car", ay);
		 
		  return "addCarOK";
		 
		  } else {
		 
		  return "addCarOK";
		  }
		 
		  }
		  }
		 
		  
	}
	
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}
	
	
//	private Set<Dishes> carList = new HashSet<>();
//	
//	Map<Integer, Dishes> map=new HashMap<Integer, Dishes>();
//	
//	Map<Integer, Dishes> sessionMapList=(Map<Integer, Dishes>) ActionContext.getContext().getSession().get("sessionMapList");
//	Set<Dishes> sessionCarList= (Set<Dishes>) ActionContext.getContext().getSession().get("sessionCarList");
//	
//	public String addCar(){
//		if(sessionMapList==null){
//			Dishes dishes=new Dishes();
//			dishes=dishesService.get(id);
//			map.put(id, dishes);
//			ActionContext.getContext().getSession().put("sessionMapList", map);
//			carList.add(map.get(id));
//			sessionCarList.add(map.get(id));
//			session.put("sessionCarList", carList);
//			return "addCarOK";
//		}else{
//			if(sessionMapList.containsKey(id)){
//				Dishes dishes=new Dishes();
//				dishes=dishesService.get(id);
//				sessionMapList.get(id).setSum(sessionMapList.get(id).getSum()+1);
//				sessionMapList.get(id).setTotal(sessionMapList.get(id).getTotal().add(dishes.getPrice()));
//				session.put("sessionMapList", sessionMapList);
//				
//				sessionCarList.add(sessionMapList.get(id));
//				carList.addAll(sessionCarList);
//				session.put("sessionCarList", carList);
//				return "addCarOK";
//			}
//			else{
//				Dishes dishes=new Dishes();
//				dishes=dishesService.get(id);
//				sessionMapList.put(id, dishes);
//				ActionContext.getContext().getSession().put("sessionMapList", sessionMapList);
//			
//				sessionCarList.add(dishes);
//				carList.addAll(sessionCarList);
//				session.put("sessionCarList", carList);
//				return "addCarOK";
//			}
//		}
//		
//		
//		
//		
//	}
//	
	
	
	
	List<Dishes> carList=new ArrayList<Dishes>();
	List<Integer> listId =new ArrayList<>();
	public String addCar(){
		
		if(ActionContext.getContext().getSession().get("carList")==null){
			
			Dishes dishes =new Dishes();
			dishes=dishesService.get(id);
			dishes.setSum(1);
			dishes.setTotal(dishes.getPrice());
			carList.add(dishes);
			session.put("carList", carList);
			return "addCarOK";
		}
		
		else{
			carList=(List<Dishes>) ActionContext.getContext().getSession().get("carList");
			if(carList.contains(dishesService.get(id))){
				return "alreadyExist";
			}
			else{
				Dishes dishes =new Dishes();
				dishes=dishesService.get(id);
				dishes.setSum(1);
				dishes.setTotal(dishes.getPrice());
				carList.add(dishes);
				return "addCarOK";
				
			}
		}
		
			
	}
	
	public String deleteCar(){
		carList=(List<Dishes>) ActionContext.getContext().getSession().get("carList");
		Dishes dishes;
		dishes=dishesService.get(id);
		Dishes dishes2 = new Dishes();
		 carList.remove(dishes);
		return "deleteCar";
	}
	
	public String cleanCar(){
		Map session=ActionContext.getContext().getSession();
		session.remove("carList");
		return "cleanCar";
	}
	
	private String dishes;

	public String getDishes() {
		return dishes;
	}

	public void setDishes(String dishes) {
		this.dishes = dishes;
	}
	
	public String fuzzyQuery(){
		if(dishes==null||dishes.length()==0){
			request.put("dishess", dishesService.getAll());
			return "fuzzy";
		}
		else{
			request.put("dishess", dishesService.fuzzyQuery(dishes));
			return "fuzzy";
		}
		
	}
	
	public String synopsis(){
		session.put("dishesSynopsis", dishesService.get(id));
		return "synopsis";
	}
	
	private int pageNow = 1;// 动态改变 页面取得  
    private int pageSize = 5;// 固定不变  
  
    public String getAllDishes() {  
        List dishess = this.dishesService.getAllDishes(pageNow, pageSize);  
        if (dishess.size() > 0) {// 菜品列表  
            session.put("dishess", dishess);// 保存在session  
            PageShow page = new PageShow(pageNow, dishesService.findDishesSize(), pageSize);// 实例化分页对象  
            request.put("page", page);// 保存到request  
            return "dishesList";  
        }  
        return "error";  
    }  
  
      
  
  
  
    public int getPageSize() {  
        return pageSize;  
    }  
  
    public void setPageSize(int pageSize) {  
        this.pageSize = pageSize;  
    }  
  
    public int getPageNow() {  
        return pageNow;  
    }  
  
    public void setPageNow(int pageNow) {  
        this.pageNow = pageNow;  
    }  
	
}
