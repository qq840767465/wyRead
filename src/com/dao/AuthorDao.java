package com.dao;

import java.util.List;

import com.pojo.Author;
import com.util.DButil;

public class AuthorDao {
	// ��������id�ĵ���Ӧ������Ϣ
	public Author findbyid(String aid) {
		String sql = "select aid,aname,a_img,a_introduction from author where aid = ?";
		List<Author> list = DButil.query(Author.class, sql, aid);
		Author author = list.get(0);
		return author;
	}

	// ��������id�ĵ���Ӧ��������
	public Author findnamebyid(String aid) {
		String sql = "select aid,aname from author where aid = ?";
		List<Author> list = DButil.query(Author.class, sql, aid);
		Author author = list.get(0);
		return author;
	}
	
	//��������������Ϣ
	public List<Author> findall(int page,int size){
		
		String sql = "select aid,aname,a_img,a_introduction from author limit ?,?";
		List<Author> authors = DButil.query(Author.class, sql,(page-1)*size,size);
		return authors;
	}
	//�õ�������
		public int getCount() {
			String sql = "select count(*) from author";
			int count = DButil.uniqueQuery(sql);
			return count;
		}
	//ɾ��������Ϣ
	public void delzuozhe(String aid)
	{
		String sql = "delete from author where aid = ?";
		int n = DButil.zsg(sql, aid);
		if(n==0)
			System.out.println("�����߲���ɾ��");
	}
	//�޸�������Ϣ
	public void updatezuozhe(String aid,String aname,String a_img,String a_introduction){
		
		String sql = "update author set aname=?,a_img=?,a_introduction=? where aid = ?";
		DButil.zsg(sql, aname,a_img,a_introduction,aid);
	}
	//����������Ϣ
	public void xinzengzuozhe(String aid,String aname,String a_img,String a_introduction){
		String sql = "insert into author values(?,?,?,?)";
		DButil.zsg(sql,aid,aname,a_img,a_introduction );
	}
	
	//�������������õ�����id
	public String zuozheid(String aname){
		aname.trim();
		String sql = "select aid from author where aname = ?";
		List<Author> authors = DButil.query(Author.class, sql,aname);
		String aid = authors.get(0).getAid();
		return aid;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
