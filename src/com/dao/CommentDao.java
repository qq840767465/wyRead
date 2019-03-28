package com.dao;

import java.sql.Date;
import java.util.List;

import com.pojo.Comment;
import com.util.DButil;

public class CommentDao {

	//�õ�ĳһ�����۵ĵ�����
	public int thumbs(int cid){
		String sql = "select thumbs from comment where cid = ?";
		List<Comment> comments = DButil.query(Comment.class, sql, cid);
		int n = comments.get(0).getThumbs();
		return n;
	}
	//ɾ������
	public int del(int cid){
		String sql = "delete from comment where cid = ?";
		int n = DButil.zsg(sql, cid);
		return n ;
	}
	//��ѯĳһ�������������
	public List<Comment> findbybid(String bid,int page,int size){
		
		String sql = "select cid,bid,content,uid,thumbs,ptime from comment where bid = ? order by ptime desc limit ?,?";
		List<Comment> comments = DButil.query(Comment.class, sql, bid,(page-1)*size,size);
		return comments;
	}
	
	//��ӵ�����
	public int addthumbs(int cid){
		String sql = "update comment set thumbs = thumbs+1 where cid = ?";
		int n  =  DButil.zsg(sql,cid);
		return n;
	}
	
	//�������
	public void addpinglun(String content,String uid,String bid,String ptime){
		String sql = "insert into comment(content,uid,bid,thumbs,ptime) values(?,?,?,0,?)";
		DButil.zsg(sql,content,uid,bid,ptime);
	}
	
	//��ҳ��ѯ������������Ϣ
	public List<Comment> findall(int page,int size){
		String sql = "select cid,content,uid,bid,thumbs,ptime from comment order by bid limit ?,? ";
		List<Comment> comments = DButil.query(Comment.class, sql,(page-1)*size,size);
		return comments;
	}
	
	//�õ�������
	public int getCount() {
		String sql = "select count(*) from comment";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
}
