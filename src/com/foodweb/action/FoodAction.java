package com.foodweb.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;
import javax.annotation.Resource;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.foodweb.dao.*;
import com.foodweb.model.Food;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class FoodAction extends ActionSupport {
	/*业务层对象将FoodDao注入*/
    @Resource FoodDao foodDao;
    private Food food;
    private File foodPhoto;
    private String foodPhotoFileName;
    private String foodPhotoContentType;
    private List<Food> foodList;
    private String keyWords;
	
	public File getFoodPhoto() {
		return foodPhoto;
	}

	public void setFoodPhoto(File foodPhoto) {
		this.foodPhoto = foodPhoto;
	}

	public String getFoodPhotoFileName() {
		return foodPhotoFileName;
	}

	public void setFoodPhotoFileName(String foodPhotoFileName) {
		this.foodPhotoFileName = foodPhotoFileName;
	}

	public String getFoodPhotoContentType() {
		return foodPhotoContentType;
	}

	public void setFoodPhotoContentType(String foodPhotoContentType) {
		this.foodPhotoContentType = foodPhotoContentType;
	}

	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	public List<Food> getFoodList() {
		return foodList;
	}
	public void setFoodList(List<Food> foodList) {
		this.foodList = foodList;
	}
	/*添加食物*/
	public String addFood()throws Exception {
		String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
        /*处理图片上传*/
        String foodPhotoFileName = ""; 
   	 	if(foodPhoto!= null) {
   	 		InputStream is = new FileInputStream(foodPhoto);
   			String fileContentType = this.getFoodPhotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				foodPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				foodPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				foodPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, foodPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
        if(foodPhoto != null)
        	food.setImagepath("upload/" + foodPhotoFileName);
        else
        	food.setImagepath("upload/NoImage.jpg");
        
		foodDao.addFood(food);
		return "succ";
		
	}
	

       //foodDao.addFood(food);
      // return "succ";
	
	/*显示所有食物*/
	public String showFood()throws Exception {
	       foodList=foodDao.getAllFoods();
	       return "show_view";
		}
	/*显示推荐的食物*/
	public String showHotFood()throws Exception {
	       foodList=foodDao.getHotFoods();
	       return "show_indexview";
		}
	/*显示某一食堂的食物*/
	public String showDierFood()throws Exception {
	       foodList=foodDao.getDierFoods();
	       return "show_dierview";
		}
	 /*显示某一Food的详细信息*/
    public String showDetail()throws Exception {
    	food = foodDao.getFoodById(food.getFoodid());
        return "detail_view";
    }
    /*修改food信息*/
    public String showEdit()throws Exception {
    	food = foodDao.getFoodById(food.getFoodid());
        return "edit_view";
    }
    public String editFood()throws Exception {
    	 String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
         /*处理图片上传*/
       String foodPhotoFileName = ""; 
    	 	if(foodPhoto!= null) {
    	 		InputStream is = new FileInputStream(foodPhoto);
    			String fileContentType = this.getFoodPhotoContentType();
    			System.out.println(fileContentType);
    			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
    				foodPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
    			else if(fileContentType.equals("image/gif"))
    				foodPhotoFileName = UUID.randomUUID().toString() +  ".gif";
    			else if(fileContentType.equals("image/png"))
    				foodPhotoFileName = UUID.randomUUID().toString() +  ".png";

    			File file = new File(path, foodPhotoFileName);
    			OutputStream os = new FileOutputStream(file);
    			byte[] b = new byte[1024];
    			int bs = 0;
    			while ((bs = is.read(b)) > 0) {
    				os.write(b, 0, bs);
    			}
    			is.close();
    			os.close();
    	 	}
         if(foodPhoto != null)
         	food.setImagepath("upload/" + foodPhotoFileName);
         else
         	food.setImagepath("upload/NoImage.jpg");
         
     	foodDao.updateFood(food);
         return "edit_message";
     }
    /*删除food信息*/
    public String deleteFood() throws Exception {
    	foodDao.deleteFood(food.getFoodid());
        return "delete_message";
    }
    /*查询food信息*/
    public String queryFoods()throws Exception {
    	foodList=foodDao.getFoods(keyWords);
    	return "show_view";
    			
    }
    
        public Food getFood() {
    		return food;
    	}

    	public void setFood(Food food) {
    		this.food = food;
    	}
       


}
