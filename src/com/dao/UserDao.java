package com.dao;

import java.util.List;

import javax.print.DocFlavor.STRING;

import com.pojo.Book;
import com.pojo.User;
import com.sun.jndi.url.dns.dnsURLContext;
import com.util.DButil;

public class UserDao {

	//�����û�id�ĵ��û����֣��������������Ϣ��ʾ
	public String findnamebyid(String uid){
		String sql = "select uname from user where uid = ?";
		List<User> list = DButil.query(User.class, sql, uid);
		String name = list.get(0).getUname();
		return name;
	}
	
	//��¼
	public User denglu(String uid,String password){
		String sql = "select uname,uid from user where uid = ? and upassword = ?";
		List<User> users = DButil.query(User.class, sql, uid,password);
		if (users.size()>0) {
			return users.get(0);
		}
		else return null;
	}
	
	//���������û���Ϣ����̨��ʾ
	public List<User> findall(int page,int size){
		String sql = "select uid,uname,upassword,uphone,uIDNO from user limit ?,?";
		List<User> list = DButil.query(User.class, sql,(page-1)*size,size);
		return list;
	}
	
	//�õ�������
	public int getCount() {
		String sql = "select count(*) from user";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
	
	//ɾ���û���Ϣ
	public void delyonghu(String uid){
		String sql = "delete from user where uid = ?";
		int n = DButil.zsg(sql, uid);
		if(n==0)
			System.out.println("���û�����ɾ��");
	}
	//�޸��û�
	public void updateyonghu(String uname,String upassword,String uphone,String uid){
		String sql = "update user set uname=?,upassword=?,uphone=? where uid = ?";
		DButil.zsg(sql, uname,upassword,uphone,uid);
	}
	//�����û�
	public void insertyonghu(String uid,String uname,String upassword,String uIDNO,String uphone){
		
		String sql = "insert into user values(?,?,?,?,?)";
		DButil.zsg(sql, uid,uname,upassword,uIDNO,uphone);
	}
	
}
