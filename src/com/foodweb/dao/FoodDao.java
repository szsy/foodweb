package com.foodweb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.foodweb.model.Food;
@Service @Transactional
public class FoodDao {
	@Resource SessionFactory factory;
	 /*添加Food信息*/
    public void addFood(Food food) throws Exception {
    	Session s = factory.getCurrentSession();
    	s.save(food);
    }
    /*通过id来删除Food信息*/
    public void deleteFood (Integer foodid) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object food = s.load(Food.class, foodid);
        s.delete(food);
    }
    /*更新Food信息*/
    public void updateFood(Food food) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(food);
    }
    /*根据名字获取对象*/
    public Food getFoodByName(String foodname) {
        Session s = factory.getCurrentSession();
        Food food = (Food)s.get(Food.class, foodname);
        return food;
    }
    /*根据主键获取对象*/
    public Food getFoodById(int foodid) {
        Session s = factory.getCurrentSession();
        Food food = (Food)s.get(Food.class, foodid);
        return food;
    }
    @Transactional(propagation=Propagation.NOT_SUPPORTED)
    /*显示所有食物*/
    public ArrayList<Food> getAllFoods() {
        Session s = factory.getCurrentSession();
        String hql = "From Food";
        Query q = s.createQuery(hql);
        List foodList = q.list();
        return (ArrayList<Food>) foodList;
    }
    /*显示部分符合的食物*/
    public ArrayList<Food> getHotFoods() {
        Session s = factory.getCurrentSession();
        String hql = "From Food food where hot=1";
        
        Query q = s.createQuery(hql);
        List foodList = q.list();
        return (ArrayList<Food>) foodList;
    }
    public ArrayList<Food> getDierFoods() {
        Session s = factory.getCurrentSession();
        String hql = "From Food food where kind='第二食堂'";
        Query q = s.createQuery(hql);
        List foodList = q.list();
        return (ArrayList<Food>) foodList;
    }
    
    public ArrayList<Food> getFoods(String foodname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Food food where 1=1";/*如果关键字为空，实现全表查询，防止报错*/
    	if(!foodname.equals("")) hql = hql + " and food.foodname like '%" + foodname + "%'";
    	                                    /*food就是指代Food，注意小写！*/
    	Query q = s.createQuery(hql);
    	List foodList = q.list();
    	return (ArrayList<Food>) foodList;
    }
}
