package com.foodweb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foodweb.model.Customer;
import com.foodweb.model.Food;
import com.foodweb.model.Go;
import com.foodweb.model.Order;
@Service @Transactional
public class GoDao {
	@Resource SessionFactory factory;
	//添加购物车订单
	
	public void addGo(Go go) throws Exception{
		Session s=factory.getCurrentSession();
		s.save(go);
	}
	
	//通过id删除go的信息
	public  void deleteGo(Integer goId) throws Exception{
		Session s=factory.getCurrentSession();
		Object go=s.load(Go.class,goId);
		s.delete(go);
	}
	//更新Go
	public void updateGo(Go go) throws Exception{
		Session s=factory.getCurrentSession();
		s.update(go);
	}
	//根据主键获取对象
	public Go getGoById(int goId){
		Session s=factory.getCurrentSession();
		Go go=(Go)s.get(Go.class,goId);
		return go;
	}
	//显示所有Go
	public ArrayList<Go> getAllGos(String name){
		System.out.println("查询用户"+name+"的订单");
		Session s=factory.getCurrentSession();
		String hql="From Go go where 1=1 and go.customername='"+name+"'";
		Query q=s.createQuery(hql);
		List goList=q.list();
		return (ArrayList<Go>) goList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
