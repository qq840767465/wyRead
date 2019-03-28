package com.dao;

import java.util.List;

import javax.print.DocFlavor.STRING;

import com.pojo.Book;
import com.pojo.User;
import com.sun.jndi.url.dns.dnsURLContext;
import com.util.DButil;

public class UserDao {

	//根据用户id的到用户名字，用于书的评论信息显示
	public String findnamebyid(String uid){
		String sql = "select uname from user where uid = ?";
		List<User> list = DButil.query(User.class, sql, uid);
		String name = list.get(0).getUname();
		return name;
	}
	
	//登录
	public User denglu(String uid,String password){
		String sql = "select uname,uid from user where uid = ? and upassword = ?";
		List<User> users = DButil.query(User.class, sql, uid,password);
		if (users.size()>0) {
			return users.get(0);
		}
		else return null;
	}
	
	//查找所有用户信息，后台显示
	public List<User> findall(int page,int size){
		String sql = "select uid,uname,upassword,uphone,uIDNO from user limit ?,?";
		List<User> list = DButil.query(User.class, sql,(page-1)*size,size);
		return list;
	}
	
	//得到总条数
	public int getCount() {
		String sql = "select count(*) from user";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
	
	//删除用户信息
	public void delyonghu(String uid){
		String sql = "delete from user where uid = ?";
		int n = DButil.zsg(sql, uid);
		if(n==0)
			System.out.println("该用户不能删除");
	}
	//修改用户
	public void updateyonghu(String uname,String upassword,String uphone,String uid){
		String sql = "update user set uname=?,upassword=?,uphone=? where uid = ?";
		DButil.zsg(sql, uname,upassword,uphone,uid);
	}
	//新增用户
	public void insertyonghu(String uid,String uname,String upassword,String uIDNO,String uphone){
		
		String sql = "insert into user values(?,?,?,?,?)";
		DButil.zsg(sql, uid,uname,upassword,uIDNO,uphone);
	}
	
}
