package com.foodweb.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.foodweb.dao.CustomerDao;
import com.foodweb.dao.FoodDao;
import com.foodweb.dao.OrderDao;
import com.foodweb.dao.GoDao;
import com.foodweb.model.Go;
import com.foodweb.model.Customer;
import com.foodweb.model.Food;
import com.opensymphony.xwork2.ActionSupport;


@Controller @Scope("prototype")
public class GoAction extends ActionSupport{
	 /*业务层对象*/
   
    @Resource CustomerDao customerDao;
    
    @Resource GoDao goDao;
    
    private Customer customer;
    private Go go;
    private List<Go> goList;
    private String goId;
    private String[][] goMsg=new String[50][3];
   // private Map<String,Object> session;
    //private String[][] yn=new String[10000][2];
	public Customer getCustomer() {
		return customer;
	}
	
	public Go getGo() {
		return go;
	}
	public List<Go> getGoList() {
		return goList;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public void setGo(Go go) {
		this.go = go;
	}
	public void setGoList(List<Go> goList) {
		this.goList = goList;
	}
    
    
   
	public String getGoId() {
		return goId;
	}
	public void setGoId(String goId) {
		this.goId = goId;
	}
	
	public String[][] getGoMsg() {
		return goMsg;
	}
	public void setGoMsg(String[][] goMsg) {
		this.goMsg = goMsg;
	}
	
    
	
	/*添加Go*/
	public String addGoSucc() throws Exception{
		
		for(int i=0;i<50;i++){
			boolean a=true;
			a=Boolean.parseBoolean(goMsg[i][0]);
			if(a==true){
				Date d = new Date(); 
		        String timeSet=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d); 
		        HttpServletRequest request = ServletActionContext.getRequest();  
				Object name= request.getSession().getAttribute("User");
		        System.out.println("用户："+name);
				Go go=new Go();
				go.setCustomername(name.toString());
				go.setGoCusTotal(goMsg[i][1]);//Integer.parseInt(goMsg[i][1])
				go.setFoodname(goMsg[i][2]);
				go.setGoTime(timeSet);
				goDao.addGo(go);
				System.out.println("名称："+goMsg[i][2]);
			}	
		}
		return "succ";
	}
	
	//显示所有购物清单
	public String showAlls() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();  
		Object name= request.getSession().getAttribute("User");
        goList = goDao.getAllGos(name.toString());
	    return "showall";
	}
	 public String deleteGo() throws Exception {
	    	goDao.deleteGo(go.getGoId());
	        return "show_view";
	    }
}
